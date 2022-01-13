package com.library.api.controller;

import java.time.LocalDate;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Cote;
import com.library.api.entities.Document;
import com.library.api.entities.User;
import com.library.api.entities.UserCote;
import com.library.api.entities.UserDetailsImpl;
import com.library.api.repositories.CoteRepository;
import com.library.api.repositories.DocumentRepository;
import com.library.api.repositories.UserCoteRepository;
import com.library.api.repositories.UserRepository;

import common.EntityNotFoundException;
import common.ForbiddenException;

@RestController
@RequestMapping("/usercote")
public class UserCoteController {		

	UserCoteRepository repository;
	CoteRepository coteRepository;
	UserRepository userRepository;
	DocumentRepository documentRepository;
	
	public UserCoteController(UserCoteRepository userCoteRepository, CoteRepository coteRepository, UserRepository userRepository, DocumentRepository documentRepository) {
		this.repository = userCoteRepository;
		this.coteRepository = coteRepository;
		this.userRepository = userRepository;
		this.documentRepository = documentRepository;
	}	

	@Transactional
	@PostMapping({"/update", "/insert"})
	public UserCote update(@RequestBody UserCote userCote) {
		return repository.save(userCote);
 	}
	
	@Transactional
	@PostMapping("/delete")
	public void remove(@RequestBody UserCote userCote) {
		repository.delete(userCote);
	}	
	
	@GetMapping("emprunt/{id}")
	public UserCote findEmpruntByCoteId(@PathVariable("id") Integer id) {
		return repository.findOneByCoteIdAndDateEmpruntIsNotNull(id);
	}
	
	// method to extend the return date of a document.
	// TODO test
	@Transactional
	@GetMapping("extend/{id}")
	public Optional<UserCote> extension(@PathVariable("id") Integer id) throws EntityNotFoundException, ForbiddenException {
		UserCote userCoteDb = repository.findById(id).orElseThrow(() -> new EntityNotFoundException());
			Boolean isExtended = userCoteDb.getProlongation();
			if (!isExtended) {				
				userCoteDb.setDateEmprunt(LocalDate.now());
				userCoteDb.setProlongation(true);
				repository.save(userCoteDb);
			}
			else throw new ForbiddenException();
		return repository.findById(id);
	}
	
	// method to reserve a document.
	// sends the id of the cote and the user, checks if present
	// if so, creates a new UserCote object and insert it into the db.
	// returns a document to update the web page.
	@Transactional
	@PostMapping("reserve/cote")
	public Document reserve(@RequestBody Cote cote, @AuthenticationPrincipal UserDetailsImpl user) throws EntityNotFoundException {
		Cote coteDb = coteRepository.findById(cote.getId()).orElseThrow(() -> new EntityNotFoundException());
		User userDb = userRepository.findByUsername(user.getUsername()).orElseThrow(() -> new EntityNotFoundException());
		
		UserCote userCote = new UserCote();
		userCote.setCote(coteDb);
		userCote.setUser(userDb);
		userCote.setDateReservation(LocalDate.now());				
		repository.save(userCote);
		// flag the cote for reservation
		coteDb.setReserved(true);
		coteRepository.save(coteDb);			
		// return the updated document
		return this.documentRepository.findByCotes_Id(coteDb.getId());
		
	}
	
	// request to return a document
	// sets the return date to now
	@Transactional
	@GetMapping("delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.findById(id).ifPresent(userCote -> {
			userCote.setDateRetour(LocalDate.now());				
			repository.save(userCote);
		});	
	}
	
	// cancel a reservation
	// finds the corresponding cote and changes the reserved flag to false
	// deletes the userCote
	@Transactional
	@GetMapping("cancelReserve/{id}")
	public void cancelReserve(@PathVariable("id") Integer id) throws EntityNotFoundException {
		UserCote userCoteDb = repository.findById(id).orElseThrow(() -> new EntityNotFoundException());
		Integer coteId = userCoteDb.getCote().getId();
		Cote coteDb = coteRepository.findById(coteId).orElseThrow(() -> new EntityNotFoundException());
		coteDb.setReserved(false);
		coteRepository.save(coteDb);		
		repository.deleteById(id);		
	}
		
}

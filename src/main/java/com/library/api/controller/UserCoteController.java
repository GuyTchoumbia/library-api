package com.library.api.controller;

import java.time.LocalDate;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Document;
import com.library.api.entities.UserCote;
import com.library.api.repositories.CoteRepository;
import com.library.api.repositories.DocumentRepository;
import com.library.api.repositories.UserCoteRepository;
import com.library.api.repositories.UserRepository;

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
	public Optional<UserCote> extension(@PathVariable("id") Integer id) {
		repository.findById(id).ifPresent(userCote -> {
			Boolean isExtended = userCote.getProlongation();
			if (!isExtended) {				
				userCote.setDateEmprunt(LocalDate.now());
				userCote.setProlongation(true);
				repository.save(userCote);
			}
		});
		return repository.findById(id);
	}
	
	// method to reserve a document.
	// sends the id of the cote and the user, checks if present
	// if so, creates a new UserCote object and insert it into the db.
	// returns a document to update the web page.
	@Transactional
	@GetMapping("reserve/cote/{coteId}/user/{userId}")
	public Document reserve(@PathVariable("coteId") Integer coteId, @PathVariable("userId") Integer userId) {
		coteRepository.findById(coteId).ifPresent(cote -> {
			userRepository.findById(userId).ifPresent(user -> {
				UserCote userCote = new UserCote();
				userCote.setCote(cote);
				userCote.setUser(user);
				userCote.setDateReservation(LocalDate.now());				
				this.update(userCote);
			});	
			cote.setReserved(true);
			coteRepository.save(cote);
		});
		return this.documentRepository.findByCotes_Id(coteId);
		
	}
	
	// request to return a document
	// sets the return date to now
	@Transactional
	@GetMapping("delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.findById(id).ifPresent(userCote -> {
			userCote.setDateRetour(LocalDate.now());				
			this.update(userCote);
		});	
	}
	
	// cancel a reservation
	// finds the corresponding cote and changes the reserved flag to false
	// deletes the userCote
	@Transactional
	@GetMapping("cancelReserve/{id}")
	public void cancelReserve(@PathVariable("id") Integer id) {
		repository.findById(id).ifPresent(userCote -> {
			Integer coteId = userCote.getCote().getId();
			coteRepository.findById(coteId).ifPresent(cote -> {
				cote.setReserved(false);
				coteRepository.save(cote);
			});				
		});	
		repository.deleteById(id);		
	}
		
}

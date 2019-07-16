package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Cote;
import com.library.api.repositories.CoteRepository;

@RestController
@RequestMapping("cote")
public class CoteController {
	
	private CoteRepository repository; 
	
	public CoteController(CoteRepository coteRepository) {
		this.repository = coteRepository;
	}	
	
	@GetMapping("/id/{id}")
	public Optional<Cote> findById(@PathVariable("id") Integer id) {
		return repository.findById(id);
	}
	
	@GetMapping("/libelle/{value}")
	public Optional<Cote> findByLibelle(@PathVariable("libelle") String value) {
		return repository.findByLibelle(value);		
	}
	
	@PostMapping("/delete")
	public void delete(@RequestBody Cote cote) {
		repository.delete(cote);
	}	
	
	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody Cote cote) {
		repository.save(cote);
	}
	
	@GetMapping("/autocomplete/{input}")
	public List<Cote> findLibellesStartingWith(@PathVariable("input") String input) {
		return repository.findTop5ByLibelleStartingWith(input);
	
	}
	

}

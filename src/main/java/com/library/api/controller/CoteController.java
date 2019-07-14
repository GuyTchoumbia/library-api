package com.library.api.controller;

import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody Cote cote) {
		 repository.save(cote);
	 }

}

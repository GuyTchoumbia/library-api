package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Auteur;
import com.library.api.entities.projections.IdLibelle;
import com.library.api.repositories.AuteurRepository;

@RestController
@RequestMapping("/auteur")
public class AuteurController {	

	AuteurRepository repository;
	
	public AuteurController(AuteurRepository auteurRepository) {
		this.repository = auteurRepository;
	}
	
	@GetMapping("/id/{id}")
	public Optional<Auteur> findById(@PathVariable("id") Integer id) {
		return repository.findById(id);
	}
	
	@PostMapping("/delete")
	public void delete(@RequestBody Auteur auteur) {
		repository.delete(auteur);
	}	
	
	@PostMapping({"/update", "/insert"})
	public Auteur update(@RequestBody Auteur auteur) {
		return repository.save(auteur);
		
	}
	 
	@GetMapping("/autocomplete/{input}")
	public List<Auteur> AutoComplete(@PathVariable("input") String input) {
		return repository.findTop5ByLibelleIgnoreCaseStartingWith(input);	
	}
	
	@GetMapping("/libelle/{libelle}")
	public IdLibelle findByLibelle(@PathVariable("libelle") String libelle) {
		return repository.findByLibelleIgnoreCase(libelle);
	}
	
	// checks if the given author name already exists
	@GetMapping("/exists/{libelle}")
	public Boolean checkAuteurExistence(@PathVariable("libelle") String libelle) {
		return repository.existsByLibelleIgnoreCase(libelle);
	}	
	
}

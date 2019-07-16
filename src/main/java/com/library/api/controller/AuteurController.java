package com.library.api.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Auteur;
import com.library.api.repositories.AuteurRepository;

@RestController
@RequestMapping("/auteur")
public class AuteurController {	

	AuteurRepository repository;
	
	public AuteurController(AuteurRepository auteurRepository) {
		this.repository = auteurRepository;
	}
	
	@PostMapping("/delete")
	public void delete(@RequestBody Auteur auteur) {
		repository.delete(auteur);
	}	
	
	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody Auteur auteur) {
		repository.save(auteur);
	}
	 
	@GetMapping("/autocomplete/{libelle}")
	public List<Auteur> findLibellesStartingWith(@PathVariable("libelle") String input) {
		return repository.findTop5ByLibelleStartingWith(input);	
	}
	
}

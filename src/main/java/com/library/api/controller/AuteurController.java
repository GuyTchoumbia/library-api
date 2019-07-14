package com.library.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody Auteur auteur) {
		 repository.save(auteur);
	 }
	
}

package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Tag;
import com.library.api.entities.projections.IdLibelle;
import com.library.api.repositories.TagRepository;

@RestController
@RequestMapping("/tag")
public class TagController {
	
	TagRepository repository;
	
	public TagController(TagRepository tagRepository) {
		this.repository = tagRepository;
	}	
	
	@GetMapping("/id/{id}")
	public Optional<Tag> findById(@PathVariable("id") Integer id) {
		return repository.findById(id);
	}
	
	@PostMapping("/delete/{id}")
	public void delete(@RequestBody Tag tag) {
		repository.delete(tag);
	}	
	
	@PostMapping({"/update", "/insert"})
	public Tag update(@RequestBody Tag tag) {
		return repository.save(tag);
	}	
		
	@GetMapping("/autocomplete/{libelle}")
	public List<Tag> findLibellesStartingWith(@PathVariable("libelle") String input) {
		return repository.findTop5ByLibelleIgnoreCaseStartingWith(input);
	}
	
	@GetMapping("/libelle/{libelle}")
	public IdLibelle findByLibelle(@PathVariable("libelle") String libelle) {
		return repository.findByLibelleIgnoreCase(libelle);
	}
	
	// checks if the given tag name already exists
	@GetMapping("/exists/{libelle}")
	public Boolean checkTagExistence(@PathVariable("libelle") String libelle) {
		return repository.existsByLibelleIgnoreCase(libelle);
	}
	
	

}

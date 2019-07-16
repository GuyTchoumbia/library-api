package com.library.api.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Tag;
import com.library.api.repositories.TagRepository;

@RestController
@RequestMapping("/tag")
public class TagController {
	
	TagRepository repository;
	
	public TagController(TagRepository tagRepository) {
		this.repository = tagRepository;
	}	
	
	@PostMapping("/delete/{id}")
	public void delete(@RequestBody Tag tag) {
		repository.delete(tag);
	}	
	
	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody Tag tag) {
		repository.save(tag);
	}
	
	@GetMapping("/autocomplete/{libelle}")
	public List<Tag> findLibellesStartingWith(@PathVariable("libelle") String input) {
		return repository.findTop5ByLibelleStartingWith(input);
	}

}

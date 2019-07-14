package com.library.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody Tag tag) {
		 repository.save(tag);
	 }

}

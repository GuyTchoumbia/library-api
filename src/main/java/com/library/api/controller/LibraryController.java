package com.library.api.controller;


import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Library;
import com.library.api.repositories.LibraryRepository;

@RestController
@RequestMapping("/library")
public class LibraryController {

	LibraryRepository repository;
	
	public LibraryController(LibraryRepository libraryRepository) {
		this.repository = libraryRepository;
	}
	
	@GetMapping("/all")
	public List<Library> findAllLibraries() {
		return repository.findAll();
	}
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody Library library) {
		 repository.save(library);
	 }

}

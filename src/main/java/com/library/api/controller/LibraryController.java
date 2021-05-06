package com.library.api.controller;


import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Library;
import com.library.api.entities.projections.IdLibelle;
import com.library.api.entities.projections.LibraryInfo;
import com.library.api.repositories.LibraryRepository;

@RestController
@RequestMapping("/library")
public class LibraryController {

	LibraryRepository repository;
	
	public LibraryController(LibraryRepository libraryRepository) {
		this.repository = libraryRepository;
	}
	
	// gets only the id and libelle, used for select menus
	@GetMapping("/all")
	public List<IdLibelle> findAllLibraries() {
		return repository.findBy();
	}
	
	//gets all the relevant info of a single library for display on the site information page.
	@GetMapping("/{id}")
	public LibraryInfo findLibraryById(@PathVariable("id") Integer id) {
		return repository.getById(id);
	}
	
	@Transactional
	@PostMapping("/delete")
	public void delete(@RequestBody Library library) {
		repository.delete(library);
	}	
	
	@Transactional
	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody Library library) {
		repository.save(library);
	}

}

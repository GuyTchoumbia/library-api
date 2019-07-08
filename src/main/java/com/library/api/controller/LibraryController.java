package com.library.api.controller;


import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.common.AbstractController;
import com.library.api.entities.Library;
import com.library.api.repositories.LibraryRepository;

@RestController
@RequestMapping("/library")
public class LibraryController extends AbstractController<Library> {

	public LibraryController(LibraryRepository<Library> repository) {
		this.repository = repository;
	}	

}

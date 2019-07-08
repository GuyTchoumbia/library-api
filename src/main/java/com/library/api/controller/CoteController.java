package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.controller.common.AbstractController;
import com.library.api.entities.Cote;
import com.library.api.repositories.CoteRepository;

@RestController
@RequestMapping("cote")
public class CoteController extends AbstractController<Cote> {
	
	public CoteController(CoteRepository repository) {
		this.repository = repository;
	}	

}

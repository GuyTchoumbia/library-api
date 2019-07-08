package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.common.AbstractController;
import com.library.api.entities.Editeur;
import com.library.api.repositories.EditeurRepository;

@RestController
@RequestMapping("/editeur")
public class EditeurController extends AbstractController<Editeur> {

	public EditeurController(EditeurRepository<Editeur> repository) {
		this.repository = repository;
	}	
	
}

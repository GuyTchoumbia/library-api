package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.controller.common.AbstractController;
import com.library.api.entities.Auteur;
import com.library.api.repositories.AuteurRepository;

@RestController
@RequestMapping("/auteur")
public class AuteurController extends AbstractController<Auteur> {	

	public AuteurController(AuteurRepository repository) {
		this.repository = repository;
	}	
	
}

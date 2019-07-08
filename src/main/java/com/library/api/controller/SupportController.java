package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.common.AbstractController;
import com.library.api.entities.Support;
import com.library.api.repositories.SupportRepository;

@RestController
@RequestMapping("/support")
public class SupportController extends AbstractController<Support> {

	public SupportController(SupportRepository<Support> repository) {
		this.repository = repository;
	}	

}

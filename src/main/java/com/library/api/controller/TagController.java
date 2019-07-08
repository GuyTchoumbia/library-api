package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.controller.common.AbstractController;
import com.library.api.entities.Tag;
import com.library.api.repositories.TagRepository;

@RestController
@RequestMapping("/tag")
public class TagController extends AbstractController<Tag> {
	
	public TagController(TagRepository repository) {
		this.repository = repository;
	}	

}

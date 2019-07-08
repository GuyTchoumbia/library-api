package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.controller.common.AbstractController;
import com.library.api.entities.Document;
import com.library.api.repositories.DocumentRepository;

@RestController
@RequestMapping("/document")
public class DocumentController extends AbstractController<Document> {

	public DocumentController(DocumentRepository repository) {
		this.repository = repository;
	}	
	

}

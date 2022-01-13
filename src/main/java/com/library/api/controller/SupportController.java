package com.library.api.controller;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Support;
import com.library.api.entities.projections.IdLibelle;
import com.library.api.repositories.SupportRepository;

@RestController
@RequestMapping("/support")
public class SupportController {

	private SupportRepository repository;
	
	public SupportController(SupportRepository supportRepository) {
		this.repository = supportRepository;
	}	
	
	@GetMapping("/all")
	public List<IdLibelle> findAllSupports() {
		return repository.findBy();
	}
	
	@Transactional
	@PostMapping("/delete")
	public void delete(@RequestBody Support support) {
		repository.delete(support);
	}	
	
	@Transactional
	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody Support support) {
		repository.save(support);
	}

}

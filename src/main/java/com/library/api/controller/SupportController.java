package com.library.api.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Support;
import com.library.api.repositories.SupportRepository;

@RestController
@RequestMapping("/support")
public class SupportController {

	private SupportRepository repository;
	
	public SupportController(SupportRepository supportRepository) {
		this.repository = supportRepository;
	}	
	
	@GetMapping("/all")
	public List<Support> findAllSupports() {
		return repository.findAll();
	}
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody Support support) {
		 repository.save(support);
	 }

}

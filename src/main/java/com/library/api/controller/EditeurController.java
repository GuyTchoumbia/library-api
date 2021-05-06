package com.library.api.controller;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Editeur;
import com.library.api.repositories.EditeurRepository;

@RestController
@RequestMapping("/editeur")
public class EditeurController {
	
	EditeurRepository repository;
	
	public EditeurController(EditeurRepository editeurRepository) {
		this.repository = editeurRepository;
	}
	
	@Transactional
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	@Transactional
	@PostMapping({"/update", "/insert"})
	public void delete(@RequestBody Editeur editeur) {
	 repository.save(editeur);
	}
	
	//autocomplete
	
	@GetMapping("/autocomplete/{libelle}")
	public List<Editeur> findLibellesStartingWith(@PathVariable("libelle") String input) {
		return repository.findTop5ByLibelleIgnoreCaseStartingWith(input);	
	}
}

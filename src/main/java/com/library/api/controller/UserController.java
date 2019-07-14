package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.User;
import com.library.api.repositories.UserRepository;

@RestController
@RequestMapping("/user")
public class UserController {
	
	UserRepository repository;
	
	public UserController(UserRepository userRepository) {
		this.repository = userRepository;
	}	
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody User user) {
		 repository.save(user);
	 }
	 
	 @GetMapping("/id/{id}")
	 public Optional<User> findUserById(@PathVariable("id") Integer id) {
		 return repository.findById(id);
	 }
	 
	 @GetMapping("/info")
	 public List<User> findUserByInfo(@RequestParam(name="nom", required=false) String nom, @RequestParam(name="prenom",required=false) String prenom) {
		 return repository.findByCivilNomLikeAndCivilPrenomLike(nom, prenom);
	 }

}

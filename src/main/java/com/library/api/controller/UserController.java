package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
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
	
	@PostMapping("/delete")
	public String delete(@RequestBody User user) {
		try {
			repository.delete(user);
			return "Successfully deleted";
		}
		catch (IllegalArgumentException e) {
			return "Entity could not be found";
		}		
	}	
	
	 @PostMapping({"/update", "/insert"})
	 public User update(@RequestBody User user) {
		 return repository.save(user);
	 }
	 
	 @GetMapping("/id/{id}")
	 public Optional<User> findUserById(@PathVariable("id") Integer id) {
		 return repository.findById(id);
	 }
	 
	 @GetMapping("/info")
	 public List<User> findUserByInfo(@RequestParam(name="id", required=false) Optional<Integer> id, @RequestParam(name="nom", defaultValue="null") Optional<String> nom) {
		 return repository.findByIdEqualsOrCivilNomStartingWith(id, nom);
	 }

}

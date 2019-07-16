package com.library.api.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.UserCote;
import com.library.api.repositories.UserCoteRepository;

@RestController
@RequestMapping("/usercote")
public class UserCoteController {		

	UserCoteRepository repository;
	
	public UserCoteController(UserCoteRepository userCoteRepository) {
		this.repository = userCoteRepository;
	}	

	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody UserCote userCote) {
		repository.save(userCote);
 	}
	
	@PostMapping("/delete")
	public void remove(@RequestBody UserCote userCote) {
		repository.delete(userCote);
	}		
	
}

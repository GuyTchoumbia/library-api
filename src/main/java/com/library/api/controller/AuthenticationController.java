package com.library.api.controller;

import java.security.Principal;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.User;
import com.library.api.repositories.AuthenticationRepository;

@RestController
@RequestMapping("/auth")
public class AuthenticationController {
	
	private AuthenticationRepository repository;
    
    public AuthenticationController(AuthenticationRepository authenticationRepository) {
        this.repository = authenticationRepository;
    }
    
    @PostMapping(path="/signUp", consumes="application/json")
    public void signUp(@RequestBody User user) {        
        repository.save(user);
    }	
    
    @PostMapping(path="/signIn", consumes="application/json")
    public User signIn(@RequestBody User user) {
    	return repository.findByIdAndPassword(user.getId(), user.getPassword());
    }    
    
    @RequestMapping("/user")
    public Principal user(Principal user) {    	
    	return user;
    }

}

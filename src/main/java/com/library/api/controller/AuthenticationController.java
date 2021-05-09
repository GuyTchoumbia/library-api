package com.library.api.controller;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.User;
import com.library.api.entities.UserDetailsImpl;
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
    
    @RequestMapping("/user")
    public User user(@AuthenticationPrincipal UserDetailsImpl user) {    	
    	return repository.findByUsername(user.getUsername());
    }

}

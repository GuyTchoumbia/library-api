package com.library.api.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
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
    private BCryptPasswordEncoder bCryptPasswordEncoder;    
    
    public AuthenticationController(
    		AuthenticationRepository authenticationRepository,
            BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.repository = authenticationRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
    
    @PostMapping(path="/signUp", consumes="application/json")
    public void signUp(@RequestBody User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        repository.save(user);
    }	
    
    @PostMapping(path="/signIn", consumes="application/json")
    public User signIn(@RequestBody User user) {
    	return repository.findByIdAndPassword(user.getId(), user.getPassword());
    }    

}

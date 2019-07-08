package com.library.api.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.User;
import com.library.api.repositories.AuthenticationRepository;

@RestController
@RequestMapping("/user")
public class AuthenticationController {
	
	private AuthenticationRepository authRepository;
    private BCryptPasswordEncoder bCryptPasswordEncoder;    
    
    public AuthenticationController(
    		AuthenticationRepository userRepository,
            BCryptPasswordEncoder bCryptPasswordEncoder
    ) {
        this.authRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }
    
    @PostMapping("/sign-up")
    public void signUp(@RequestBody User user) {
        user.getCredentials().setPassword(bCryptPasswordEncoder.encode(user.getCredentials().getPassword()));
        authRepository.save(user);
    }	

}

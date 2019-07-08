package com.library.api.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.controller.common.AbstractController;
import com.library.api.entities.User;
import com.library.api.repositories.UserRepository;

@RestController
@RequestMapping("/user")
public class UserController extends AbstractController<User> {
	
	public UserController(UserRepository repository) {
		this.repository = repository;
	}

}

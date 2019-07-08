package com.library.api.controller;

import java.util.List;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.controller.common.AbstractController;
import com.library.api.entities.UserCote;
import com.library.api.repositories.UserCoteRepository;

@RestController
@RequestMapping("/usercote")
public class UserCoteController extends AbstractController<UserCote> {		

	public UserCoteController(UserCoteRepository repository) {
		this.repository = repository;
	}	

	@PostMapping("/reservation/add/{cote}")
	public void addReservation() {
		// TODO
 	}
	
	@PostMapping("/reservation/remove/{cote}")
	public void removeReservation() {
		// TODO
	}

	@PostMapping("/borrow/add/{cote}")
	public void addCote() {
		// TODO	
	}
	
	@PostMapping("/borrow/remove/{cote}")
	public void removeCote() {
		// TODO	
	}

	@Override
	public List<UserCote> search() {
		// TODO Auto-generated method stub
		return null;
	}	
	
}

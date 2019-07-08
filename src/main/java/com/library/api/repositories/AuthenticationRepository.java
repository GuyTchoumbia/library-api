package com.library.api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.User;

@Repository
public interface AuthenticationRepository extends JpaRepository<User, String> {	
		
	User findByCredentialsUsername(String username);

}

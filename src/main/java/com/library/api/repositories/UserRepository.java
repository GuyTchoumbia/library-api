package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.User;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class UserRepository extends AbstractRepository<User> {

	public UserRepository() {
		super(User.class);
	}

}

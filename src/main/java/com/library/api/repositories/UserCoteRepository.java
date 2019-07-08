package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.UserCote;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class UserCoteRepository extends AbstractRepository<UserCote> {

	public UserCoteRepository() {
		super(UserCote.class);
	}

}

package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Support;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class SupportRepository extends AbstractRepository<Support> {

	public SupportRepository() {
		super(Support.class);
	}

}

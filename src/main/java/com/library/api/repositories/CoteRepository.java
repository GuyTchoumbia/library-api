package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Cote;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class CoteRepository extends AbstractRepository<Cote> {

	public CoteRepository() {
		super(Cote.class);
	}

}

package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Library;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class LibraryRepository extends AbstractRepository<Library> {

	public LibraryRepository() {
		super(Library.class);
	}

}

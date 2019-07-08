package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Tag;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class TagRepository extends AbstractRepository<Tag> {

	public TagRepository() {
		super(Tag.class);
	}

}

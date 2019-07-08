package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Document;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class DocumentRepository extends AbstractRepository<Document> {

	public DocumentRepository() {
		super(Document.class);
	}

}

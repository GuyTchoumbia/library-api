package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Editeur;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class EditeurRepository extends AbstractRepository<Editeur> {

	public EditeurRepository() {
		super(Editeur.class);
	}

}

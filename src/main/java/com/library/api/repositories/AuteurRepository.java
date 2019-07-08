package com.library.api.repositories;

import org.springframework.stereotype.Repository;

import com.library.api.entities.Auteur;
import com.library.api.repositories.common.AbstractRepository;

@Repository
public class AuteurRepository extends AbstractRepository<Auteur> {

	public AuteurRepository() {
		super(Auteur.class);
	}
	
}

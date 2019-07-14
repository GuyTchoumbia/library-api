package com.library.api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Editeur;

@Repository
public interface EditeurRepository extends JpaRepository<Editeur, Integer> {
	
}

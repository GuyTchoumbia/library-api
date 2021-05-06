package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Editeur;

@Repository
public interface EditeurRepository extends JpaRepository<Editeur, Integer> {

	List<Editeur> findTop5ByLibelleStartingWith(String input);

	List<Editeur> findTop5ByLibelleIgnoreCaseStartingWith(String input);
	
}

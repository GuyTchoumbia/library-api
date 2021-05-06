package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Auteur;
import com.library.api.entities.projections.IdLibelle;

@Repository
public interface AuteurRepository extends JpaRepository<Auteur, Integer> {

	List<Auteur> findTop5ByLibelleStartingWith(String input);

	List<Auteur> findTop5ByLibelleIgnoreCaseStartingWith(String input);

	IdLibelle findByLibelleIgnoreCase(String libelle);

	Boolean existsByLibelleIgnoreCase(String libelle);	
	
}

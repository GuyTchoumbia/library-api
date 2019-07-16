package com.library.api.repositories;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Cote;

@Repository
public interface CoteRepository extends JpaRepository<Cote, Integer> {
	
	List<Cote> findByDocumentId(Integer id);

	Optional<Cote> findByLibelle(String libelle);

	List<Cote> findTop5ByLibelleStartingWith(String input);	
	
}

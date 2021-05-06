package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Tag;
import com.library.api.entities.projections.IdLibelle;

@Repository
public interface TagRepository extends JpaRepository<Tag, Integer> {

	List<Tag> findTop5ByLibelleStartingWith(String input);

	List<Tag> findTop5ByLibelleIgnoreCaseStartingWith(String input);

	IdLibelle findByLibelleIgnoreCase(String libelle);

	Boolean existsByLibelleIgnoreCase(String libelle);	

}

package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Support;
import com.library.api.entities.projections.IdLibelle;

@Repository
public interface SupportRepository extends JpaRepository<Support, Integer> {

	// applies projections to implemented base method findAll()
	// findAllProjectedBy() also works
	List<IdLibelle> findBy();
	

}

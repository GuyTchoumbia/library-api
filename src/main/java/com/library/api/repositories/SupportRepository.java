package com.library.api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Support;

@Repository
public interface SupportRepository extends JpaRepository<Support, Integer> {
	

}

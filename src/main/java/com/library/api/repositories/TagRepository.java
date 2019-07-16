package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Tag;

@Repository
public interface TagRepository extends JpaRepository<Tag, Integer> {

	List<Tag> findTop5ByLibelleStartingWith(String input);	

}

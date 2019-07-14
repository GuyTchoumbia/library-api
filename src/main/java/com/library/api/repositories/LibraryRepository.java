package com.library.api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Library;

@Repository
public interface LibraryRepository extends JpaRepository<Library, Integer> {	

}

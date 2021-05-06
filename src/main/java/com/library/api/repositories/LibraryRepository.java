package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Library;
import com.library.api.entities.projections.IdLibelle;
import com.library.api.entities.projections.LibraryInfo;

@Repository
public interface LibraryRepository extends JpaRepository<Library, Integer> {	
	
	List<IdLibelle> findBy();	

	LibraryInfo getById(Integer id);

}

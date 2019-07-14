package com.library.api.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.UserCote;

@Repository
public interface UserCoteRepository extends JpaRepository<UserCote, Integer> {
	

}

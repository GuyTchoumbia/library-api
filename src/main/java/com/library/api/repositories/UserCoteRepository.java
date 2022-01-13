package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.UserCote;

@Repository
public interface UserCoteRepository extends JpaRepository<UserCote, Integer> {

	List<UserCote> findUserCoteByUserId(Integer id);

	List<UserCote> findUserCoteByCoteId(Integer id);

	UserCote findOneByCoteIdAndDateEmpruntIsNotNull(Integer id);

	UserCote getById(Integer id);
	

}

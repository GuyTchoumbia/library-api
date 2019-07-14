package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.library.api.entities.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {

	List<User> findByCivilNomLikeAndCivilPrenomLike(String nom, String prenom);	

}

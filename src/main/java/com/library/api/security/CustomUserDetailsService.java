package com.library.api.security;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.library.api.repositories.UserRepository;

public class CustomUserDetailsService  implements UserDetailsService {

	private UserRepository repository;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		return repository.findByUsername(username).orElseThrow(() -> new UsernameNotFoundException(username));            
	}


}

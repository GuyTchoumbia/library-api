package com.library.api.entities;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;

public class UserDetailsImpl extends org.springframework.security.core.userdetails.User{
	
	
	// instantiate a UserDetails from the username, password and authority, sets the rest to true.
	public UserDetailsImpl(String username, String password, Collection<? extends GrantedAuthority> authorities) {
		super(username, password, authorities);		
	}
	
	// Instantiate a UserDetails object from a User object and Authority Collection
	public UserDetailsImpl(User user, Collection<? extends GrantedAuthority> authorities) {
		this(user.getUsername(), user.getPassword(), authorities);
		this.user = user;		
	}

	private static final long serialVersionUID = 8246945994225222855L;	
	private User user;	
	
	public User getUser() {
		return user;
	}
	
}

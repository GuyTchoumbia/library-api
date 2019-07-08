package com.library.api.entities.user;

import java.util.Collection;

import javax.persistence.Embeddable;
import javax.persistence.Enumerated;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

@Embeddable
public class Credentials implements UserDetails {	
	
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	
	@Enumerated
	private Authority authority;
	
	public Credentials() {}

	public Credentials(String username, String password, Authority authority) {		
		this.username = username;
		this.password = password;
		this.authority = authority;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String login) {
		this.username = login;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		return null;
	}
	
	public Authority getAuthority() {
		return this.authority;
	}
	
	public void setAuthority(Authority authority) {
		this.authority = authority;
	}
	
//	public void addAuthority(Authority authority) {
//		this.authority.add(authority);
//	}
//	
//	public void removeAuthority(Authority authority) {
//		this.authority.remove(authority);
//	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((authority == null) ? 0 : authority.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Credentials other = (Credentials) obj;
		if (authority != other.authority)
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Credentials [login=" + username + ", password=" + password + ", role=" + authority + "]";
	}

	@Override
	public boolean isAccountNonExpired() {
		return true;
	}

	@Override
	public boolean isAccountNonLocked() {
		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}

	@Override
	public boolean isEnabled() {
		return true;
	}
	
	

}

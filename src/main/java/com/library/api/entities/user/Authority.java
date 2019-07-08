package com.library.api.entities.user;

import org.springframework.security.core.GrantedAuthority;

public enum Authority implements GrantedAuthority {
	adm("admin"),	
	mod("moderator"), 
	sub("subscriber"),
	ano("anonymous");
	
	private String authority;
	
	Authority() {
		this.authority = "anonymous";
	}
	
	Authority(String authority) {
		this.authority = authority;
	}

	@Override
	public String getAuthority() {
		return this.authority;
	}
	
	public void setAuthority(Authority authority) {
		this.authority = authority.authority;
	}
}

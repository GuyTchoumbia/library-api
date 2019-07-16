package com.library.api.entities;

import java.util.Collection;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.Formula;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.user.Authority;
import com.library.api.entities.user.Civil;
import com.library.api.entities.user.Contact;

@Entity
@Table(name="utilisateur")
public class User implements UserDetails {		
	private static final long serialVersionUID = -1415885479807615908L;

	@Id
	@GeneratedValue(
			strategy = GenerationType.SEQUENCE,
			generator = "sequence-generator"
	)
	@SequenceGenerator(
			name = "sequence-generator",
			sequenceName = "utilisateurSequence",
			initialValue = 240500,
			allocationSize = 1
	)
	private Integer id;
	
	@Transient
	private String username;
	
	// @Formula(value = "concat(replace(cast(date_naissance), '-', ''), substring(nom from 0 for 4))")
	private String password;
		
	@Enumerated(EnumType.STRING)
	private Authority authority;

	@Embedded
	private Civil civil;
	
	@Embedded
	private Contact contact;	
		
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, orphanRemoval=true)
	@JsonIgnoreProperties("user")
	private List<UserCote> userCotes;
	
	public User() { }		

	public Integer getId() {
		return id;
	}
	
	public void setId(Integer id) {
		this.id = id;
	}
	
	public Contact getContact() {
		return contact;
	}

	public void setContact(Contact contact) {
		this.contact = contact;
	}
	
	public String getUsername() {
		return id.toString();
	}	

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Authority getAuthority() {
		return authority;
	}

	public void setAuthority(Authority authority) {
		this.authority = authority;
	}

	public Civil getCivil() {
		return civil;
	}

	public void setCivil(Civil civil) {
		this.civil = civil;
	}
	

	public List<UserCote> getUserCotes() {
		return userCotes;
	}

	public void setUserCotes(List<UserCote> userCotes) {
		this.userCotes = userCotes;
	}
	
	public void addUserCote(UserCote userCote) {
		this.userCotes.add(userCote);
	}
	
	public void removeUserCote(UserCote userCote) {
		this.userCotes.remove(userCote);
	}

	@Transient
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transient
	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Transient
	@Override
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return false;
	}

	@Transient
	@Override
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return false;
	}

	@Transient
	@Override
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return false;
	}	
   
}

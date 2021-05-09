package com.library.api.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

import org.hibernate.annotations.Formula;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.user.Civil;
import com.library.api.entities.user.Contact;

@Entity
@Table(name="utilisateur")
public class User {		
	
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
	
	@Formula("cast(id as TEXT)")
	private String username;
		
	// @Formula(value = "concat(replace(cast(date_naissance), '-', ''), substring(nom from 0 for 4))")
	private String password;
		
	@Embedded
	private Civil civil;
	
	@Embedded
	private Contact contact;	
		
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, orphanRemoval=true)
	@JsonIgnoreProperties("user")
	private List<UserCote> userCotes;

//	TODO
//	@Enumerated
//	private Enum<Authority> authorities;
	
		
	public User() {	}	
		

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
		return username;
	}
			
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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
	
//	public Enum<Authority> getAuthorities() {
//		return authorities;
//	}
//	
//	public void setAuthority(Enum<Authority> authorities) {
//		this.authorities = authorities;
//	}
//	

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((civil == null) ? 0 : civil.hashCode());
		result = prime * result + ((contact == null) ? 0 : contact.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((password == null) ? 0 : password.hashCode());
		result = prime * result + ((userCotes == null) ? 0 : userCotes.hashCode());
		result = prime * result + ((username == null) ? 0 : username.hashCode());
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
		User other = (User) obj;		
		if (civil == null) {
			if (other.civil != null)
				return false;
		} else if (!civil.equals(other.civil))
			return false;
		if (contact == null) {
			if (other.contact != null)
				return false;
		} else if (!contact.equals(other.contact))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (password == null) {
			if (other.password != null)
				return false;
		} else if (!password.equals(other.password))
			return false;
		if (userCotes == null) {
			if (other.userCotes != null)
				return false;
		} else if (!userCotes.equals(other.userCotes))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", civil=" + civil + ", contact=" + contact + ", userCotes=" + userCotes + "]";
	}
   
}

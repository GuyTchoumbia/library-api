package com.library.api.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.common.BaseEntity;
import com.library.api.entities.user.Civil;
import com.library.api.entities.user.Contact;
import com.library.api.entities.user.Credentials;

@Entity
@Table
public class User extends BaseEntity {	

	@Embedded
	private Civil civil;
	@Embedded
	private Credentials credentials;
	@Embedded
	private Contact contact;	
		
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, orphanRemoval=true)
	@JsonIgnoreProperties("user")
	private List<UserCote> userCotes;
	
	public User() {}	

	public User(Civil civil, Credentials credentials, Contact contact) {
		super();
		this.civil = civil;
		this.credentials = credentials;
		this.contact = contact;			
	}	

	public Civil getCivil() {
		return civil;
	}

	public void setCivil(Civil civil) {
		this.civil = civil;
	}

	public Credentials getCredentials() {
		return credentials;
	}

	public void setCredentials(Credentials credentials) {
		this.credentials = credentials;
	}

	public Contact getContact() {
		return contact;
	}

	public void setCoordinates(Contact contact) {
		this.contact = contact;
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

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((civil == null) ? 0 : civil.hashCode());
		result = prime * result + ((contact == null) ? 0 : contact.hashCode());
		result = prime * result + ((credentials == null) ? 0 : credentials.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
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
		if (credentials == null) {
			if (other.credentials != null)
				return false;
		} else if (!credentials.equals(other.credentials))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "User [civil=" + civil + ", credentials=" + credentials + ", contact=" + contact + ", toString()=" + super.toString() + ", getClass()=" + getClass() + "]";
	}	
   
}

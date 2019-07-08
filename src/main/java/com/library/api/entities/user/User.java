package com.library.api.entities.user;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.library.api.common.BaseEntity;
import com.library.api.entities.UserCote;

@Entity
@Table
public class User extends BaseEntity {	

	@Embedded
	private Civil civil;
	@Embedded
	private Credentials credentials;
	@Embedded
	private Coordinates coordinates;	
		
	@OneToMany(mappedBy = "user", cascade=CascadeType.ALL)
	private List<UserCote> userCote;
	
	public User() {}	

	public User(Civil civil, Credentials credentials, Coordinates coordinates) {
		super();
		this.civil = civil;
		this.credentials = credentials;
		this.coordinates = coordinates;			
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

	public Coordinates getCoordinates() {
		return coordinates;
	}

	public void setCoordinates(Coordinates coordinates) {
		this.coordinates = coordinates;
	}

	public List<UserCote> getDocumentUsers() {
		return userCote;
	}

	public void setDocumentUsers(List<UserCote> documentUsers) {
		this.userCote = documentUsers;
	}
	
	public void addDocumentUser(UserCote userDocument) {
		this.userCote.add(userDocument);
	}
	
	public void removeDocumentUser(UserCote userDocument) {
		this.userCote.remove(userDocument);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((civil == null) ? 0 : civil.hashCode());
		result = prime * result + ((coordinates == null) ? 0 : coordinates.hashCode());
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
		if (coordinates == null) {
			if (other.coordinates != null)
				return false;
		} else if (!coordinates.equals(other.coordinates))
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
		return "User [civil=" + civil + ", credentials=" + credentials + ", coordinates=" + coordinates + ", toString()=" + super.toString() + ", getClass()=" + getClass() + "]";
	}	
   
}

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
import com.library.api.entities.user.Coordinates;
import com.library.api.entities.user.Credentials;

@Entity
@Table
public class User extends BaseEntity {	

	@Embedded
	private Civil civil;
	@Embedded
	private Credentials credentials;
	@Embedded
	private Coordinates coordinates;	
		
	@OneToMany(mappedBy="user", cascade=CascadeType.ALL, orphanRemoval=true)
	@JsonIgnoreProperties("user")
	private List<UserCote> userCotes;
	
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

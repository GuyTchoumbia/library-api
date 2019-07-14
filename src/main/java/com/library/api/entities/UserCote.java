package com.library.api.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="user_cote")
@IdClass(UserCoteId.class)
public class UserCote implements Serializable {	
	private static final long serialVersionUID = 3770654862146214957L;

	@Id
	@ManyToOne
	@JsonIgnoreProperties("userCotes")
	private User user;
	
	@Id
	@ManyToOne
	@JsonIgnoreProperties("userCotes")
	private Cote cote;
	
	@Column(nullable=true)	
	private Date dateEmprunt;
	
	@Column(nullable=true)	
	private Date dateReservation;

	public UserCote() {		
	}
	
	public UserCote(User user, Cote cote, Date dateEmprunt, Date dateReservation) {
		this.user = user;
		this.cote = cote;
		this.dateEmprunt = dateEmprunt;
		this.dateReservation = dateReservation;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Cote getCote() {
		return cote;
	}

	public void setCote(Cote cote) {
		this.cote = cote;
	}

	public Date getDateEmprunt() {
		return dateEmprunt;
	}

	public void setDateEmprunt(Date dateEmprunt) {
		this.dateEmprunt = dateEmprunt;
	}

	public Date getDateReservation() {
		return dateReservation;
	}

	public void setDateReservation(Date dateReservation) {
		this.dateReservation = dateReservation;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cote == null) ? 0 : cote.hashCode());
		result = prime * result + ((dateEmprunt == null) ? 0 : dateEmprunt.hashCode());
		result = prime * result + ((dateReservation == null) ? 0 : dateReservation.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
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
		UserCote other = (UserCote) obj;
		if (cote == null) {
			if (other.cote != null)
				return false;
		} else if (!cote.equals(other.cote))
			return false;
		if (dateEmprunt == null) {
			if (other.dateEmprunt != null)
				return false;
		} else if (!dateEmprunt.equals(other.dateEmprunt))
			return false;
		if (dateReservation == null) {
			if (other.dateReservation != null)
				return false;
		} else if (!dateReservation.equals(other.dateReservation))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

	
	
}

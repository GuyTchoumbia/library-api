package com.library.api.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="user_cote")
@IdClass(UserCoteId.class)
public class UserCote {
	
	@Id
	@ManyToOne
	@JsonManagedReference
	private User user;
	
	@Id
	@ManyToOne
	@JsonManagedReference
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

	public Cote getDocument() {
		return cote;
	}

	public void setDocument(Cote cote) {
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
	
	public void setIsReserved(Date dateReservation) {
		this.dateReservation = dateReservation;		
	}	
	
}

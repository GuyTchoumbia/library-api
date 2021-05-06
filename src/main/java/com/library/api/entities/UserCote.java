package com.library.api.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.common.BaseEntity;

@Entity
@Table(name="user_cote")
//@IdClass(UserCoteId.class)
public class UserCote extends BaseEntity {	
	
	@ManyToOne
	@JsonIgnoreProperties("userCotes")
	private User user;
	
	
	@ManyToOne
	@JsonIgnoreProperties("userCotes")
	private Cote cote;	
	
	private LocalDate dateEmprunt;	
	private LocalDate dateReservation;	
	private LocalDate dateRetour;
	
	@Column(columnDefinition = "boolean default false")
	private Boolean prolongation;

	public UserCote() {		
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

	public LocalDate getDateEmprunt() {
		return dateEmprunt;
	}

	public void setDateEmprunt(LocalDate dateEmprunt) {
		this.dateEmprunt = dateEmprunt;
	}

	public LocalDate getDateReservation() {
		return dateReservation;
	}

	public void setDateReservation(LocalDate dateReservation) {
		this.dateReservation = dateReservation;
	}	

	public LocalDate getDateRetour() {
		return dateRetour;
	}

	public void setDateRetour(LocalDate dateRetour) {
		this.dateRetour = dateRetour;
	}

	public Boolean getProlongation() {
		return prolongation;
	}

	public void setProlongation(Boolean prolongation) {
		this.prolongation = prolongation;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((cote == null) ? 0 : cote.hashCode());
		result = prime * result + ((dateEmprunt == null) ? 0 : dateEmprunt.hashCode());
		result = prime * result + ((dateReservation == null) ? 0 : dateReservation.hashCode());
		result = prime * result + ((dateRetour == null) ? 0 : dateRetour.hashCode());
		result = prime * result + ((prolongation == null) ? 0 : prolongation.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
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
		if (dateRetour == null) {
			if (other.dateRetour != null)
				return false;
		} else if (!dateRetour.equals(other.dateRetour))
			return false;
		if (prolongation == null) {
			if (other.prolongation != null)
				return false;
		} else if (!prolongation.equals(other.prolongation))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "UserCote [user=" + user + ", cote=" + cote + ", dateEmprunt=" + dateEmprunt + ", dateReservation="
				+ dateReservation + ", dateRetour=" + dateRetour + ", prolongation=" + prolongation + "]";
	}

	
	
	
}

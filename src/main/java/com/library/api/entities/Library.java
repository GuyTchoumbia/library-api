package com.library.api.entities;

import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.common.Adress;
import com.library.api.entities.common.BaseEntity;


@Entity
@Table
public class Library extends BaseEntity {	
	
	@Embedded	
	private Adress adress;	
	
	@OneToMany(mappedBy="library")
	@JsonIgnoreProperties({"library","userCotes"})
	private List<Cote> cotes;
	
	@ManyToOne
	@JsonIgnoreProperties("libraries")
	private Horaires horaires;
	
	@NotNull
	private String libelle;
			
	private String message;

	public Library() {}

	public Library(String libelle) {
		super();
		this.libelle = libelle;
	}

	public Library(@NotNull String libelle, Adress adress, Horaires horaires, String message, List<Cote> cotes) {
		super();
		this.libelle = libelle;
		this.adress = adress;
		this.horaires = horaires;
		this.message = message;
		this.cotes = cotes;
	}

	public void addCote(Cote cote) {
		this.cotes.add(cote);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!super.equals(obj))
			return false;
		if (getClass() != obj.getClass())
			return false;
		Library other = (Library) obj;
		if (adress == null) {
			if (other.adress != null)
				return false;
		} else if (!adress.equals(other.adress))
			return false;
		if (cotes == null) {
			if (other.cotes != null)
				return false;
		} else if (!cotes.equals(other.cotes))
			return false;
		if (horaires == null) {
			if (other.horaires != null)
				return false;
		} else if (!horaires.equals(other.horaires))
			return false;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		if (message == null) {
			if (other.message != null)
				return false;
		} else if (!message.equals(other.message))
			return false;
		return true;
	}

	public Adress getAdress() {
		return adress;
	}	

	public List<Cote> getCotes() {
		return cotes;
	}

	public Horaires getHoraires() {
		return horaires;
	}

	public String getLibelle() {
		return libelle;
	}

	public String getMessage() {
		return message;
	}		

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((adress == null) ? 0 : adress.hashCode());
		result = prime * result + ((cotes == null) ? 0 : cotes.hashCode());
		result = prime * result + ((horaires == null) ? 0 : horaires.hashCode());
		result = prime * result + ((libelle == null) ? 0 : libelle.hashCode());
		result = prime * result + ((message == null) ? 0 : message.hashCode());
		return result;
	}

	public void removeCote(Cote cote) {
		this.cotes.remove(cote);
	}
	
	public void setAdress(Adress adress) {
		this.adress = adress;
	}
	
	public void setCotes(List<Cote> cotes) {
		this.cotes = cotes;
	}	

	public void setHoraires(Horaires horaires) {
		this.horaires = horaires;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "Library [libelle=" + libelle + ", adress=" + adress + ", horaires=" + horaires + ", cotes=" + cotes
				+ "]";
	}
	
	
   
}

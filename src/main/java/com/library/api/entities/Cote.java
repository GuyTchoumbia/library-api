package com.library.api.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import com.library.api.entities.common.BaseEntity;


@Entity
@Table
public class Cote extends BaseEntity {
	
	private String libelle;
	
	@ManyToOne
	@JsonIgnoreProperties("cotes")
	private Document document;
	
	@ManyToOne
	@JsonManagedReference
	private Library library;
	
	@OneToMany(mappedBy = "cote", cascade=CascadeType.ALL)
	@JsonBackReference
	private List<UserCote> userCote;	
	
	public Cote() {		
	}

	public Cote(Document document, Library library) {
		super();
		//TODO
		// libelle generation
		// this.libelle = library.id.toString()...
		this.document = document;
		this.library = library;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Document getDocument() {
		return document;
	}

	public void setDocument(Document document) {
		this.document = document;
	}

	public Library getLibrary() {
		return library;
	}

	public void setLibrary(Library library) {
		this.library = library;
	}
	
	public List<UserCote> getUserCote() {
		return this.userCote;
	}
	
	public void setUserCote(List<UserCote> userCote) {
		this.userCote = userCote;
	}
	
	public void addUserCote(UserCote userCote) {
		this.userCote.add(userCote);
	}
	
	public void removeUserCote(UserCote userCote) {
		this.userCote.remove(userCote);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((document == null) ? 0 : document.hashCode());
		result = prime * result + ((libelle == null) ? 0 : libelle.hashCode());
		result = prime * result + ((library == null) ? 0 : library.hashCode());
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
		Cote other = (Cote) obj;
		if (document == null) {
			if (other.document != null)
				return false;
		} else if (!document.equals(other.document))
			return false;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		if (library == null) {
			if (other.library != null)
				return false;
		} else if (!library.equals(other.library))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Cote [libelle=" + libelle + ", document=" + document + ", library=" + library + ", getId()=" + getId()
				+ ", toString()=" + super.toString() + ", getClass()=" + getClass() + "]";
	}

	
}

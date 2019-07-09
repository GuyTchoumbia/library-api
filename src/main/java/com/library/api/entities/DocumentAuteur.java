package com.library.api.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;


//@Entity
//@Table
//@JsonIdentityInfo(
//		  generator = ObjectIdGenerators.PropertyGenerator.class, 
//		  property = "id")
public class DocumentAuteur {
	
	@Id
	@ManyToOne
	private Document document;
	
	@Id
	@ManyToOne
	private Auteur auteur;
	
	public DocumentAuteur() {		
	}

	public DocumentAuteur(Document document, Auteur auteur) {
		super();
		this.document = document;
		this.auteur = auteur;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((auteur == null) ? 0 : auteur.hashCode());
		result = prime * result + ((document == null) ? 0 : document.hashCode());
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
		DocumentAuteur other = (DocumentAuteur) obj;
		if (auteur == null) {
			if (other.auteur != null)
				return false;
		} else if (!auteur.equals(other.auteur))
			return false;
		if (document == null) {
			if (other.document != null)
				return false;
		} else if (!document.equals(other.document))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "DocumentAuteur [document=" + document + ", auteur=" + auteur + "]";
	}	

}

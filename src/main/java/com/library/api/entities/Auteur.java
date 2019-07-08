package com.library.api.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.common.BaseEntity;


@Entity
@Table
public class Auteur extends BaseEntity {

	@NotNull
	private String libelle;
	
	@ManyToMany(mappedBy="auteurs")
	@JsonIgnoreProperties("auteurs")
	private List<Document> documents;	
	
	public Auteur() {}	
	
	public Auteur(String libelle) {
		super();
		this.libelle = libelle;
	}	

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}	

	public List<Document> getDocuments() {
		return documents;
	}

	public void setDocuments(List<Document> documents) {
		this.documents = documents;
	}
	
	public void addDocument(Document document) {
		this.documents.add(document);
	}
	
	public void removeDocument(Document document) {
		this.documents.remove(document);
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((libelle == null) ? 0 : libelle.hashCode());
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
		Auteur other = (Auteur) obj;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Auteur [libelle=" + libelle + ", getId()=" + getId() + ", toString()=" + super.toString()
				+ ", getClass()=" + getClass() + "]";
	}
   
}

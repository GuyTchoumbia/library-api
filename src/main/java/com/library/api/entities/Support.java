package com.library.api.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.library.api.entities.common.BaseEntity;

@Entity
@Table
public class Support extends BaseEntity {
	
	@NotNull
	private String libelle;
	
	@OneToMany(mappedBy="support")
	@JsonBackReference
	private List<Document> documents;	
		
	public Support() {}

	public Support(String libelle) {
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
		Support other = (Support) obj;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Support [libelle=" + libelle + ", getId()=" + getId() + ", toString()=" + super.toString()
				+ ", getClass()=" + getClass() + "]";
	}
	
	

}

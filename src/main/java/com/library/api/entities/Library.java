package com.library.api.entities;

import java.util.List;

import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.library.api.entities.common.Adress;
import com.library.api.entities.common.BaseEntity;


@Entity
@Table
public class Library extends BaseEntity {	
	
	@NotNull
	private String libelle;	
	
	@Embedded 
	private Adress adress;
			
	@OneToMany(mappedBy="library")
	@JsonBackReference
	private List<Cote> cotes;

	public Library() {}

	public Library(String libelle) {
		super();
		this.libelle = libelle;
	}	

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public Adress getAdress() {
		return adress;
	}

	public void setAdress(Adress adress) {
		this.adress = adress;
	}		

	public List<Cote> getDocuments() {
		return cotes;
	}

	public void setDocuments(List<Cote> cotes) {
		this.cotes = cotes;
	}
	
	public void addDocument(Cote cote) {
		this.cotes.add(cote);
	}
	
	public void removeDocument(Cote cote) {
		this.cotes.remove(cote);
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
		Library other = (Library) obj;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		return true;
	}
	
	
   
}

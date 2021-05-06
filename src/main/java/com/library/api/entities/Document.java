package com.library.api.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.common.BaseEntity;

@Entity
@Table
public class Document extends BaseEntity {

	private String libelle;
	@Column(length=13)
	private String isbn;
	@Column(length = 4)	
	private Integer date;
	
	@ManyToOne
	@JsonIgnoreProperties("documents")
	private Support support;	
	
	@ManyToMany
	@JsonIgnoreProperties("documents")
	private List<Auteur> auteurs;
	
	@ManyToOne
	@JsonIgnoreProperties("documents")
	private Editeur editeur;
	
	@OneToMany(mappedBy="document")
	@JsonIgnoreProperties("document")
	private List<Cote> cotes;		
	
	@ManyToMany
	@JsonIgnoreProperties("documents")
	private List<Tag> tags;	
	
	public Document() {}

	public Document(String libelle, String isbn, Integer date, List<Auteur> auteurs, Editeur editeur, List<Tag> tags, List<Cote> cotes) {
		super();
		this.libelle = libelle;
		this.isbn = isbn;
		this.date = date;
		this.auteurs = auteurs;
		this.editeur = editeur;
		this.tags = tags;
		this.cotes = cotes;
	}

	public String getLibelle() {
		return libelle;
	}

	public void setLibelle(String libelle) {
		this.libelle = libelle;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public Integer getDate() {
		return date;
	}

	public void setDate(Integer date) {
		this.date = date;
	}

	public Support getSupport() {
		return support;
	}

	public void setSupport(Support support) {
		this.support = support;
	}	

	public List<Auteur> getAuteurs() {
		return auteurs;
	}

	public void setAuteurs(List<Auteur> auteurs) {
		this.auteurs = auteurs;
	}		
	
	public void addAuteur(Auteur auteur) {
		this.auteurs.add(auteur);
	}
	
	public void removeAuteur(Auteur auteur) {
		this.auteurs.remove(auteur);
	}
	
	public Editeur getEditeur() {
		return editeur;
	}

	public void setEditeur(Editeur editeur) {
		this.editeur = editeur;
	}	
	
	public List<Tag> getTags() {
		return tags;
	}
	
	public void setTags(List<Tag> tags) {
		this.tags = tags;
	}
	
	public void addTag(Tag tag) {
		this.tags.add(tag);
	}
	
	public void removeTag(Tag tag) {
		this.tags.remove(tag);
	}

	public List<Cote> getCotes() {
		return cotes;
	}

	public void setCotes(List<Cote> cotes) {
		this.cotes = cotes;
	}

	public void addCote(Cote cote) {
		this.cotes.add(cote);
	}
	
	public void removeCote(Cote cote) {
		this.cotes.remove(cote);
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((date == null) ? 0 : date.hashCode());
		result = prime * result + ((isbn == null) ? 0 : isbn.hashCode());
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
		Document other = (Document) obj;
		if (date == null) {
			if (other.date != null)
				return false;
		} else if (!date.equals(other.date))
			return false;
		if (isbn == null) {
			if (other.isbn != null)
				return false;
		} else if (!isbn.equals(other.isbn))
			return false;
		if (libelle == null) {
			if (other.libelle != null)
				return false;
		} else if (!libelle.equals(other.libelle))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Document [libelle=" + libelle + ", isbn=" + isbn + ", date=" + date + ", getId()=" + getId()
				+ ", toString()=" + super.toString() + ", getClass()=" + getClass() + "]";
	}
	
	
}

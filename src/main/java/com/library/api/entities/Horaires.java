package com.library.api.entities;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.library.api.entities.common.BaseEntity;

@Entity
@Table
public class Horaires extends BaseEntity{	
	
	private String lundi;
	private String mardi;
	private String mercredi;
	private String jeudi;
	private String vendredi;
	private String samedi;
	private String dimanche;
	
	@OneToMany
	@JsonIgnoreProperties("horaires")
	private List<Library> libraries;	

	public Horaires() {}

	public Horaires(String lundi, String mardi, String mercredi, String jeudi, String vendredi,
			String samedi, String dimanche, List<Library> libraries) {
		super();		
		this.lundi = lundi;
		this.mardi = mardi;
		this.mercredi = mercredi;
		this.jeudi = jeudi;
		this.vendredi = vendredi;
		this.samedi = samedi;
		this.dimanche = dimanche;
		this.libraries = libraries;
	}
	

	public String getLundi() {
		return lundi;
	}

	public void setLundi(String lundi) {
		this.lundi = lundi;
	}

	public String getMardi() {
		return mardi;
	}

	public void setMardi(String mardi) {
		this.mardi = mardi;
	}

	public String getMercredi() {
		return mercredi;
	}

	public void setMercredi(String mercredi) {
		this.mercredi = mercredi;
	}

	public String getJeudi() {
		return jeudi;
	}

	public void setJeudi(String jeudi) {
		this.jeudi = jeudi;
	}

	public String getVendredi() {
		return vendredi;
	}

	public void setVendredi(String vendredi) {
		this.vendredi = vendredi;
	}

	public String getSamedi() {
		return samedi;
	}

	public void setSamedi(String samedi) {
		this.samedi = samedi;
	}

	public String getDimanche() {
		return dimanche;
	}

	public void setDimanche(String dimanche) {
		this.dimanche = dimanche;
	}

	public List<Library> getLibraries() {
		return libraries;
	}

	public void setLibraries(List<Library> libraries) {
		this.libraries = libraries;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = super.hashCode();
		result = prime * result + ((dimanche == null) ? 0 : dimanche.hashCode());
		result = prime * result + ((jeudi == null) ? 0 : jeudi.hashCode());
		result = prime * result + ((libraries == null) ? 0 : libraries.hashCode());
		result = prime * result + ((lundi == null) ? 0 : lundi.hashCode());
		result = prime * result + ((mardi == null) ? 0 : mardi.hashCode());
		result = prime * result + ((mercredi == null) ? 0 : mercredi.hashCode());
		result = prime * result + ((samedi == null) ? 0 : samedi.hashCode());
		result = prime * result + ((vendredi == null) ? 0 : vendredi.hashCode());
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
		Horaires other = (Horaires) obj;
		if (dimanche == null) {
			if (other.dimanche != null)
				return false;
		} else if (!dimanche.equals(other.dimanche))
			return false;
		if (jeudi == null) {
			if (other.jeudi != null)
				return false;
		} else if (!jeudi.equals(other.jeudi))
			return false;
		if (libraries == null) {
			if (other.libraries != null)
				return false;
		} else if (!libraries.equals(other.libraries))
			return false;
		if (lundi == null) {
			if (other.lundi != null)
				return false;
		} else if (!lundi.equals(other.lundi))
			return false;
		if (mardi == null) {
			if (other.mardi != null)
				return false;
		} else if (!mardi.equals(other.mardi))
			return false;
		if (mercredi == null) {
			if (other.mercredi != null)
				return false;
		} else if (!mercredi.equals(other.mercredi))
			return false;
		if (samedi == null) {
			if (other.samedi != null)
				return false;
		} else if (!samedi.equals(other.samedi))
			return false;
		if (vendredi == null) {
			if (other.vendredi != null)
				return false;
		} else if (!vendredi.equals(other.vendredi))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Horaires [lundi=" + lundi + ", mardi=" + mardi + ", mercredi=" + mercredi + ", jeudi=" + jeudi
				+ ", vendredi=" + vendredi + ", samedi=" + samedi + ", dimanche=" + dimanche + ", libraries="
				+ libraries + "]";
	}

	
}

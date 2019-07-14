package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Document;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Integer> {
	
	List<Document> findDocumentByLibelle(String value);
	
	List<Document> findDocumentByAuteurs_Libelle(String value);
	
	List<Document> findDocumentByEditeur_Libelle(String value);	

	Document findDocumentByCotes_Libelle(String value);

	List<Document> findDocumentByTags_Libelle(String value);

	List<Document> findDocumentByAuteurs_Id(Integer id);

	List<Document> findDocumentByEditeur_Id(Integer id);

	Document findDocumentByCotes_Id(Integer id);

	List<Document> findDocumentByTags_Id(Integer id);
	
	List<Document> findDocumentByLibelleAndAuteurs_LibelleAndEditeur_LibelleAndCotes_LibelleAndTags_LibelleAndSupportId(
			@Nullable String libelle, @Nullable String auteurLibelle, @Nullable String editeurLibelle, @Nullable String coteLibelle, @Nullable String tagLibelle, @Nullable Integer id);

	List<Document> findByLibelleOrAuteurs_LibelleOrEditeur_Libelle(String libelle, String auteurLibelle, String editeurLibelle);	

}

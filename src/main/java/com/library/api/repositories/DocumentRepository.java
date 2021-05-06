package com.library.api.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.library.api.entities.Document;
import com.library.api.entities.projections.Libelle;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Integer> {
	
	// the usual suspects
	@Query(value = "select * from document where upper(libelle) = upper(:libelle)", nativeQuery = true)
	List<Document> findByLibelle(@Param(value="libelle") String value);	
	
	@Query("select d from Document d, in(d.auteurs) auteurs where auteurs.libelle like :libelle")
	List<Document> findByAuteurs_Libelle(@Param(value="libelle") String value);	
	
	@Query("select d from Document d, in(d.editeur) editeur where editeur.libelle like :libelle")
	List<Document> findByEditeur_Libelle(@Param(value="libelle") String value);	
	
	@Query("select d from Document d, in(d.cotes) cotes where cotes.libelle like :libelle")
	Document findByCotes_Libelle(@Param(value="libelle") String value);
	
	@Query("select d from Document d, in(d.tags) tags where tags.libelle like :libelle")
	List<Document> findByTags_Libelle(@Param(value="libelle") String value);
	
	@Query("select d from Document d, in(d.auteurs) auteurs where auteurs.id = :id")
	List<Document> findByAuteurs_Id(@Param(value="id") Integer id);
	
	@Query("select d from Document d, in(d.editeur) editeur where editeur.id = :id")
	List<Document> findByEditeur_Id(@Param(value="id") Integer id);
	
	@Query("select d from Document d, in(d.cotes) cotes where cotes.id = :id")
	Document findByCotes_Id(@Param(value="id") Integer id);
	
	@Query("select d from Document d, in(d.tags) tags where tags.id = :id")
	List<Document> findByTags_Id(@Param(value="id") Integer id);	
	
	
	
	// advanced search	
	// the repository constructed methods can't handle this kind of request, so here it is in plain 
	@Query("Select d from Document d, IN(d.auteurs) auteurs, IN(d.editeur) editeur, IN(d.cotes) cotes, IN(d.tags) tags"
			+ " WHERE (upper(d.libelle) LIKE concat('%', upper(cast(:libelle as text)), '%') OR :libelle IS NULL)"
			+ " AND (upper(auteurs.libelle) LIKE concat('%', upper(cast(:auteur as text)), '%') OR :auteur IS NULL)"
			+ " AND (upper(editeur.libelle) LIKE concat('%', upper(cast(:editeur as text)), '%') OR :editeur IS NULL)"
			+ " AND (upper(d.isbn) LIKE concat('%', upper(cast(:isbn as text)), '%') OR :isbn IS NULL)"
			+ " AND (upper(cotes.libelle) LIKE concat('%', upper(cast(:cote as text)), '%') OR :cote IS NULL)"
			+ " AND (upper(tags.libelle) LIKE concat('%', upper(cast(:tag as text)), '%') OR :tag IS NULL)"
			+ " AND (cotes.library.id IN (:libraryIds) OR :libraryIds IS NULL)"
			+ " AND (d.support.id IN (:supportIds) OR :supportIds IS NULL)")
	List<Document> findByLibelleContainingAndAuteurs_LibelleContainingAndEditeur_LibelleContainingAndIsbnContainingAndCotes_LibelleAndTags_LibelleAndSupportIdAndCotes_LibraryId(
			@Param(value="libelle") String libelle, @Param(value="auteur") String auteurLibelle, @Param(value="editeur") String editeurLibelle, @Param(value="isbn") String isbnLibelle, 
			@Param(value="cote") String coteLibelle, @Param(value="tag") String tagLibelle, @Param(value="supportIds") List<Integer> supportIds, @Param(value="libraryIds") List<Integer> libraryIds);
	
	
	// doesn't work like that, can't seem to make optionals behave properly
	// List<Document> findByLibelleStartingWithAndAuteurs_LibelleStartingWithAndEditeur_LibelleStartingWithAndIsbnStartingWithAndCotes_LibelleAndTags_LibelleAndSupportIdAndCotes_LibraryId(
	//		Optional<String> libelle, Optional<String> auteurLibelle, Optional<String> editeurLibelle, Optional<String> isbnLibelle, Optional<String> coteLibelle, Optional<String> tagLibelle,  Optional<Integer> supportId, Optional<Integer> libraryId);
	
	
	
	// website search bar
	
	//finds by title (containing the string)
	@Query(value = "Select * from Document where upper(libelle) like upper(concat('%', ?1, '%'))", nativeQuery = true)
	List<Document> findByLibelleIgnoreCaseContaining(String value);		
	
	//finds by editor name containing the string
	@Query(value = "Select * from Document "
			+ "join editeur on document.editeur_id = editeur.id "			
			+ "where upper(editeur.libelle) like upper(concat('%', :libelle, '%'))",
			nativeQuery = true)
	List<Document> findByEditeur_LibelleIgnoreCase(@Param(value="libelle") String value);
	
	//finds by author name containing the string
	@Query(value = "Select * from Document "
			+ "join document_auteurs on document.id = document_auteurs.documents_id "
			+ "join auteur on document_auteurs.auteurs_id = auteur.id "
			+ "where upper(auteur.libelle) like upper(concat('%', :libelle, '%'))",
			nativeQuery = true)
	List<Document> findByAuteurs_LibelleIgnoreCase(@Param(value="libelle") String value);
	
	// finds by any field (title, editor name or author name) containing the string
	@Query(value = "Select * from Document "
			+ "join editeur on document.editeur_id = editeur.id "	
			+ "join document_auteurs on document.id = document_auteurs.documents_id "
			+ "join auteur on document_auteurs.auteurs_id = auteur.id "			
			+ "where upper(document.libelle) like concat('%', upper(:libelle), '%') "
			+ "or upper(auteur.libelle) LIKE concat('%', upper(:auteur), '%') "
			+ "or upper(editeur.libelle) LIKE concat('%', upper(:editeur), '%')",
			nativeQuery = true)
	List<Document> findByLibelleIgnoreCaseContainingOrAuteurs_LibelleIgnoreCaseContainingOrEditeur_LibelleIgnoreCaseContaining(
			@Param(value="libelle") String libelle,
			@Param(value="auteur") String auteurLibelle,
			@Param(value="editeur") String editeurLibelle);		
	
	
	//autocomplete		
	List<Libelle> findTop5ByLibelleIgnoreCaseContainingOrAuteurs_LibelleIgnoreCaseContainingOrEditeur_LibelleIgnoreCaseContaining(
			String libelle, String auteur, String editeur);		
	
	
	Document findByCotes_LibelleIgnoreCase(String value);	
	
	@Query(value = "Select * from Document "
			+ "where upper(libelle) like concat('%', upper(:libelle), '%')) "
			+ "limit 5",
			nativeQuery = true)
	List<Libelle> findTop5ByLibelleIgnoreCaseContaining(String libelle);
	



}

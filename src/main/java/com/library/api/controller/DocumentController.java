package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.library.api.entities.Document;
import com.library.api.repositories.DocumentRepository;

@RestController
@RequestMapping("/document")
public class DocumentController {
	
	private DocumentRepository repository;

	public DocumentController(DocumentRepository documentRepository) {
		this.repository = documentRepository;
	}	
	
	@GetMapping("/id/{id}")
	public Optional<Document> findDocumentById(@PathVariable("id") Integer id) {
		return repository.findById(id);
	}
	
	@GetMapping("/all")
	public List<Document> findAllDocuments() {
		return repository.findAll();
	}
	
	@PostMapping("/delete")
	public void delete(@RequestBody Document document) {
		repository.delete(document);
	}	
	
	@PostMapping({"/update", "/insert"})
	public void update(@RequestBody Document document) {
	 repository.save(document);
	}
	
	@GetMapping("/libelle/{value}")	
	public List<Document> findDocumentByLibelle(@PathVariable("value") String value) {
		return repository.findDocumentByLibelle(value);
	}
	
	@GetMapping("/auteur/libelle/{value}")
	public List<Document> findDocumentByAuteurLibelle(@PathVariable("value") String value) {
		return repository.findDocumentByAuteurs_Libelle(value);
	}
	
	@GetMapping("/auteur/id/{id}")
	public List<Document> findDocumentByAuteurId(@PathVariable("id") Integer id) {
		return repository.findDocumentByAuteurs_Id(id);
	}
	
	@GetMapping("/editeur/libelle/{value}")
	public List<Document> findDocumentByEditeurLibelle(@PathVariable("value") String value) {
		return repository.findDocumentByEditeur_Libelle(value);
	}
	
	@GetMapping("/editeur/id/{id}")
	public List<Document> findDocumentByEditeurId(@PathVariable("id") Integer id) {
		return repository.findDocumentByEditeur_Id(id);
	}
	
	@GetMapping("/cote/libelle/{value}")
	public Document findDocumentByCoteLibelle(@PathVariable("value") String value) {
		return repository.findDocumentByCotes_Libelle(value);
	}
	
	@GetMapping("/cote/id/{id}")
	public Document findDocumentByCoteId(@PathVariable("id") Integer id) {
		return repository.findDocumentByCotes_Id(id);
	}
	
	@GetMapping("/tag/libelle/{value}")
	public List<Document> findDocumentByTagLibelle(@PathVariable("value") String value) {
		return repository.findDocumentByTags_Libelle(value);
	}
	
	@GetMapping("/tag/id/{id}")
	public List<Document> findDocumentByTagid(@PathVariable("id") Integer id) {
		return repository.findDocumentByTags_Id(id);
	}	
	
	// Advanced Search
	@GetMapping("/search")
	public List<Document> criteriaSearch(
			@RequestParam(name="document", defaultValue="") String libelle,
			@RequestParam(name="auteur", defaultValue="") String auteurLibelle,
			@RequestParam(name="editeur", defaultValue="") String editeurLibelle,
			@RequestParam(name="isbn", defaultValue="") String isbnLibelle,
			@RequestParam(name="cote", defaultValue="") String coteLibelle,
			@RequestParam(name="support", required=false) Integer supportId,
			@RequestParam(name="tag", defaultValue="") String tagLibelle,
			@RequestParam(name="library", required=false) Integer libraryId
			) {
		return repository.findDocumentByLibelleLikeAndAuteurs_LibelleLikeAndEditeur_LibelleLikeAndIsbnLikeAndCotes_LibelleLikeAndTags_LibelleAndSupportIdAndCotes_LibraryId(
				libelle, auteurLibelle, editeurLibelle, isbnLibelle, coteLibelle, tagLibelle, supportId, libraryId);
	}
	// used on Angular website searchbar
	@GetMapping("/any/{value}") 
	public List<Document> findByAny(@PathVariable("value") String libelle) {
		return repository.findByLibelleLikeOrAuteurs_LibelleLikeOrEditeur_LibelleLike(libelle, libelle, libelle);
	}	
	
	// autocomplete fields
	@GetMapping("autocomplete/{libelle}")
	public List<Document> findLibellesStartingWith(@PathVariable("libelle") String input) {
		return repository.findTop5ByLibelleStartingWith(input);
	}

}

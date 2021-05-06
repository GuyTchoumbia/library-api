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
import com.library.api.entities.projections.Libelle;
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
	
	//web	
	@GetMapping("document/libelle/{libelle}")	
	public List<Document> findDocumentByLibelle(@PathVariable("libelle") String libelle) {
		return repository.findByLibelleIgnoreCaseContaining(libelle);
	}	
	
	@GetMapping("/auteur/id/{id}")
	public List<Document> findDocumentByAuteurId(@PathVariable("id") Integer id) {
		return repository.findByAuteurs_Id(id);
	}
	
	@GetMapping("/auteur/libelle/{libelle}")
	public List<Document> findDocumentByAuteurLibelle(@PathVariable("libelle") String libelle) {
		return repository.findByAuteurs_LibelleIgnoreCase(libelle);
	}
	
	@GetMapping("/editeur/libelle/{value}")
	public List<Document> findDocumentByEditeurLibelle(@PathVariable("value") String value) {
		return repository.findByEditeur_LibelleIgnoreCase(value);
	}
	
	@GetMapping("/editeur/id/{id}")
	public List<Document> findDocumentByEditeurId(@PathVariable("id") Integer id) {
		return repository.findByEditeur_Id(id);
	}
	
	@GetMapping("/cote/libelle/{value}")
	public Document findDocumentByCoteLibelle(@PathVariable("value") String value) {
		return repository.findByCotes_LibelleIgnoreCase(value);
	}
	
	@GetMapping("/cote/id/{id}")
	public Document findDocumentByCoteId(@PathVariable("id") Integer id) {
		return repository.findByCotes_Id(id);
	}
	
	@GetMapping("/tag/libelle/{value}")
	public List<Document> findDocumentByTagLibelle(@PathVariable("value") String value) {
		return repository.findByTags_Libelle(value);
	}
	
	@GetMapping("/tag/id/{id}")
	public List<Document> findDocumentByTagid(@PathVariable("id") Integer id) {
		return repository.findByTags_Id(id);
	}	
	
	// Advanced Search
	@GetMapping("/search")
	public List<Document> criteriaSearch(
			@RequestParam(name="document", required=false) String libelle,
			@RequestParam(name="auteur", required=false) String auteur,
			@RequestParam(name="editeur", required=false) String editeur,
			@RequestParam(name="isbn", required=false) String isbn,
			@RequestParam(name="cote", required=false) String cote,
			@RequestParam(name="tag", required=false) String tag,
			@RequestParam(name="support", required=false) List<Integer> supports,			
			@RequestParam(name="library", required=false) List<Integer> libraries
			) {
		return repository.findByLibelleContainingAndAuteurs_LibelleContainingAndEditeur_LibelleContainingAndIsbnContainingAndCotes_LibelleAndTags_LibelleAndSupportIdAndCotes_LibraryId(
				libelle, auteur, editeur, isbn, cote, tag, supports, libraries);
	}
	
	
	// used on Angular website searchbar
	@GetMapping("/any/libelle/{value}") 
	public List<Document> findByAny(@PathVariable("value") String libelle) {
		return repository.findByLibelleIgnoreCaseContainingOrAuteurs_LibelleIgnoreCaseContainingOrEditeur_LibelleIgnoreCaseContaining(libelle, libelle, libelle);
	}
	
	// autocomplete fields
	
	// Any Libelle
	@GetMapping("/autocomplete/any/{value}") 
	public List<Libelle> findByLibelleAutoComplete(@PathVariable("value") String libelle) {
		return repository.findTop5ByLibelleIgnoreCaseContainingOrAuteurs_LibelleIgnoreCaseContainingOrEditeur_LibelleIgnoreCaseContaining(libelle, libelle, libelle);
	}
	
	@GetMapping("/autocomplete/{input}")
	public List<Libelle> AutoCompleteTitre(@PathVariable("input") String libelle) {
		return repository.findTop5ByLibelleIgnoreCaseContaining(libelle);
	}
	
}

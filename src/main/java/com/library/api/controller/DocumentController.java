package com.library.api.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
	
	@GetMapping("/search")
	public List<Document> criteriaSearch(
			@RequestParam(name="document", required=false) String libelle,
			@RequestParam(name="auteur", required=false) String auteurLibelle,
			@RequestParam(name="editeur", required=false) String editeurLibelle,
			@RequestParam(name="cote", required=false) String coteLibelle,
			@RequestParam(name="support", required=false) Integer supportId,
			@RequestParam(name="tag", required=false) String tagLibelle
			) {
		return repository.findDocumentByLibelleAndAuteurs_LibelleAndEditeur_LibelleAndCotes_LibelleAndTags_LibelleAndSupportId(
				libelle, auteurLibelle, editeurLibelle, coteLibelle, tagLibelle, supportId);
	}
	
	@GetMapping("/any/{value}") 
	public List<Document> findByAny(@PathVariable("value") String libelle) {
		return repository.findByLibelleOrAuteurs_LibelleOrEditeur_Libelle(libelle, libelle, libelle);
	}
	
	@GetMapping("/delete/{id}")
	public void delete(@PathVariable("id") Integer id) {
		repository.deleteById(id);
	}	
	
	 @GetMapping({"/update", "/insert"})
	 public void delete(@RequestBody Document document) {
		 repository.save(document);
	 }
	

}

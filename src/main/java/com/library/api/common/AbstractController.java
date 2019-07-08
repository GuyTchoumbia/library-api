package com.library.api.common;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.GetMapping;

public abstract class AbstractController<T> implements Controller<T> {	
	
	protected AbstractRepository<T> repository;		
	
	@Override
	@GetMapping(path="/{id}", produces="application/json")
    public Optional<T> find(Integer id) {
       return repository.findById(id);
	}
	
	@Override
	@GetMapping(path="/all", produces="application/json")
	public List<T> findAll() {
        return repository.findAll();
    }
	
	@Override
	@GetMapping(path="{field}/all", produces="application/json")
	public List<T> findAll(String field) {
		return null;
	}
	
	@Override
	@GetMapping(path="/{field}/{value}", produces="application/json")
	public List<T> findBy(String field, String value) {
		return repository.findBy(field, value);		
	}

	@GetMapping(path="/{join}/{field}/{value}", produces="application/json")
	public List<T> findByJoined(String join, String field, String value) {
		return repository.findWithin(join, field, value);
	}
		
	/*
	 * multi criteria search
	 * parses path parameters into a hashmap<field,value>
	 * iterates over said set to add .where conditionals to the CriteriaQuery object 
	 */
	
	@GetMapping(path="/search/{map}")
	public List<T> search() {
		// TODO
		return null;
	}
	
	@Override
	@GetMapping(path="insert", produces="application/json")
	public void create(T entity) {
		repository.save(entity);
	}	
	
	@Override
	@GetMapping(path="delete/{id}", produces="application/json")
    public void delete(Integer id) {
		repository.deleteById(id);
	}
	
	@Override
	@GetMapping(path="update", produces="application/json")
	public void update(T entity) {
		repository.save(entity);		
	}

}

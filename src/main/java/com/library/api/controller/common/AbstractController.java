package com.library.api.controller.common;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;

import com.library.api.repositories.common.AbstractRepository;

public abstract class AbstractController<T> implements Controller<T> {	
	
	protected AbstractRepository<T> repository;		
	
	@SuppressWarnings("unchecked")
	@Override
	@GetMapping(path="/{id}", produces="application/json")
    public T find(@PathVariable("id") Integer id) {
       return (T) repository.findById(id);
	}
	
	@Override
	//@GetMapping(path="/all", produces="application/json")
	public List<T> findAll() {
        return repository.findAll();
    }
	
	@Override
	@GetMapping(path="{field}/all", produces="application/json")
	public List<T> findAll(@PathVariable("field") String field) {
		return null;
	}
	
	@Override
	@GetMapping(path="/{field}/{value}", produces="application/json")
	public List<T> findBy(@PathVariable("field") String field, @PathVariable("value") String value) {
		return repository.findBy(field, value);		
	}

	@GetMapping(path="/{join}/{field}/{value}", produces="application/json")
	public List<T> findByJoined(@PathVariable("join") String join, @PathVariable("field") String field, @PathVariable("value") String value) {
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
	public void create(@RequestBody T entity) {
		repository.insert(entity);
	}	
	
	@Override
	@GetMapping(path="delete/{id}", produces="application/json")
    public void delete(@PathVariable("id") Integer id) {
		repository.delete(id);
	}
	
	@Override
	@GetMapping(path="update", produces="application/json")
	public void update(@RequestBody T entity) {
		repository.update(entity);		
	}

}

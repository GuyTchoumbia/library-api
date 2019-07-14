package com.library.api.repositories.common;

import java.util.List;
import java.util.Optional;

public interface CustomRepository<T> {	
	
	public Optional<T> findById(Integer id);
	public void insert(T entity);	
	public void update(T entity);	
	public void delete(Integer id);	
	public List<T> findAll();	
	public List<T> findAll(String field);	
	public List<T> findBy(String field, String value);	
	// find into ManyToMany relations (i.e all authors with a certain document)
	public List<T> findWithin(String property, String field, String value);	
	public List<T> search();
}

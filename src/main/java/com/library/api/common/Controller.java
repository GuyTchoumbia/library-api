package com.library.api.common;

import java.util.List;
import java.util.Optional;

import org.springframework.web.bind.annotation.PathVariable;


public interface Controller<T> {
	
	public Optional<T> find(@PathVariable("id") Integer id);	

	public List<T> findAll();

	public List<T> findAll(@PathVariable("field") String field);
	/*
	 * used for autocomplete fields
	 */
	public List<T> findBy(@PathVariable("field") String field, @PathVariable("value") String value);

	public List<T> findByJoined(@PathVariable("join") String join, @PathVariable("field") String field, @PathVariable("value") String value);

	public void create(T entity);
	
	public void delete(@PathVariable("id") Integer id);
	
	public void update(T entity);

	public List<T> search();
}

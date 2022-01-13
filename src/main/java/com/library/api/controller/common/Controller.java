package com.library.api.controller.common;

import java.util.List;

public interface Controller<T> {
	
	public T find(Integer id);	
	public List<T> findAll();
	public List<T> findAll(String field);
	
	 //used for autocomplete fields	
	public List<T> findBy(String field, String value);
	public List<T> findByJoined(String join, String field, String value);
	public void create(T entity);	
	public void delete(Integer id);	
	public void update(T entity);
	public List<T> search();
}

package com.library.api.common;

import java.util.List;

public interface ExtendedRepository<T> {	
	
	List<T> findBy(String field, String value);
	
	// find into ManyToMany relations (i.e all authors with a certain document)
	List<T> findWithin(String property, String field, String value);
	
	List<T> search();

}

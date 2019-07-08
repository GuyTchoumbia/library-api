package com.library.api.common;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.springframework.data.repository.NoRepositoryBean;

@NoRepositoryBean
public class ExtendedRepositoryImpl<T> implements ExtendedRepository<T> {
	
	protected Class<T> entityClass;	
	
	@PersistenceContext
	protected EntityManager em;
	protected CriteriaBuilder cb;	
	
	public ExtendedRepositoryImpl(Class<T> entityClass) {
		this.entityClass = entityClass;
	}	
	
	@PostConstruct
	public void init() {
		this.cb = em.getCriteriaBuilder();		
	}

	@Override
	public List<T> findBy(String field, String value) {
		CriteriaQuery<T> cq = cb.createQuery(entityClass);
		Root<T> t = cq.from(entityClass);
		cq.where(cb.like(t.get(field), value+"%"));
		return em.createQuery(cq).setMaxResults(5).getResultList();			
	}

	@Override
	public List<T> findWithin(String property, String field, String value) {
		CriteriaQuery<T> cq = cb.createQuery(entityClass);
		Root<T> root = cq.from(entityClass);
		cq.where(cb.like((root.get(property)).get(field), value+"%"));
		return em.createQuery(cq).getResultList();		
	}

	@Override
	public List<T> search() {
		// TODO Auto-generated method stub
		return null;
	}	
}

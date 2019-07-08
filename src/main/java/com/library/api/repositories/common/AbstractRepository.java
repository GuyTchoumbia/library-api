package com.library.api.repositories.common;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

public class AbstractRepository<T> implements Repository<T> {

	protected Class<T> entityClass;
	
	@PersistenceContext	protected EntityManager em;
	protected CriteriaBuilder cb;
	
	@PostConstruct
	protected void init() {
	  cb = em.getCriteriaBuilder();
	}
			
	public AbstractRepository(Class<T> entityClass) {
		this.entityClass = entityClass;
	}	
	
	@Override	
    public T findById(Integer id) {
       return em.find(entityClass, id);       
	}
	
	@Override
	public void insert(T entity) {
		em.persist(entity);
		em.flush();
	}	
	
	@Override	
    public void delete(Integer id) {
		em.remove(em.find(entityClass, id));
		em.flush();
	}
	
	@Override
	public void update(T entity) {
		em.merge(entity);
		em.flush();
	}	
	
	@Override	
	public List<T> findAll() {
        CriteriaQuery<T> cq = cb.createQuery(entityClass);
        cq.select(cq.from(entityClass));
        return em.createQuery(cq).getResultList();
    }
	
	@Override
	public List<T> findAll(String field) {
		CriteriaQuery<T> cq = cb.createQuery(entityClass);
		cq.from(entityClass).get(field);
		return em.createQuery(cq).getResultList();
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

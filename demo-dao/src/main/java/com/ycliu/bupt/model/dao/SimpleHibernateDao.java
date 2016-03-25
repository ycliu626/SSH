package com.ycliu.bupt.model.dao;

import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import common.toolkit.java.orm.hibernate.GeneralQuery;

public interface SimpleHibernateDao<T,PK> {
	//常用方法
	PK save(T entity);

	void update(T entity);

	void saveOrUpdate(T entity);

	void saveOrUpdate(Collection<T> entities);

	void delete(T entity);

	void deleteAll(Collection<T> entities);

	void deleteById(PK id);

	T find(PK id);

	List<T> getAll();

	List<T> getAll(String orderByProperty, boolean isAsc);

	List<T> findBy(String propertyName, Object value);

	T findUniqueBy(String propertyName, Object value);

	List<T> findBy(Map<String, Object> paramsMap);

	GeneralQuery<T> createGeneralQuery();

	T load(PK id);

	void refresh(T entity);

	void merge(T entity);

	boolean contains(Object entity);

	void merge(String entityName, T entity);

	void evict(T entity);
}

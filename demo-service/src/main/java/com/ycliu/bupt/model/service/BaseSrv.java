package com.ycliu.bupt.model.service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Sort.Order;

import common.toolkit.java.entity.PageEntity;

public interface BaseSrv<T> {
	public void save(T entity);

	public void update(T entity);

	public void saveOrUpdate(T entity);

	public void saveOrUpdate(Collection<T> entities);

	public void delete(T entity);

	public void deleteAll(Collection<T> entities);

	public void deleteById(String id);

	public void deleteByIds(String[] ids);

	public T find(String id);

	public List<T> findAll();

	public List<T> findAll(String orderByProperty, boolean isAsc);

	public List<T> findBy(String propertyName, Object value);

	public T findUniqueBy(String propertyName, Object value);

	public List<T> findBy(Map<String, Object> paramsMap);

	public void pageList(Map<String, Object> paramMap, List<Order> orderList, PageEntity<T> pageEntity);

	public void pageList(Map<String, Object> paramMap, PageEntity<T> pageEntity);

}

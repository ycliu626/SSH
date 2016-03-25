package com.ycliu.bupt.model.service.impl;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import javassist.bytecode.stackmap.TypeData.ClassName;

import org.apache.log4j.Logger;
import org.hibernate.validator.util.privilegedactions.GetClassLoader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort.Order;

import com.ycliu.bupt.model.dao.CommonDao;
import com.ycliu.bupt.model.dao.SimpleHibernateDao;
import com.ycliu.bupt.model.service.BaseSrv;

import common.toolkit.java.entity.PageEntity;

public class BaseSrvImpl<T> implements BaseSrv<T>{

	protected static final Logger LOGGER = Logger.getLogger(ClassName.class.getName());
//    @Resource(name="simpleHibernateDaoImpl")
	protected CommonDao<T, String> dao;

	@Autowired
    public BaseSrvImpl(CommonDao<T, String> dao) {
		this.dao=dao;
    }
	public BaseSrvImpl() {

	}
	@Override
	public void save(T entity) {
		this.dao.save(entity);
	}

	@Override
	public void update(T entity) {
		// TODO Auto-generated method stub
         this.dao.update(entity);
	}

	@Override
	public void saveOrUpdate(T entity) {
		// TODO Auto-generated method stub
         this.dao.saveOrUpdate(entity);
	}

	@Override
	public void saveOrUpdate(Collection<T> entities) {
		// TODO Auto-generated method stub
         this.dao.saveOrUpdate(entities);
	}

	@Override
	public void delete(T entity) {
		// TODO Auto-generated method stub
         this.dao.delete(entity);
	}

	@Override
	public void deleteAll(Collection<T> entities) {
		// TODO Auto-generated method stub
         this.dao.deleteAll(entities);
	}

	@Override
	public void deleteById(String id) {
		// TODO Auto-generated method stub
         this.dao.deleteById(id);
	}
	@Override
    public void deleteByIds(String[] ids) {
        for (String id : ids) {
            this.dao.deleteById(id);
        }
    }
	@Override
	public T find(String id) {
		// TODO Auto-generated method stub
		return this.dao.find(id);
	}

	@Override
	public List<T> findAll() {
		// TODO Auto-generated method stub
		return this.dao.getAll();
	}

	@Override
	public List<T> findAll(String orderByProperty, boolean isAsc) {
		// TODO Auto-generated method stub
		return this.dao.getAll(orderByProperty, isAsc);
	}

	@Override
	public List<T> findBy(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return this.dao.findBy(propertyName, value);
	}

	@Override
	public T findUniqueBy(String propertyName, Object value) {
		// TODO Auto-generated method stub
		return this.dao.findUniqueBy(propertyName, value);
	}

	@Override
	public List<T> findBy(Map<String, Object> paramsMap) {
		// TODO Auto-generated method stub
		return this.dao.findBy(paramsMap);
	}

	@Override
	public void pageList(Map<String, Object> paramMap, List<Order> orderList,PageEntity<T> pageEntity) {
		// TODO Auto-generated method stub
        this.dao.pageList(paramMap, orderList, pageEntity);
	}
	@Override
	public void pageList(Map<String, Object> paramMap,PageEntity<T> pageEntity) {
		// TODO Auto-generated method stub
		this.dao.pageList(paramMap, pageEntity);
	}

}

package com.ycliu.bupt.model.dao;

import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.data.domain.Sort.Order;

import common.toolkit.java.entity.PageEntity;
import common.toolkit.java.orm.hibernate.GeneralQuery;


public interface CommonDao<T,PK> extends SimpleHibernateDao<T, PK>{
	public void pageList(Map<String, Object> paramMap, List<Order> orderList,
			PageEntity<T> pageEntity);
	public void pageList(Map<String, Object> paramMap,
			PageEntity<T> pageEntity);
}

package com.ycliu.bupt.model.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.springframework.data.domain.Sort.Order;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import proguard.optimize.info.SuperInvocationMarker;

import com.ycliu.bupt.model.dao.CommonDao;

import common.toolkit.java.entity.PageEntity;
import common.toolkit.java.orm.hibernate.QueryExtension;


@SuppressWarnings("hiding")
public class CommonDaoImpl<T> extends SimpleHibernateDaoImpl<T, String> implements CommonDao<T,String> {


	@Override
	public void pageList(Map<String, Object> paramMap, PageEntity<T> pageEntity) {
		// TODO Auto-generated method stub
		 super.pageBySql(this.getSql(paramMap), pageEntity, new QueryExtension<T>() {
	     		@Override
	     		public void doExtend(SQLQuery query) {
	     			query.addEntity(entityClass);
	     		}
	     	}, paramMap);
	}

	@Override
	public void pageList(Map<String, Object> paramMap, List<Order> orderList,
			PageEntity<T> pageEntity) {
		// TODO Auto-generated method stub
		super.pageBySql(this.getOrdelSql(paramMap,orderList), pageEntity, new QueryExtension<T>() {
			@Override
			public void doExtend(SQLQuery query) {
				query.addEntity(entityClass);
			}
		}, paramMap);
	}

    protected String getSql(Map<String, Object> paramMap){
    	StringBuilder sql = new StringBuilder("select * from table_name where 1=1 ");
    	if (paramMap.containsKey("name")) {
    		sql.append(" and column_name like :name");
    	}
    	sql.append(" order by id DESC ");
    	return sql.toString();
    }
    protected String getOrdelSql(Map<String, Object> paramMap,List<Order> orderList){
    	StringBuilder sql = new StringBuilder("select * from table_name where 1=1 ");
    	if (paramMap.containsKey("name")) {
    		sql.append(" and column_name like :name");
    	}
    	 sql.append(" order by ");
    	if (orderList==null) {
			sql.append(" id DESC,createTime DESC ");
		}else if (orderList.size()>0) {
			for (Order order : orderList) {
				sql.append(order.getProperty()+" "+order.getDirection()+" ");
			}

		}
    	return sql.toString();
    }
}

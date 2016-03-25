package com.ycliu.bupt.model.dao.impl;

import java.io.Serializable;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.LockOptions;
import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.hibernate.metadata.ClassMetadata;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate3.SessionFactoryUtils;
import org.springframework.stereotype.Repository;
import org.springframework.util.Assert;

import com.google.common.base.Preconditions;
import com.ycliu.bupt.model.dao.SimpleHibernateDao;

import common.toolkit.java.entity.PageEntity;
import common.toolkit.java.exception.DaoException;
import common.toolkit.java.orm.hibernate.GeneralQuery;
import common.toolkit.java.orm.hibernate.QueryExtension;
import common.toolkit.java.util.ReflectUtils;
import common.toolkit.java.util.StringUtil;

@SuppressWarnings("unchecked")
@Repository(value="simpleHibernateDaoImpl")
public class SimpleHibernateDaoImpl<T,PK extends Serializable> implements SimpleHibernateDao<T,PK> {
   private static final Logger LOGGER = Logger.getLogger(SimpleHibernateDaoImpl.class);

   private static final Pattern FROM_PATTERN  = Pattern.compile("[Ff][Rr][Oo][Mm]");
   private static final String  ORDER_PATTERN = "^(.*)[Oo][Rr][Dd][Ee][Rr]\\s*?[Bb][Yy](.*)$";

   protected SessionFactory     sessionFactory;
   protected Class<T>           entityClass;

   /**
    * 获得泛型参数的实际类型的class对象
    * eg.
    * SimpleHibernateDao<User, Long> userDao = new SimpleHibernateDao<User,
    * Long>(sessionFactory, User.class);
    */
   public SimpleHibernateDaoImpl() {
       this.entityClass = ReflectUtils.getSuperClassGenricType(getClass());
   }

   /**
    * 获得sessionFactory和泛型参数的实际类型的class对象
    * eg.
    * SimpleHibernateDao<User, Long> userDao = new SimpleHibernateDao<User,
    * Long>(sessionFactory, User.class);
    */
   public SimpleHibernateDaoImpl(final SessionFactory sessionFactory, final Class<T> entityClass) {
       this.sessionFactory = sessionFactory;
       this.entityClass = entityClass;
   }

   /**
    * 获取sessionFactory.
    */
   public SessionFactory getSessionFactory() {
       return sessionFactory;
   }

   /**
    * 用注解@Autowired自动注入spring bean工厂中的sessionFactory
    */
   @Autowired
   public void setSessionFactory(final SessionFactory sessionFactory) {
       this.sessionFactory = sessionFactory;
   }

   /**
    * 获取session. <br/>
    *
    * @return Session
    */
   public Session getSession() {
       return sessionFactory.getCurrentSession();
   }

   /**
    * 获得java.sql.connection <br/>
    *
    * @return Connection
    * @throws DaoException
    */
   public Connection getConnection() throws DaoException {
       try {
           return SessionFactoryUtils.getDataSource(getSessionFactory()).getConnection();
       } catch (SQLException e) {
           throw new DaoException("连接数据库错误", e);
       }
   }

   /**
    * 保存成功返回PK. <br/>
    *
    * @param entity
    */
   @Override
   public PK save(final T entity) {
       Assert.notNull(entity, "保存对象不能为空");
       LOGGER.debug("Save entity: " + entity);
       return (PK) getSession().save(entity);
   }

   /**
    * 更新数据. <br/>
    *
    * @param entity
    */
   @Override
   public void update(final T entity) {
       Assert.notNull(entity, "对象不能为空");
       getSession().update(entity);
       LOGGER.debug("Update entity: " + entity);
   }

   /**
    * id为null调用save(),否则调用update <br/>
    *
    * @param entity
    */
   @Override
   public void saveOrUpdate(final T entity) {
       Assert.notNull(entity, "对象不能为空");
       getSession().saveOrUpdate(entity);
       LOGGER.debug("saveOrUpdate entity: " + entity);
   }

   /**
    * 集合保存. <br/>
    *
    * @param entities
    */
   @Override
   public void saveOrUpdate(final Collection<T> entities) {
       Assert.notNull(entities, "集合不能为空");
       for (T entity : entities) {
           this.saveOrUpdate(entity);
       }
   }

   /**
    * 删除对象. <br/>
    *
    * @param entity
    */
   @Override
   public void delete(final T entity) {
       Assert.notNull(entity, "删除对象不能为空");
       getSession().delete(entity);
       LOGGER.debug("delete entity: " + entity);
   }

   /**
    * 删除集合中所有对象. <br/>
    *
    * @param entities
    */
   @Override
   public void deleteAll(final Collection<T> entities) {
       for (Object entity : entities) {
           getSession().delete(entity);
           getSession().flush();
       }
   }

   /**
    * 根据id删除对象.
    */
   @Override
   public void deleteById(final PK id) {
       Assert.notNull(id, "id不能为空");
       delete(find(id));
       LOGGER.debug("delete entity " + entityClass.getSimpleName() + ", id is " + id);
   }

   /**
    * 根据id查找对象.
    */
   @Override
   public T find(final PK id) {
       Assert.notNull(id, "id不能为空");
       return (T) getSession().get(entityClass, id);
   }

   /**
    * 鎸塱d鑾峰彇瀵硅薄(瀹炰綋鐨勪唬鐞嗙被瀹炰緥,寤惰繜缂撳瓨).
    */
   @Override
   public T load(final PK id) {
       Assert.notNull(id, "id不能为空");
       return (T) getSession().load(entityClass, id);
   }

   /**
    * 鎸塱d鐢ㄧ粰瀹氱殑lockOptions鑾峰彇瀵硅薄. <br/>
    *
    * @param id
    * @param lockOptions
    * @return
    */
   protected T load(final PK id, final LockOptions lockOptions) {
       Assert.notNull(id, "id不能为空");
       T entity = null;
       if (lockOptions != null) {
           entity = (T) getSession().load(entityClass, id, lockOptions);
       } else {
           entity = (T) getSession().load(entityClass, id);
       }
       return entity;
   }

   @Override
   public void refresh(final T entity) {
       Assert.notNull(entity, "entity不能为空");
       getSession().refresh(entity);
       LOGGER.debug("refresh entity: " + entity);
   }

   protected void refresh(T entity, LockOptions lockOptions) {
       if (lockOptions == null) {
           refresh(entity);
       } else {
           getSession().refresh(entity, lockOptions);
       }
   }

   @Override
   public void merge(final T entity) {
       Assert.notNull(entity, "entity不能为空");
       getSession().merge(entity);
       LOGGER.debug("merge entity: " + entity);
   }


   @Override
   public void merge(String entityName, T entity) {
       getSession().merge(entityName, entity);
   }

   @Override
   public void evict(final T entity) {
       Assert.notNull(entity, "entity涓嶈兘涓虹┖");
       getSession().evict(entity);
       LOGGER.debug("evict entity: " + entity);
   }

   public void clear() {
       getSession().clear();
   }

   /**
    * 获得数据集合
    */
   @Override
   public List<T> getAll() {
       return find();
   }

   /**
    * 获得按照指定属性排序的数据集合
    */
   @Override
   public List<T> getAll(String orderByProperty, boolean isAsc) {
       Criteria c = createCriteria();
       if (isAsc) {
           c.addOrder(Order.asc(orderByProperty));
       } else {
           c.addOrder(Order.desc(orderByProperty));
       }
       return c.list();
   }

   /**
    * 一级缓存session是否含有，含有返回true,否则返回false
    *
    * @param entity
    * @return boolean
    */
   @Override
   public boolean contains(Object entity) {
       return getSession().contains(entity);
   }

   /**
    * 根据指定属性名和属性值查找数据集合
    */
   @Override
   public List<T> findBy(final String propertyName, final Object value) {
       Assert.hasText(propertyName, "propertyName不能为空");
       Criterion criterion = Restrictions.eq(propertyName, value);
       return find(criterion);
   }

   /**
    * 根据存有指定属性名和属性值的map查找数据集合
    */
   @Override
   public List<T> findBy(Map<String, Object> paramsMap) {
       Criteria criteria = getSession().createCriteria(entityClass);
       for (String key : paramsMap.keySet()) {
           criteria.add(Restrictions.eq(key, paramsMap.get(key)));
       }
       return criteria.list()!=null?criteria.list():new ArrayList<T>();
   }

   /**
    * 根据指定属性名和值查找唯一数据
    */
   @Override
   public T findUniqueBy(final String propertyName, final Object value) {
       Assert.hasText(propertyName, "propertyName不能为空");
       Criterion criterion = Restrictions.eq(propertyName, value);
       return (T) createCriteria(criterion).uniqueResult();
   }

   /**
    * 根据hql和参数数组查找数据
    *
    * @param values
    */
   protected <X> List<X> find(final String hql, final boolean isHql, final Object... values) {
       return createQuery(hql, isHql, values).list();
   }

   /**
    * 根据hql和参数map查找数据
    *
    * @param values
    */
   protected <X> List<X> find(final String hql, final boolean isHql, final Map<String, ?> values) {
       return createQuery(hql, isHql, values).list();
   }

   /**
    * 根据hql和参数数组查找唯一数据.
    *
    * @param values
    */
   protected <X> X findUnique(final String hql, final boolean isHql, final Object... values) {
       return (X) createQuery(hql, isHql, values).uniqueResult();
   }

   /**
    * 根据hql和参数map查找唯一数据
    *
    * @param values
    */
   protected <X> X findUnique(final String hql, final boolean isHql, final Map<String, ?> values) {
       return (X) createQuery(hql, isHql, values).uniqueResult();
   }

   /**
    * 批量更新数据库数据.
    *
    * @param values
    * @return
    */
   protected int batchExecute(final String hql, final boolean isHql, final Object... values) {
       return createQuery(hql, isHql, values).executeUpdate();
   }

   /**
    * 批量更新数据库数据..
    *
    * @param values
    * @return
    */
   protected int batchExecute(final String hql, final boolean isHql, final Map<String, ?> values) {
       return createQuery(hql, isHql, values).executeUpdate();
   }

   protected List<T> find(final Criterion... criterions) {
       return createCriteria(criterions).list()!=null?createCriteria(criterions).list():new ArrayList<T>();
   }

   protected T findUnique(final Criterion... criterions) {
       return (T) createCriteria(criterions).uniqueResult();
   }

   protected Criteria createCriteria(final Criterion... criterions) {
       Criteria criteria = getSession().createCriteria(entityClass);
       for (Criterion c : criterions) {
           criteria.add(c);
       }
       return criteria;
   }

   protected Query createQuery(final String queryString, final boolean isHql, final Object... values) {
       Assert.hasText(queryString, "queryString不能为空");
       Query query = isHql ? getSession().createQuery(queryString) : getSession().createSQLQuery(queryString);
       if (values != null) {
           for (int i = 0; i < values.length; i++) {
               query.setParameter(i, values[i]);
           }
       }
       return query;
   }

   protected Query createQuery(final String queryString, final boolean isHql, final Map<String, ?> values) {
       Assert.hasText(queryString, "queryString不能为空");
       Query query = isHql ? getSession().createQuery(queryString) : getSession().createSQLQuery(queryString);
       fillParams(query, values);
       return query;
   }
   protected Query createHqlQuery(final String hql, final Object... values) {
       return createQuery(hql, true, values);
   }
   protected Query createHqlQuery(final String hql, final Map<String, ?> values) {
       return createQuery(hql, true, values);
   }

   protected SQLQuery createSQLQuery(final String sql, final Object... values) {
       Assert.hasText(sql, "sql不能为空");
       SQLQuery sqlQuery = getSession().createSQLQuery(sql);
       if (values != null) {
           for (int i = 0; i < values.length; i++) {
               sqlQuery.setParameter(i, values[i]);
           }
       }
       return sqlQuery;
   }

   /**
    *
    * @param sql
    * @param values
    * @return
    */
   protected SQLQuery createSQLQuery(final String sql, final Map<String, ?> values) {
       Assert.hasText(sql, "sql不能为空");
       SQLQuery sqlQuery = getSession().createSQLQuery(sql);
       fillParams(sqlQuery, values);
       return sqlQuery;
   }

   protected void executeJdbcUpdate(String sql) throws DaoException {
       Assert.hasText(sql, "sql不能为空");
       try {
           getConnection().prepareStatement(sql).execute();
       } catch (SQLException e) {
           throw new DaoException(e);
       }
   }

   protected ResultSet executeJdbcQuery(String sql) throws DaoException {
       Assert.hasText(sql, "sql不能为空");
       try {
           return getConnection().prepareStatement(sql).executeQuery();
       } catch (SQLException e) {
           throw new DaoException(e);
       }
   }

   /**
    * 根据hql查询出分页结果
    * eg: xxxDao.<Object> pageByHsql(hql, page, params, true)
    *
    * @author ycliu
    * @param hql hql
    * @return
    */
   protected final <X> void pageByHql(final String hql, final PageEntity<X> page, final Map<String, Object> params) {
       pageByHql(hql, page, params, true);
   }

   /**
    * eg: xxxDao.<Object> pageByHsql(hql, page, params, true)
    *
    * @author ycliu
    * @param hql
    * @param page
    * @param params
    * @param recount
    * @return
    */
   protected final <X> void pageByHql(final String hql, final PageEntity<X> page, final Map<String, Object> params,
           boolean recount) {
	   Preconditions.checkArgument(!StringUtil.isEmpty(hql), "sql can not be empty");
       Query countQuery = this.createQuery(generateCountHql(hql), true, params);
       Query query = this.createQuery(hql, true, params);

       doPage(page, countQuery, query, recount);
   }

   /**
    * eg: xxxDao.<X> pageByHsql(hql, page, params, true)
    *
    * @author ycliu
    * @param hql
    * @param page
    * @param params
    * @return
    */
   protected final <X> void pageByHqlWithOrder(final String hql, final PageEntity<X> page,
           final Map<String, Object> params) {
	   Preconditions.checkArgument(!StringUtil.isEmpty(hql), "sql can not be empty");
       Query countQuery = this.createQuery(generateCountHqlWithOrder(hql), true, params);
       Query query = this.createQuery(hql, true, params);

       doPage(page, countQuery, query, true);
   }

   /**
    * eg: xxxDao.<X> pageByHsql(hql, page, params, true)
    * s
    *
    * @author ycliu
    * @param hql hql
    * @param page page
    * @return
    */
   protected final <X> void pageBySql(final String hql, final PageEntity<X> page, QueryExtension<X> qe,
           final Map<String, Object> params) {
       pageBySql(hql, page, qe, params, true);
   }

   /**
    * eg: xxxDao.<X> pageByHsql(hql, page, params, true)
    * s
    *
    * @author ycliu
    * @param hql hql
    * @return
    */
   protected final <X> void pageBySqlWithOrder(final String hql, final PageEntity<X> page, QueryExtension<X> qe,
           final Map<String, Object> params) {
	   Preconditions.checkArgument(!StringUtil.isEmpty(hql), "sql can not be empty");
       Query countQuery = this.createQuery(generateCountHqlWithOrder(hql), false, params);
       SQLQuery query = (SQLQuery) this.createQuery(hql, false, params);
       qe.doExtend(query);

       doPage(page, countQuery, query, true);
   }

   /**
    *
    * @author ycliu
    * @param hql
    * @param page
    * @param qe
    * @param params
    * @param recount
    * @return
    */
   protected final <X> void pageBySql(final String hql, final PageEntity<X> page, QueryExtension<X> qe,
           final Map<String, Object> params, boolean recount) {
	   Preconditions.checkArgument(!StringUtil.isEmpty(hql), "sql can not be empty");
       Query countQuery = this.createQuery(generateCountHql(hql), false, params);
       SQLQuery query = (SQLQuery) this.createQuery(hql, false, params);
       qe.doExtend(query);

       doPage(page, countQuery, query, recount);
   }

   /**
    * eg: xxxDao.<Object> pageByHql(hql, page, params)
    *
    * @author ycliu
    * @param hql hql
    * @param params
    * @param page page
    * @param isHql
    * @return
    */
   protected final <X> void pageByHql(final String hql, final PageEntity<X> page, final Object... params) {
	   Preconditions.checkArgument(!StringUtil.isEmpty(hql), "sql can not be empty");
       Query countQuery = this.createQuery(generateCountHql(hql), true, params);
       Query query = this.createQuery(hql, true, params);

       doPage(page, countQuery, query, true);
   }

   /**
    *
    * @author ycliu
    * @param sql
    * @param page
    * @param qe
    * @param params
    * @return
    */
   protected final <X> void pageBySql(final String sql, final PageEntity<X> page, QueryExtension<X> qe,
           final Object... params) {
	   Preconditions.checkArgument(!StringUtil.isEmpty(sql), "sql can not be empty");
       Query countQuery = this.createQuery(generateCountHql(sql), false, params);
       SQLQuery query = (SQLQuery) this.createQuery(sql, false, params);

       qe.doExtend(query);

       doPage(page, countQuery, query, true);
   }

   /**
    *
    * @return String
    */
   protected String getEntityName() {
       ClassMetadata meta = sessionFactory.getClassMetadata(entityClass);
       return meta.getEntityName();
   }

   /**
    *
    * @author ycliu
    * @param query query
    * @param params
    */
   private void fillParams(final Query query, final Map<String, ?> params) {
       if (null == query || null == params) {
           return;
       }
       for (Map.Entry<String, ?> entry : params.entrySet()) {
           if (null == entry.getValue() || StringUtil.isEmpty(entry.getValue().toString().trim())) {
               continue;
           }
           if (entry.getValue() instanceof Collection<?>) {
               query.setParameterList(entry.getKey(), (Collection<?>) entry.getValue());
           } else if (entry.getValue() instanceof Object[]) {
               query.setParameterList(entry.getKey(), (Object[]) entry.getValue());
           } else {
               query.setParameter(entry.getKey(), entry.getValue());
           }
       }
   }

   /**
    *
    * @author ycliu
    * @param querySql querySql
    * @return String
    */
   private String generateCountHql(final String querySql) {
       // 鍘绘帀order by
       final String newquerySql = querySql.replaceAll(ORDER_PATTERN, "$1");

       StringBuffer sb = new StringBuffer("select count(*) ");
       Matcher matcher = FROM_PATTERN.matcher(newquerySql);
       if (matcher.find()) {
           sb.append(newquerySql.substring(matcher.start()));
           return sb.toString();
       }

       return newquerySql;
   }

   /**
    *
    * @author guohuilin
    * @param querySql
    * @return
    */
   private String generateCountHqlWithOrder(final String querySql) {
       StringBuffer sb = new StringBuffer("select count(*) ");
       Matcher matcher = FROM_PATTERN.matcher(querySql);
       if (matcher.find()) {
           sb.append(querySql.substring(matcher.start()));
       }

       return sb.toString();
   }

   /**
    *
    * @author ycliu
    * @param page
    * @param countQuery
    * @param query
s    * @return
    */
   private <X> PageEntity<X> doPage(final PageEntity<X> page, Query countQuery, Query query, boolean recount) {
       if (recount) {
           Number count = (Number) countQuery.uniqueResult();
           page.setTotalResults(count == null ? 0 : count.longValue());
       }

       query.setFirstResult(page.getStart());
       query.setMaxResults(page.getPageSize());

       List<X> results = query.list();
       page.setCurrentPageLength(results.size());
       page.setTotalPages();
       page.setResults(results);

       return page;
   }

   /**
    * @see common.toolkit.java.orm.hibernate.CommonDao#createGeneralQuery()
    */

   @Override
   public GeneralQuery<T> createGeneralQuery() {
       return new GeneralQuery<T>(getSession(), this.entityClass);
   }

}

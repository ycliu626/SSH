package com.ycliu.bupt.model.service.impl;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.ycliu.bupt.model.dao.CommonDao;
import com.ycliu.bupt.model.dao.PersonDao;
import com.ycliu.bupt.model.dao.SimpleHibernateDao;
import com.ycliu.bupt.model.pojo.Person;
import com.ycliu.bupt.model.service.PersonSrv;

@Service(value="personSrvImpl")
public class PersonSrvImpl extends BaseSrvImpl<Person> implements PersonSrv{

	@Autowired
	public PersonSrvImpl(@Qualifier(value = "personDaoImpl")CommonDao<Person, String> dao) {
		super(dao);
	}
	public PersonSrvImpl() {

	}

}

package com.ycliu.bupt.model.dao.impl;

import org.springframework.stereotype.Repository;

import com.sun.mail.iap.ByteArray;
import com.ycliu.bupt.model.dao.PersonDao;
import com.ycliu.bupt.model.pojo.Person;

@Repository(value="personDaoImpl")
public class PersonDaoImpl extends CommonDaoImpl<Person> implements PersonDao{

}

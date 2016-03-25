package com.ycliu.bupt.model.test;


import javax.annotation.Resource;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.ycliu.bupt.model.pojo.Person;
import com.ycliu.bupt.model.service.PersonSrv;


/**
 * Unit test for simple App.
 */
public class TestService {

//	@Resource(name="personSrvImpl")
	@Autowired
    private PersonSrv personSrv;

    @Test
    public void save(){
    	ApplicationContext  ac = new ClassPathXmlApplicationContext("applicationContext.xml");
        PersonSrv personSrv = (PersonSrv) ac.getBean("personSrvImpl");
    	Person person = new Person();
        person.setName("ycliu");
        personSrv.save(person);
        System.out.println("chenggong");
    }
}

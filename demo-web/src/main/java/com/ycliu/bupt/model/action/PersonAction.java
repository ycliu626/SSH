package com.ycliu.bupt.model.action;

import javax.annotation.Resource;

import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ycliu.bupt.model.common.BaseAction;
import com.ycliu.bupt.model.common.CommonAction;
import com.ycliu.bupt.model.pojo.Person;
import com.ycliu.bupt.model.service.BaseSrv;
import com.ycliu.bupt.model.service.PersonSrv;

@Scope(value="prototype")
@ParentPackage(value = "struts-default")
@Namespace(value = "/")
@Results({ @Result(name = "success", location = "/WEB-INF/jsp/student/index.jsp") })
public class PersonAction extends BaseAction<Person>{

	private static final long serialVersionUID = 7730972685790714932L;

    @Autowired
    public PersonAction(@Qualifier(value = "personSrvImpl") BaseSrv<Person> baseSrv) {
	        super(baseSrv);
	        // TODO Auto-generated constructor stub
    }

	@Autowired
	private PersonSrv personSrv;


	public String save(){
		Person person = new Person();
        person.setName("yycliu");
        personSrv.save(person);
		this.sendMsg(true, "", "124");
		return "success";
	}

}

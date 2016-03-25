package com.ycliu.bupt.model.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import common.toolkit.java.orm.entity.UUIDEntityNoVer;


@Entity
@Table(name = "person")
public class Person extends UUIDEntityNoVer{

	/**
	 *
	 */
	private static final long serialVersionUID = -5471188600686333006L;
	private String name;
	@Column(name = "name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}

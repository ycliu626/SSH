package com.ycliu.bupt.model.pojo;


import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

import common.toolkit.java.orm.entity.AbstractEntity;


public abstract class CommonEntity extends AbstractEntity<String>{

//	/**
//	 *
//	 */
	private static final long serialVersionUID = 7078122407090601783L;
//	public String id;
//
//	@Id
//	@GeneratedValue(generator = "system-uuid")
//	@GenericGenerator(name = "system-uuid", strategy = "org.hibernate.id.UUIDHexGenerator")
//	@Column(name = "id",updatable = false)
//	public String getId() {
//		return id;
//	}
//
//	public void setId(String id) {
//          this.id = id;
//	}

	/**
     * 涓婚敭ID
     */
    public String id;

    /**
     * Hibernate3.6浠ュ悗,UUIDHexGenerator(uuid)宸蹭笉鎺ㄨ崘浣跨敤锛屾敼鐢║UIDGenerator(org.hibernate
     * .id.UUIDGenerator)
     */
    @Id
    @Column(name = "ID", updatable = false)
    @GeneratedValue(generator = "system-uuid")
    @GenericGenerator(name = "system-uuid", strategy = "org.hibernate.id.UUIDHexGenerator")
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}

package com.mccoy.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "Emplo_table")

public class Employee implements Serializable {
	
	 private static final long serialVersionUID = -3465813074586302847L;
	 
	    @Id
	    @GeneratedValue(strategy = GenerationType.AUTO)
	    private int id;
	 
	    @Column
	    private String name;
	 
	    @Column
	    private String email;
	 
	    @Column
	   // @DateTimeFormat(pattern="MM/dd/yyyy")
	    private Date DOB;
	 
	    @Column
	    private String gender;

	    @Column
	    private String account;

	    
		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			System.out.println(gender);
			this.gender = gender;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public Date getDOB() {
			return DOB;
		}

		public void setDOB(Date dOB) {
			DOB = dOB;
		}

	

		public String getAccount() {
			return account;
		}

		public void setAccount(String account) {
			this.account = account;
		}

		public static long getSerialversionuid() {
			return serialVersionUID;
		}
	    
	    
	 
	 }

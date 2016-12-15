package gr.acteo;

/**
 * Individual.java is part of the Acteo.gr java source code and defines the
 * class for Individuals, extending Users.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

import java.util.Date;

public class Individual extends User{

	private String name;
	private String surname;
	private Date date;
	private String gender;
	private String specialty;
	private String cvLink;
	private String sbLink;
	private String photoLink;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	//
	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}
	//
	public Date getDate(){
		return this.date;
	}

	public void setDate(Date date){
	   this.date = date;
	}
	//
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	//
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}
	//
	public String getCvLink() {
		return cvLink;
	}
	public void setCvLink(String cvLink) {
		this.cvLink = cvLink;
	}
	//
	public String getSbLink() {
		return sbLink;
	}
	public void setSbLink(String sbLink) {
		this.sbLink = sbLink;
	}
	//
	public String getPhotoLink() {
		return photoLink;
	}
	public void setPhotoLink(String photoLink) {
		this.photoLink = photoLink;
	}


	public Individual(String password, String email, String name, String surname,
				Date date, String gender, String specialty,
				String cvLink, String sbLink, String photoLink) {
		super(password,email);
		this.name = name;
		this.surname = surname;
		this.date = date;
		this.gender = gender;
		this.specialty = specialty;
		this.cvLink = cvLink;
		this.sbLink = sbLink;
		this.photoLink = photoLink;
	}

} //End of class

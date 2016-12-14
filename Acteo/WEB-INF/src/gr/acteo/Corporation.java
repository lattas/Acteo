package gr.acteo;

import java.util.Date;

public class Corporation {

	private String password;
	private String email;
	private String name;
	private String logoLink;
	private String description;
	private String website;


	//
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	//
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	//
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	//
	public String getLogoLink() {
		return logoLink;
	}

	public void setLogoLink(String logoLink) {
		this.logoLink = logoLink;
	}
	//
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	//
	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}



	public Corporation(String password, String email, String name, String logoLink, String description, String website) {
		this.password = password;
		this.email = email;
		this.name = name;
		this.logoLink = logoLink;
		this.description = description;
		this.website = website;
	}

} //End of class

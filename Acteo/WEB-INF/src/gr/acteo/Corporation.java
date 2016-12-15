package gr.acteo;

/**
 * Corporation.java is part of the Acteo.gr java source code and defines the
 * class for corporations, extending Users.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

public class Corporation extends Users{

	private String name;
	private String logoLink;
	private String description;
	private String website;

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

		super(password, email);
		this.name = name;
		this.logoLink = logoLink;
		this.description = description;
		this.website = website;
	}

} //End of class

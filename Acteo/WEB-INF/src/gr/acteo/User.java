package gr.acteo;

/**
 * Users.java is part of the Acteo.gr java source code and defines the
 * class for all users.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

 public class User {

   protected String password;
   protected String email;

   public User (String password, String email) {
     this.password = password;
     this.email = email;
   }

   public String getPassword() {
     return password;
   }

   public void setPassword(String password) {
     this.password = password;
   }

   public String getEmail() {
     return email;
   }

   public void setEmail(String email) {
     this.email = email;
   }
 }

package gr.acteo;

/**
 * UserDAO.java is part of the Acteo.gr java source code
 * that, using DB.java, hadnles the queries for login.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

 import java.sql.*;

 public class UserDAO {

   /**
   * Authenticates user based on given email and password. If no user is
   * found, it throws a relevant exception.
   *
   * @param email given user's username
   * @param password given user's password
   *
   * @return information of the user found as a User object.
   *
   * @throws Exception when no user is found in the database for these credentials.
   */
   public User authenticateUser(String email, String password)
                                             throws Exception{

     // Initialisation
     User user;
     Connection con = null;
     ResultSet rs;
     PreparedStatement stmt1;

     // Establishing Connection
     DB db = new DB();

     try {

       db.open(); // open connection

       con = db.getConnection(); // get connection

       // Quering Corporations
       String sqlquery = "SELECT * FROM user WHERE email = ? AND password = ? LIMIT 1";// WHERE username = ? AND password = '1234'";
       stmt1 = con.prepareStatement(sqlquery);
       stmt1.setString(1, email);
       stmt1.setString(2, password);
       rs = stmt1.executeQuery();

       /* user found */
       if (rs.next()) {

         user = new User(rs.getString("password"),rs.getString("email"));

       /* User Not Found */
       } else {
         throw new Exception("Wrong Username or Password");
       }

         /* Close */
         rs.close();
         stmt1.close();
         db.close();

         return user;

     } catch (Exception e) {

       throw new Exception(e.getMessage());

     } finally {

       if(con != null)
         con.close();

     } // end try

   } // end authenticateUser
 }

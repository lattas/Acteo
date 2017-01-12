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

   User user;
   Connection con = null;
   ResultSet rs;
   PreparedStatement stmt1;
   PreparedStatement stmt2;
   PreparedStatement stmt3;

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
         String link = "<a href='page-login.jsp'>retry.</a>";
         throw new Exception("Wrong Username or Password. Plase " +link);
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

   public void registerUser(String email, String password, String type)
      throws Exception {

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
        String sqlquery = "SELECT * FROM user WHERE email = ? LIMIT 1";// WHERE username = ? AND password = '1234'";
        stmt1 = con.prepareStatement(sqlquery);
        stmt1.setString(1, email);
        rs = stmt1.executeQuery();

        /* user found, register failed. */
        if (rs.next()) {

          String login = "<a href='page-login.jsp'>login</a>";
          throw new Exception("This email is already registered. Please login: " + login);

        /* User Not Found */
        }

        String sqlquery2 = "INSERT INTO User (email,password) VALUES (?,?)";
        stmt2 = con.prepareStatement(sqlquery2);
        stmt2.setString(1,email);
        stmt2.setString(2,password);
        stmt2.execute();

        String sqlquery3 = "INSERT INTO "+ type +" (email) VALUES (?)";
        stmt3 = con.prepareStatement(sqlquery3);
        stmt3.setString(1,email);
        stmt3.execute();

        /* Close */
        rs.close();
        stmt1.close();
        db.close();

      } catch (Exception e) {

        throw new Exception(e.getMessage());

      } finally {

        if(con != null)
          con.close();

      } // end try
   } // end registerUSer

   public String getUserType(String email) throws Exception{

     DB db = new DB();
     String type;

     try {

       db.open(); // open connection

       con = db.getConnection(); // get connection

       // Quering Corporations
       String sqlquery1 = "SELECT * FROM individual WHERE email = ? LIMIT 1";
       stmt1 = con.prepareStatement(sqlquery1);
       stmt1.setString(1, email);

       rs = stmt1.executeQuery();

       /* individual */
       if (rs.next()) {
         type = "ind";

        /* corporation */

       } else {
         type = "cor";
       }

         /* Close */
         rs.close();
         stmt1.close();
         db.close();

         return type;

     } catch (Exception e) {

       throw new Exception(e.getMessage());

     } finally {

       if(con != null)
         con.close();

     } // end try


   } // end getUserType

   public void updatePassword(String email, String password) throws Exception {

     Connection con = null;
     PreparedStatement stmt1;

     // Establishing Connection
     DB db = new DB();

     try {

       db.open(); // open connection

       con = db.getConnection(); // get connection

       String sqlquery = "UPDATE user SET password = ? WHERE email = ?";
       stmt1 = con.prepareStatement(sqlquery);
       stmt1.setString(1,password);
       stmt1.setString(2,email);
       stmt1.executeUpdate();

       /* Close */
       stmt1.close();
       db.close();

     } catch (Exception e) {

       throw new Exception("There was an error while changing the password:" + e.getMessage());

     } finally {

       if(con != null)
         con.close();

     } // end try
   }
 }

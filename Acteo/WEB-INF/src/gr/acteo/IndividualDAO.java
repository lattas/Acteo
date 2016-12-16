package gr.acteo;

/**
 * IndividualDAO.java is part of the Acteo.gr java source code
 * that, using DB.java, hadnles the queries for editing the user profile.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

 import java.sql.*;

 public class IndividualDAO {

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
   public Individual getIndividualData(String email) throws Exception{

     // Initialisation
     Individual ind;
     Connection con = null;
     ResultSet rs;
     PreparedStatement stmt1;

     // Establishing Connection
     DB db = new DB();

     try {

       db.open(); // open connection

       con = db.getConnection(); // get connection

       // Quering Corporations
       String sqlquery = "SELECT * FROM individual WHERE email = ?  LIMIT 1";
       stmt1 = con.prepareStatement(sqlquery);
       stmt1.setString(1, email);
       rs = stmt1.executeQuery();

       /* user found */
       if (rs.next()) {

         ind = new Individual("",rs.getString("email"), rs.getString("name"), rs.getString("surname"),
         						 rs.getDate("date"), rs.getString("gender"), rs.getString("specialty"),
         						 rs.getString("cvLink"), rs.getString("sb"),rs.getString("photoLink"));

       /* User Not Found */
       } else {
         throw new Exception("Wrong Username or Password");
       }

         /* Close */
         rs.close();
         stmt1.close();
         db.close();

         return ind;

     } catch (Exception e) {

       throw new Exception(e.getMessage());

     } finally {

       if(con != null)
         con.close();

     } // end try

   } // end authenticateUser
 }

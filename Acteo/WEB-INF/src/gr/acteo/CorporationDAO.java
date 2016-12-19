package gr.acteo;

/**
 * CorporationDAO.java is part of the Acteo.gr java source code
 * that, using DB.java, handles the queries for editing the company profile.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

 import java.sql.*;

 public class CorporationDAO {
    String email;
    String name;
    String logoLink;
    String description;
    String website;



   /**
   * Retrieves corporation object based on given email. If no company profile is
   * found, it throws a relevant exception.
   *
   * @param email given user's username
   * @param password given user's password
   *
   * @return information of the user found as a User object.
   *
   * @throws Exception when no user is found in the database for these credentials.
   */
   public Corporation getCorporationData(String email) throws Exception{


     // Initialisation
     Corporation cor;
     Connection con = null;
     ResultSet rs;
     PreparedStatement stmt1;

     // Establishing Connection
     DB db = new DB();

     try {

       db.open(); // open connection

       con = db.getConnection(); // get connection

       // Quering Corporations
       String sqlquery = "SELECT email, name, logo, description, website FROM corporation WHERE email = ?  LIMIT 1";
       stmt1 = con.prepareStatement(sqlquery);
       stmt1.setString(1, email);
       rs = stmt1.executeQuery();

       /* Company Found */
       if (rs.next()) {

         cor = new Corporation("",rs.getString("email"), rs.getString("name"), rs.getString("logo"),
         						  rs.getString("description"), rs.getString("website"));

       /* Company not found */
       } else {
         throw new Exception("Wrong Username or Password");
       }

         /* Close */
         rs.close();
         stmt1.close();
         db.close();

         return cor;

     } catch (Exception e) {

       throw new Exception(e.getMessage());

     } finally {

       if(con != null)
         con.close();

     } // end try

   } // end method

   public void updateCorporationData(Corporation corporation) throws Exception{

          // Initialisation
          Corporation cor;
          Connection con = null;
          ResultSet rs;
          PreparedStatement stmt1;

          // Establishing Connection
          DB db = new DB();

          try {

            db.open(); // open connection

            con = db.getConnection(); // get connection

            // Quering Corporations
            String sqlquery = "UPDATE corporation SET name = ?, logo = ?, description = ?, website = ? WHERE email = ?";
            stmt1 = con.prepareStatement(sqlquery);
            stmt1.setString(1, corporation.getName());
            stmt1.setString(2, corporation.getLogoLink());
            stmt1.setString(3, corporation.getDescription());
            stmt1.setString(4, corporation.getWebsite());
            stmt1.setString(5, corporation.getEmail());

            stmt1.executeUpdate();

            stmt1.close();
            db.close();

          } catch (Exception e) {

            throw new Exception(e.getMessage());

          } finally {

            if(con != null)
              con.close();

          } // end try

        } // end method
 }

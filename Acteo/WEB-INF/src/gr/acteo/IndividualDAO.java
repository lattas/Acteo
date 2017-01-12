package gr.acteo;

/**
 * IndividualDAO.java is part of the Acteo.gr java source code
 * that, using DB.java, handles the queries for editing the user profile.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

 import java.sql.*;
 import java.util.List;
 import java.util.ArrayList;

 public class IndividualDAO {
    String name;
    String surname;
    String date;
    String gender;
    String specialty;
    String cvLink;
    String sb;
    String photoLink;
    String email;


   /**
   * Retrieves user object based on given email. If no user is
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
       String sqlquery = "SELECT email, name, surname, CAST(age AS CHAR) as Age, gender, specialty, cv, sb, photo FROM individual WHERE email = ?  LIMIT 1";
       stmt1 = con.prepareStatement(sqlquery);
       stmt1.setString(1, email);
       rs = stmt1.executeQuery();

       /* user found */
       if (rs.next()) {

         ind = new Individual("",rs.getString("email"), rs.getString("name"), rs.getString("surname"),
         						 rs.getString("Age"), rs.getString("gender"), rs.getString("specialty"),
         						 rs.getString("cv"), rs.getString("sb"),rs.getString("photo"));

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

   } // end method
   public void updateIndividualData(Individual individual) throws Exception{

          // Initialisation
          Connection con = null;
          ResultSet rs;
          PreparedStatement stmt1;

          // Establishing Connection
          DB db = new DB();

          try {

            db.open(); // open connection

            con = db.getConnection(); // get connection

            // Quering Corporations
            String sqlquery = "UPDATE individual SET name = ?, surname = ?, Age = CAST( ? AS DATE), gender = ?, specialty = ?, cv = ?, sb = ?, photo = ? WHERE email = ?";
            stmt1 = con.prepareStatement(sqlquery);
            stmt1.setString(1, individual.getName());
            stmt1.setString(2, individual.getSurname());
            stmt1.setString(3, individual.getDate());
            stmt1.setString(4, individual.getGender());
            stmt1.setString(5, individual.getSpecialty());
            stmt1.setString(6, individual.getCvLink());
            stmt1.setString(7, individual.getSb());
            stmt1.setString(8, individual.getPhotoLink());
            stmt1.setString(9, individual.getEmail());

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

        /**
        * Retrieves individuals that match the selected search term.
        *
        * @param searchType the type of search term
        * @param term the seach term
        *
        * @return list of individuals that match the search term.
        *
        * @throws Exception when there is a connection with the connection.
        */

        public List<Individual> findIndividuals(String searchType, String term)
                                                            throws Exception {

            List<Individual> indList = new ArrayList<Individual>();

            Connection con = null;
            ResultSet rs;
            PreparedStatement stmt1;
            String sqlquery;

            // Establishing Connection
            DB db = new DB();

            try {

              db.open(); // open connection

              con = db.getConnection(); // get connection

              if (searchType != "all") {

                sqlquery = "SELECT * FROM Individual WHERE " + searchType + " LIKE ?";
                stmt1 = con.prepareStatement(sqlquery);
                stmt1.setString(1, "%"+term+"%");

              } else {

                sqlquery = "SELECT * FROM Individual LIMIT 20";
                stmt1 = con.prepareStatement(sqlquery);
              }

              rs = stmt1.executeQuery();

              while (rs.next()) {

                indList.add(new Individual("",rs.getString("email"), rs.getString("name"), rs.getString("surname"),
                						 rs.getString("Age"), rs.getString("gender"), rs.getString("specialty"),
                						 rs.getString("cv"), rs.getString("sb"),rs.getString("photo")));
              }

              stmt1.close();
              db.close();

            } catch (Exception e) {

              throw new Exception(e.getMessage());

            } finally {

              if(con != null)
                con.close();

            } // end try

            return indList;
        } // end firdIndividuals
 }

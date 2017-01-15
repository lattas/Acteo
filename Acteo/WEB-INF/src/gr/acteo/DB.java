package gr.acteo;

/**
 * DB.java is part of the Acteo.gr java source code and handles
 * the connection to Acteo Database on ISM server of AEUB.
 *
 *	@author Alexandros Lattas
 *  @author Fotios Katsigiannis
 *
 */

 import java.sql.*;

 public class DB {

   /* Finals */

   private final String dbname = "ismgroup39";
   private final String dbusername = "ismgroup39";
   private final String dbpassword = "";

   private Connection con = null;

   /**
   * a Setter for this connection
   *
   * @return a Connection object.
   */
   public Connection getConnection() {
     return this.con;
   }

   /**
   * opens a connection to the ISM database
   *
   * @throws SQLException when there is a problem opening the sessions.
   *
   */
   public void open() throws SQLException {
 		try {

      Class.forName("com.mysql.jdbc.Driver").newInstance();
 		} catch (Exception e) {

 			throw new SQLException("MySQL Driver error: " + e.getMessage());
 		}

 		try {

 			con = DriverManager.getConnection("jdbc:mysql://195.251.249.131:3306/" + dbname, dbusername, dbpassword);
 		} catch (Exception e) {
 			con = null;

 			throw new SQLException("Could not establish connection with the Database Server: " + e.getMessage());
 		}

 	} // End of open

  /**
  * closes the connection to the ISM database.
  *
  * @throws SQLException when there is a problem ending the session
  */
 	public void close() throws SQLException {
 		try {
 			// if connection is open
 			if (con != null)
 				con.close(); // close the connection to the database to end
 								// database session

 		} catch (Exception e) {

 			throw new SQLException("Could not close connection with the Database Server: "
        + e.getMessage());
 		}

 	}// end of close

 } //End of class

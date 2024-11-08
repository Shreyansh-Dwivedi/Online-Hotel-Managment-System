package hotel.management.system;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Conn {
    private Connection c;
    private Statement s;
    private static final Logger LOGGER = Logger.getLogger(Conn.class.getName());

    public Conn() {  
        try {  
            Class.forName("com.mysql.cj.jdbc.Driver");  
            c = DriverManager.getConnection("jdbc:mysql:///hms", "root", "@avengers1234COC"); 
            s = c.createStatement();  
        } catch (Exception e) { 
            LOGGER.log(Level.SEVERE, "Database connection error", e);
        }  
    }  

    // Method to close resources
    public void close() {
        try {
            if (s != null) s.close();
            if (c != null) c.close();
        } catch (SQLException e) {
            LOGGER.log(Level.WARNING, "Failed to close database resources", e);
        }
    }

    public Connection getConnection() {
        return c;
    }

    public Statement getStatement() {
        return s;
    }
}

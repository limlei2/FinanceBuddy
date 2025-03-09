/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package financebuddy;

/**
 *
 * @author limlei2002
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author limlei2002
 */
public class Connect {
    Connection con = null;
    
    public static Connection ConnectDB() {
        try { 
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/financebuddy","root","admin");
            return con;
        } catch (ClassNotFoundException | SQLException e) {
            JOptionPane.showMessageDialog(null, "An error has occured: " + e);
            return null;
        }
    }
}
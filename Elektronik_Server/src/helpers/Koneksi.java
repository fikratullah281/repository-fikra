/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package helpers;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author fikra
 */
public class Koneksi {

    private static Connection conn;

    public static Connection koneksi() {
        String DB = "jdbc:mysql://localhost/elektronik";
        String user = "root";
        String pass = "";

        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = (com.mysql.jdbc.Connection) DriverManager.getConnection(DB, user, pass);
            if (conn != null) {
                System.out.println("koneksi");
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return conn;
    }
}

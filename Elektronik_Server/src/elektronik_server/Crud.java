/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package elektronik_server;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author fikra
 */
public class Crud {

    public Crud() {
        koneksi();
    }
    private Connection conn;
    PreparedStatement ps;
    Statement stat;
    ResultSet rs;

    private void koneksi() {
        String DB = "jdbc:mysql://localhost/elektronik";
        String user = "root";
        String pass = "";

        try {
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = (Connection) DriverManager.getConnection(DB, user, pass);
            if (conn != null) {
                System.out.println("koneksi");
            }
        } catch (SQLException ex) {
        }
    }

    public String cekLoginUser(String username, String password) {
        String data = "Gagal Login";
        try {
            String sql = "SELECT * FROM tbl_login WHERE username = '" + username + "' AND password = '" + password + "'";
            stat = (Statement) conn.createStatement();
            rs = stat.executeQuery(sql);
            while (rs.next()) {
                if (username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
                    data = "Login Berhasil";
                    System.out.println("Anda Berhasil Login");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return data;
    }

    public String cekLoginAdmin(String username, String password) {
        String data = "Gagal Login";
        try {
            String sql = "SELECT * FROM tbl_login_admin WHERE username = '" + username + "' AND password = '" + password + "'";
            stat = (Statement) conn.createStatement();
            rs = stat.executeQuery(sql);
            while (rs.next()) {
                if (username.equals(rs.getString("username")) && password.equals(rs.getString("password"))) {
                    data = "Login Berhasil";
                    System.out.println("Anda Berhasil Login");
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return data;
    }


}
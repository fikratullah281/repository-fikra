/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import View.formloginadmin;
import elektronik_server.Crud;
import org.apache.xmlrpc.WebServer;

/**
 *
 * @author fikra
 */
public class Main {
    public static void main(String[] args) {
        WebServer WS = new WebServer(2019);
        WS.addHandler("server", new Crud());
        System.out.println("Server Aktif");
        WS.start();
        new formloginadmin().setVisible(true);
    }
}

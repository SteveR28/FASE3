/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author USER
 */
public class ConexionBD {
    
    public Connection getDBConection(){
        Connection conectar = null;
    try{
                Class.forName("org.mariadb.jdbc.Driver");
    }catch(Exception t){
        System.out.println(t);
    }
        try{
                conectar= DriverManager.getConnection("jdbc:mariadb://localhost/prueba","root","123");
                return conectar;
            }catch(Exception ex){
                System.out.println(ex);
            }
        return conectar;
}
    
}

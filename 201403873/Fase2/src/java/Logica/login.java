/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Logica;

import Conexion.ConexionBD;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author USER
 */

public class login {
     public String salida;

    public login() {
        salida = "";
    }
    public Boolean logearse(String usuario, String contrasena, String cui) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        
        

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("SELECT usuario,contraseña FROM  clientes where cui ="+cui+";");
            String nombre, pass;
            while (rs.next()) {
                nombre = rs.getString("usuario");
                pass = rs.getString("contraseña");
                if (pass.equals(contrasena)) {
                    if (nombre.equals(usuario)) {
                        return true;
                    }else{
                        return false;
                    }
                    
                } else {
                    return false;
                }

            }
            rs.close();
            conexion.close();
                    
        } catch (Exception e) {
            return false;
        }
        return false;
    }
}

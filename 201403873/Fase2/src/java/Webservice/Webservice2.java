/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Webservice;

import Conexion.ConexionBD;
import Logica.login;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author USER
 */
@WebService(serviceName = "Webservice2")
public class Webservice2 {

    ConexionBD conex = new ConexionBD();

    @WebMethod(operationName = "hello")
    public String hello(@WebParam(name = "name") String txt) {
        return "Hello " + txt + " !";
    }

    public Boolean Login(@WebParam(name = "nickname") String nickname, @WebParam(name = "contra") String contra) {
//return "HOLA";
    boolean hola = false;
    
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta =0;
    try {
        
        Statement st = conexion.createStatement();
        ResultSet rs = st.executeQuery("select nickname from usuario where nickname= '"+nickname+"' and contra= '"+contra+"' ;");
    
        while (rs.next()){
        consulta =consulta +1;
        
        }
        
        
        conexion.close();
    }
    
    catch(Exception ex){
    
    }
    
    if (consulta == 0){
    hola = false;
    }
    
    else {
    hola = true;
    }
    
    
    return hola;

    }

    @WebMethod(operationName = "CrearUsuario")
    public String CrearUsuario(@WebParam(name = "nickname") String nickname, @WebParam(name = "nombre") String nombre, @WebParam(name = "correo") String correo, @WebParam(name = "fechaNacimiento") String fechaNacimiento, @WebParam(name = "contra") String contra) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            consulta = query.executeUpdate("INSERT INTO usuario (nickname, nombre, correo, fecha_nac, contra)"
                    + //aqui va como lo puse en mariaDB
                    "VALUES('" + nickname + "','" + nombre + "', '" + correo + "', '" + fechaNacimiento + "', '" + contra + "');");
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }
    
    @WebMethod(operationName = "SeguirAmigo")
    public String SeguirAmigo(@WebParam(name = "cod_inv") int cod_inv, @WebParam(name = "cod_aso") String cod_aso, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            consulta = query.executeUpdate("INSERT INTO invitacion (cod_inv, cod_aso, nickname)"
                    + //aqui va como lo puse en mariaDB
                    "VALUES(" + cod_inv + ",'" + cod_aso + "', '" + nickname + "');");
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "CrearProyecto")
    public String CrearProyecto(@WebParam(name = "cod_pro") String cod_pro, @WebParam(name = "nombre") String nombre, @WebParam(name = "fecha_i") String fecha_i, @WebParam(name = "fecha_f") String fecha_f, @WebParam(name = "pago") int pago, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO proyecto (cod_pro, nombre, fecha_i, fecha_f, pago, nickname)"
                    + "VALUES('" + cod_pro + "','" + nombre + "','" + fecha_i + "','" + fecha_f + "'," + pago + ",'" + nickname + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "CrearTareaIndividual")
    public String CrearTareaIndividual(@WebParam(name = "cod_tarea") String cod_tarea, @WebParam(name = "nombre") String nombre, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "fecha_i") String fecha_i, @WebParam(name = "requisitos") String requisitos, @WebParam(name = "pago") int pago, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO tarea_individual (cod_tarea, nombre, descripcion, fecha_i, requisitos, pago, nickname)"
                    + "VALUES('" + cod_tarea + "','" + nombre + "','" + descripcion + "','" + fecha_i + "', '" + requisitos + "', " + pago + ",'" + nickname + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "CrearTareaProyecto")
    public String CrearTareaProyecto(@WebParam(name = "cod_tarea") String cod_tarea, @WebParam(name = "nombre") String nombre, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "fecha_i") String fecha_i, @WebParam(name = "requisitos") String requisitos, @WebParam(name = "pago") int pago, @WebParam(name = "cod_pro") String cod_pro) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO tarea_de_proyecto (cod_tarea_pro, nombre, descripcion, fecha_i, requisitos, pago, cod_pro)"
                    + "VALUES('" + cod_tarea + "','" + nombre + "','" + descripcion + "','" + fecha_i + "', '" + requisitos + "', " + pago + ",'" + cod_pro + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;

    }

    @WebMethod(operationName = "IngresarHabilidad")
    public String IngresarHabilidad(@WebParam(name = "cod_hab") String cod_hab, @WebParam(name = "nombre") String nombre, @WebParam(name = "resumen") String resumen, @WebParam(name = "karma") String karma) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO habilidad (cod_hab, nombre, resumen, karma)"
                    + "VALUES('" + cod_hab + "','" + nombre + "','" + resumen + "'," + karma + ");");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "IngresarConocimiento")
    public String IngresarConocimiento(@WebParam(name = "cod_cono") String cod_cono, @WebParam(name = "nombre") String nombre, @WebParam(name = "descripcion") String descripcion, @WebParam(name = "cod_hab") String cod_hab) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO conocimiento (cod_cono, nombre, descripcion, cod_hab)"
                    + "VALUES('" + cod_cono + "','" + nombre + "','" + descripcion + "','" + cod_hab + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "CrearAsociacion")
    public String CrearAsociacion(@WebParam(name = "cod_aso") String cod_aso, @WebParam(name = "nombre") String nombre, @WebParam(name = "resumen") String resumen, @WebParam(name = "logo") String logo, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            consulta = query.executeUpdate("Insert Into asociacion (cod_aso, nombre, resumen, logo, nickname)"
                    + //aqui va como lo puse en mariaDB
                    "Values('" + cod_aso + "','" + nombre + "', '" + resumen + "', '" + logo + "', '" + nickname + "');");
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "EnviarInvitacion")
    public String EnviarInvitacion(@WebParam(name = "cod_inv") int cod_inv, @WebParam(name = "cod_aso") String cod_aso, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO invitacion (cod_inv, cod_aso, nickname)"
                    + "VALUES(" + cod_inv + ",'" + cod_aso + "','" + nickname + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "IngresarEstado")
    public String IngresarEstado(@WebParam(name = "descripcion") String descripcion, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO estado (descripcion, nickname)"
                    + "VALUES('" + descripcion + "','" + nickname + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "IngresarComentario")
    public String IngresarComentario(@WebParam(name = "descripcion") String descripcion, @WebParam(name = "no_estado") int no_estado) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO comentario (descripcion, no_estado)"
                    + "VALUES('" + descripcion + "'," + no_estado + ");");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "HistorialUsuario")
    public List<String> HistorialUsuario(@WebParam(name = "param") String param) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select * from usuario");
            while (rs.next()) {
                lista.add(rs.getString("nickname"));
                lista.add(rs.getString("nombre"));
                lista.add(rs.getString("correo"));
                lista.add(rs.getString("fecha_nac"));
                lista.add(rs.getString("contra"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }

    @WebMethod(operationName = "SeleccionarKarma")
    public int SeleccionarKarma(@WebParam(name = "param") String param, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        
        int sumakarma=0;
        
        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select habilidad.karma as karma from habilidad,usuario,conocimiento, usuario_conocimiento where habilidad.cod_hab=conocimiento.cod_hab and conocimiento.cod_cono=usuario_conocimiento.cod_cono and usuario.nickname=usuario_conocimiento.nickname and usuario.nickname = '" + nickname + "'  ;");
            while (rs.next()) {
                 sumakarma= sumakarma + Integer.parseInt(rs.getString("karma"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return sumakarma;
    }
    
    @WebMethod(operationName = "Verpartarea")
    public List<String> Verpartarea(@WebParam(name = "param") String param, @WebParam(name = "cod_tarea") String cod_tarea) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select nicknamepar from detalleindividual where cod_tarea='" + cod_tarea + "';");
            while (rs.next()) {
                lista.add(rs.getString("nicknamepar"));
                

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }
    
     @WebMethod(operationName = "VerHabilidad")
    public List<String> VerHabilidad(@WebParam(name = "param") String param, @WebParam(name = "cod_hab") String cod_hab) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select cod_hab, nombre, resumen, karma from habilidad where cod_hab='" + cod_hab + "';");
            while (rs.next()) {
                lista.add(rs.getString("cod_pro"));
                lista.add(rs.getString("nombre"));
                lista.add(rs.getString("resumen"));
                lista.add(rs.getString("karma"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }
    
     @WebMethod(operationName = "VerConocimiento")
    public List<String> VerConocimiento(@WebParam(name = "param") String param, @WebParam(name = "cod_hab") String cod_hab) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select cod_cono, nombre, descripcion, from conocimiento where cod_hab='" + cod_hab + "';");
            while (rs.next()) {
                lista.add(rs.getString("cod_cono"));
                lista.add(rs.getString("nombre"));
                lista.add(rs.getString("descripcion"));
                

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }
    
    
    @WebMethod(operationName = "HistorialProyectos")
    public List<String> HistorialProyectos(@WebParam(name = "param") String param, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select cod_pro, nombre from proyecto where nickname='" + nickname + "';");
            while (rs.next()) {
                lista.add(rs.getString("cod_pro"));
                lista.add(rs.getString("nombre"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }
    
    @WebMethod(operationName = "HistorialTareaIndividual")
    public List<String> HistorialTareaIndividual(@WebParam(name = "param") String param, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select cod_tarea, nombre from tarea_indiviudal where nickname='" + nickname + "';");
            while (rs.next()) {
                lista.add(rs.getString("cod_tarea"));
                lista.add(rs.getString("nombre"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }

    @WebMethod(operationName = "HistorialEstados")
    public List<String> HistorialEstados(@WebParam(name = "param") String param, @WebParam(name = "nickname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select no_estado, descripcion from estado where nickname='" + nickname + "';");
            while (rs.next()) {
                lista.add(rs.getString("no_estado"));
                lista.add(rs.getString("descripcion"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }
    
    @WebMethod(operationName = "HistorialProyectosTareas")
    public List<String> HistorialProyectosTareas(@WebParam(name = "param") String param, @WebParam(name = "cod_pro") String cod_pro) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        List<String> lista = new ArrayList<String>();

        try {
            Statement query = conexion.createStatement();
            ResultSet rs = query.executeQuery("select cod_tarea_pro, nombre, requisitos from tarea_de_proyecto where cod_pro='" + cod_pro + "';");
            while (rs.next()) {
                lista.add(rs.getString("cod_tarea_pro"));
                lista.add(rs.getString("nombre"));
                lista.add(rs.getString("requisitos"));

            }
            conexion.close();
        } catch (Exception e) {
            System.out.println("Conexion incorrecta " + e);
        }

        return lista;
    }
    
    @WebMethod(operationName = "DetalleTareaIndividual")
    public String DetalleTareaIndividual(@WebParam(name = "nicknamepar") String nicknamepar, @WebParam(name = "cod_tarea") String cod_tarea) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO detalle_proyecto (nicknamepar, cod_tarea)"
                    + "VALUES('" + nicknamepar + "','" + cod_tarea + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }
    
    @WebMethod(operationName = "DetalleTareaPro")
    public String DetalleTareaPro(@WebParam(name = "cod_det_tarpro") String cod_det_tarpro, @WebParam(name = "lista") String lista, @WebParam(name = "cod_tarea_pro") String cod_tarea_pro) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO tareadetalle (cod_det_tarpro, lista, cod_tarea_pro)"
                    + "VALUES('" + cod_det_tarpro + "','" + lista + "','" + cod_tarea_pro + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }

    @WebMethod(operationName = "DetalleProyecto")
    public String DetalleProyecto(@WebParam(name = "cod_det_p") int cod_det_p, @WebParam(name = "involucrados") String involucrados, @WebParam(name = "cod_pro") String cod_pro) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO detalle_proyecto (cod_det_p, involucrados, cod_pro)"
                    + "VALUES(" + cod_det_p + ",'" + involucrados + "','" + cod_pro + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }
    
    @WebMethod(operationName = "AgregarConocimiento")
    public String AgregarConocimiento(@WebParam(name = "nickname") String nickname, @WebParam(name = "cod_cono") String cod_cono) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO usuario_conocimiento (nickname, cod_cono)"
                    + "VALUES('" + nickname + "','" + cod_cono + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }
    
    @WebMethod(operationName = "EnviarMensaje")
    public String EnviarMensaje(@WebParam(name = "contenido") String contenido, @WebParam(name = "nickname_recibe") String nickname_recibe, @WebParam(name = "nikcname") String nickname) {
        ConexionBD conec = new ConexionBD();
        Connection conexion = conec.getDBConection();
        int consulta = 0;
        String consulta1 = "";
        try {
            Statement query = conexion.createStatement();
            //consulta = query.executeUpdate("SELECT nombre FROM patrocinador");
            consulta = query.executeUpdate("INSERT INTO mensaje (contenido, nickname_recibe, nickname)"
                    + "VALUES('" + contenido + "','" + nickname_recibe + "','" + nickname + "');");
            //si es texto va entre '""' y si es numero ""
            conexion.close();
        } catch (Exception ex) {
            System.out.println("conexion incorrecta" + ex);
        }

        return consulta1;
    }
}

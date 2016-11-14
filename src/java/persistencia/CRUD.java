/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import ComponentesBD.conector;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException; 
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Ingeniero Jean C
 */
public class CRUD {   
    
    public boolean insertarNuevoProyecto(String cliente, String direccion, String telefono, String mail, String nombreProyecto){ 
       boolean exito=false;
        try {
            Statement st = conector.getConexion().createStatement();
            ResultSet rs = st.executeQuery("select nombreProyecto FROM  datosproyectos where nombreProyecto='" + nombreProyecto + "'");
            if (rs.next()) {
//                JOptionPane.showMessageDialog(null, "Proyecto Ya esta registrado");
            } else {
                PreparedStatement p = Sentencias.InsertarNuevoProyecto();
                p.setString(1, cliente);
                p.setString(2, direccion);
                p.setString(3, telefono);
                p.setString(4, mail);
                p.setString(5, nombreProyecto); 
                int m = p.executeUpdate();
                if (m > 0) {
                    exito=true;
                }
           }
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }        
       return exito; 
    }
    public ResultSet consultaProyectos(){
        Statement st=null;
        ResultSet rs=null;
        try {
            st = conector.getConexion().createStatement();
             rs = st.executeQuery("select  cliente,nombreProyecto FROM  datosproyectos;");           
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
     public boolean insertarNuevoIngeneiro(int cedula ,String nombres, String apellidos, String telefono, String direccion){ 
        boolean exito=false;
         try {
            Statement st = conector.getConexion().createStatement();
            ResultSet rs = st.executeQuery("select cedula FROM  ingenieros where cedula='" + cedula + "'");
            if (rs.next()) {
//                JOptionPane.showMessageDialog(null, "Proyecto Ya esta registrado");
            } else {
                
                PreparedStatement p = Sentencias.InsertarNuevoIngeniero();
                p.setInt(1, cedula);
                p.setString(2, nombres);
                p.setString(3, apellidos);
                p.setString(4, telefono);
                p.setString(5, direccion); 
                int m = p.executeUpdate();
                if (m > 0) {
                    exito=true;
                }
           }
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }        
       return exito; 
    }
    
}

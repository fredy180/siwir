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

    public boolean insertarNuevoProyecto(String nombreProyecto, String cliente,
            String direccion, String telefono, String correo, String fechaInicio,
            String fechaFin, boolean finalizado) {
//        System.out.println("esta "+nombreProyecto+" "+cliente+" "+direccion+" "+telefono+" "
//        +correo+" "+fechaFin+" "+fechaFin+" "+fechaFin);
        boolean exito = false;
        try {
            Statement st = conector.getConexion().createStatement();
            ResultSet rs = st.executeQuery("select nombreProyecto FROM  datosproyectos where nombreProyecto='" + nombreProyecto + "'");
            if (rs.next()) {
//                JOptionPane.showMessageDialog(null, "Proyecto Ya esta registrado");
            } else {
                PreparedStatement p = Sentencias.InsertarNuevoProyecto();
                p.setString(1, nombreProyecto);
                p.setString(2, cliente);
                p.setString(3, direccion);
                p.setString(4, telefono);
                p.setString(5, correo);
                p.setString(6, fechaInicio);
                p.setString(7, fechaFin);
                p.setBoolean(8, finalizado);
                int m = p.executeUpdate();
                if (m > 0) {
                    exito = true;
                }
            }
        } catch (Exception ex) {
        }
        return exito;
    }

    public ResultSet consultaProyectos() {
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conector.getConexion().createStatement();
            rs = st.executeQuery("select  cliente,nombreProyecto FROM  datosproyectos;");
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet consultaProyecto(String nombre) {
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conector.getConexion().createStatement();
            rs = st.executeQuery("select  * FROM  datosproyectos where nombreProyecto ='" + nombre + "';");
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public boolean insertarNuevoIngeneiro(int cedula, String nombres, String apellidos, String telefono, String direccion,String correo, String password) {
        boolean exito = false;
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
                p.setString(6, direccion);
                p.setString(7, direccion);
                int m = p.executeUpdate();
                if (m > 0) {
                    exito = true;
                }
            }
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }
        return exito;
    }

    public ResultSet consultarIngenieros() {
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conector.getConexion().createStatement();
            rs = st.executeQuery("select *FROM  ingenieros ;");
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet consultaIngeniero(int cedula) {
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conector.getConexion().createStatement();
            rs = st.executeQuery("select * FROM  ingenieros where cedula='" + cedula + "';");
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public ResultSet consultaIngenieroPorFases(String fase) {
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conector.getConexion().createStatement();
            rs = st.executeQuery("select nombres, apellidos,cedula FROM  responsablesfases r, ingenieros i where fase='" + fase + "'"
                    + "and r.Ingenieros_cedula = i.cedula;");
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    public boolean actualizarProyecto(String nombreAnterior,String nombreProyecto, String cliente,
            String direccion, String telefono, String correo, String fechaInicio,
            String fechaFin, boolean finalizado) {
         System.out.println("esta "+nombreProyecto+" "+cliente+" "+direccion+" "+telefono+" "
        +correo+" "+fechaFin+" "+fechaFin+" "+nombreAnterior);
        boolean registro = false;

        String sql = "UPDATE datosproyectos SET nombreProyecto='" + nombreProyecto 
                + "',cliente='" + cliente + "',direccion='" + direccion + "'"
                + ",telefono='" + telefono+ "'"
                + ",correo='" + correo + "',fechaInicio='"+fechaInicio+"'"
                +",fechaFin='"+fechaFin+"'"+ ",finalizado="+finalizado+""
                + " WHERE nombreProyecto='" + nombreAnterior + "';";
        System.out.println(sql);
        PreparedStatement ps;
        try {
            ps = conector.getConexion().prepareStatement(sql);
            int p = ps.executeUpdate();
            if (p > 0) {
                registro = true;

            }
        } catch (SQLException ex) {

        }

        return registro;
    }

    public boolean actualizarIngeniero(int nuevaCedula, int cedulaAnterior, String nombres, 
            String apellidos, String telefono, String direccion,String correo, String password) {
        boolean registro = false;

        String sql = "UPDATE ingenieros SET cedula=" + nuevaCedula + " ,nombres='" + nombres + "',"
                + " apellidos='" + apellidos + "',telefono='" + telefono + "' ,direccion='" + direccion + "'"
                +" ,correo='" + correo + "'"+ " ,password='" + password + "'"
                +" WHERE cedula='" + cedulaAnterior + "';";
        
        PreparedStatement ps;
        try {
            ps = conector.getConexion().prepareStatement(sql);
            int p = ps.executeUpdate();
            if (p > 0) {
                registro = true;

            }
        } catch (SQLException ex) {

        }

        return registro;
    }

    public boolean eliminarProyecto(String nombre) {
        boolean eliminado = false;
        String sql = "DELETE  from datosproyectos where nombreProyecto ='" + nombre + "';";
        PreparedStatement ps;
        try {
            ps = conector.getConexion().prepareStatement(sql);
            int p = ps.executeUpdate();
            if (p > 0) {
                eliminado = true;

            }
        } catch (SQLException ex) {

        }

        return eliminado;

    }

    public boolean eliminarIngeniero(int cedula) {
        boolean eliminado = false;
        String sql = "DELETE  from ingenieros where cedula ='" + cedula + "';";
        PreparedStatement ps;
        try {
            ps = conector.getConexion().prepareStatement(sql);
            int p = ps.executeUpdate();
            if (p > 0) {
                eliminado = true;

            }
        } catch (SQLException ex) {

        }

        return eliminado;

    }
}

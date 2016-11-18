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
 * @author freddy
 */
public class CRUD_Fase {

    public boolean insertarFase(String fechaInicio, String fechaFin, String nombreFase, String proyecto) {
        boolean exito = false;
        System.out.println(fechaInicio + " " + fechaFin + " " + nombreFase + " " + proyecto);
        try {
            Statement st = conector.getConexion().createStatement();
            ResultSet rs = st.executeQuery("select true FROM  fases  where nombreFase='" + nombreFase + "'"
                    + "                     and proyecto='" + proyecto + "'");
            if (rs.next()) {
                exito = actualizarFase(fechaInicio, fechaFin, nombreFase, proyecto);
            } else {
                PreparedStatement p = Sentencias.getInsertarFase();
                p.setString(1, fechaInicio);
                p.setString(2, fechaFin);
                p.setString(3, nombreFase);
                p.setString(4, proyecto);
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

    public boolean actualizarFase(String fechaInicio, String fechaFin, String nombreFase, String proyecto) {
        boolean actualizado = false;
        String sql = "UPDATE fases SET fechaInicio='" + fechaInicio
                + "',fechaFin='" + fechaFin + "',nombreFase='" + nombreFase + "'"
                + ",proyecto='" + proyecto + "'"
                + " WHERE nombreFase='" + nombreFase + "' and  proyecto='" + proyecto + "';";
        System.out.println(sql);
        PreparedStatement ps;
        try {
            ps = conector.getConexion().prepareStatement(sql);
            int p = ps.executeUpdate();
            if (p > 0) {
                actualizado = true;

            }
        } catch (SQLException ex) {

        }
        return actualizado;
    }

    public boolean actualizarEstadoFase(float porcentajeFase, String Observaciones, boolean terminado, String nombreFase, String proyecto) {
        boolean actualizado = false;
        String sql = "UPDATE fases SET porcentajeFase=" + porcentajeFase + ",Observaciones='"
                + Observaciones + "',terminado=" + terminado
                + " WHERE nombreFase='" + nombreFase + "' and  proyecto='" + proyecto + "';";
        System.out.println(sql);
        PreparedStatement ps;
        try {
            ps = conector.getConexion().prepareStatement(sql);
            int p = ps.executeUpdate();
            if (p > 0) {
                actualizado = true;

            }
        } catch (SQLException ex) {

        }
        return actualizado;
    }

    public ResultSet consultarFase(String nombreFase, String proyecto) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT porcentajeFase, Observaciones, terminado,"
                    + "fechaInicio,fechaFin from fases"
                    + " WHERE nombreFase='" + nombreFase + "' and proyecto ='" + proyecto + "';";
            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;

    }
    
    
    public ResultSet consultaFasesProyecto( String proyecto) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT nombreFase from fases WHERE proyecto='"+proyecto+"'";
            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;

    }
}

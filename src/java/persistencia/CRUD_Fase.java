/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package persistencia;

import ComponentesBD.conector;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author freddy
 */
public class CRUD_Fase {
      public boolean insertarNuevoIngeneiro(String fechaInicio, String fechaFin, String nombreFase, String proyecto) {
        boolean exito = false;
       
        try {
            Statement st = conector.getConexion().createStatement();
            ResultSet rs = st.executeQuery("select cedula FROM  ingenieros where nombreFase='" + nombreFase + "'"
                    + "and proyecto'"+proyecto+"'");
            if (rs.next()) {
//                JOptionPane.showMessageDialog(null, "Proyecto Ya esta registrado");
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
}

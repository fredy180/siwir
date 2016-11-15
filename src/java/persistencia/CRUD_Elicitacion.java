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
public class CRUD_Elicitacion {

    public boolean insertarNuevaElicitacion(String proyecto, String tecnica, String fecha, String instrumento, int responsable) {
        boolean exito = false;
        System.out.println(proyecto + " " + tecnica + " " + fecha + " " + instrumento + " " + responsable);
        try {
            Statement st = conector.getConexion().createStatement();

            PreparedStatement p = Sentencias.getInsertarNuevaElicitacion();
            p.setString(1, proyecto);
            p.setString(2, tecnica);
            p.setString(3, fecha);
            p.setString(4, instrumento);
            p.setInt(5, responsable);
            p.setString(6, "");
            int m = p.executeUpdate();
            if (m > 0) {
                exito = true;
            }

        } catch (Exception ex) {
        }
        return exito;
    }

    public ResultSet consultaElicitaciones() {
        Statement st = null;
        ResultSet rs = null;
        try {
            st = conector.getConexion().createStatement();
            rs = st.executeQuery("select * FROM  elicitacion ;");
        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}

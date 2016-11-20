/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package persistencia;

import ComponentesBD.conector;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author freddy
 */
public class IniciaSesion {
    public ResultSet condustaUsuario(int cedula, String password) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "select tipoUsuario from ingenieros where cedula ="+cedula+" and password ='"+password+"';";
           System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;

    }
}

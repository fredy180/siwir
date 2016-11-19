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
public class CRUD_Responsable {
    public boolean insertarFase(String cedulaResponsables, String proyecto, String nombreFase) {
        boolean exito = false;
        
        try {
            Statement st = conector.getConexion().createStatement();
//            ResultSet rs = st.executeQuery(");
//            if (rs.next()) {
//               
//            } else {
                PreparedStatement p = Sentencias.getIinsertarResponsable();
                p.setString(1, cedulaResponsables);
                p.setString(2, proyecto);
                p.setString(3, nombreFase);
                int m = p.executeUpdate();
                if (m > 0) {
                    exito = true;
                }
//            }
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }
        return exito;
    }
    public ResultSet consultaResponsableProyecto(String nombreFase, String proyecto) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT cedula, nombres, apellidos from ingenieros i, responsablefases r" +
            " where r.proyecto='"+proyecto+"' and r.nombreFase='"+nombreFase+"' and " +" i.cedula=r.cedulaResponsables;";
            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
            Logger.getLogger(CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;

    }
    

    
}

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

    
}

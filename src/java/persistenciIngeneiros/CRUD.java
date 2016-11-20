/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistenciIngeneiros;

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
public class CRUD {

    public ResultSet consultaActividad(String nombreFase) {
        String sql = "select idRegistroElicitacion ,r.proyecto,fechaAplicacion ,urlResultados "
                + "from   fases s ,registrosfaseelicitacion r where s.terminado=false and"
                + " s.proyecto = r.proyecto and s.nombreFase='" + nombreFase + "'";

        Statement st = null;
        ResultSet rs = null;
        try {

            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
            Logger.getLogger(persistencia.CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;

    }
    
    public ResultSet consultaPorId(String nombreFase,int idRegistroElicitacion) {
        String sql = "select idRegistroElicitacion ,r.proyecto,fechaAplicacion ,"
                + "urlResultados ,Observaciones,instrumento from   fases s ,registrosfaseelicitacion r"
                + " where s.terminado=false and s.proyecto = r.proyecto and "
                + "s.nombreFase='"+nombreFase+"' and idRegistroElicitacion="+idRegistroElicitacion+"";

        Statement st = null;
        ResultSet rs = null;
        try {

            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
            Logger.getLogger(persistencia.CRUD.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;

    }
}

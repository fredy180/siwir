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

/**
 *
 * @author freddy
 */
public class CRUD_Actividad {
    public boolean insertarActividadFase(String proyecto,String tecnica,String fechaAplicacion,String istrumento,int cedulaResponsable) {
        boolean exito = false;
//        System.out.println(fechaInicio + " " + fechaFin + " " + nombreFase + " " + proyecto);
        try {
           
          
                PreparedStatement p = Sentencias.getIinsertarActividadElicitacion();
                p.setString(1, proyecto);
                p.setString(2, tecnica);
                p.setString(3, fechaAplicacion);
                 p.setString(4, istrumento);
                p.setInt(5, cedulaResponsable);
                int m = p.executeUpdate();
                if (m > 0) {
                    exito = true;
                }
          
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }
        return exito;
    }
    public boolean insertarActividadEspesisificacion(int version,int cedulaResponsable,int verificador,String proyecto) {
        boolean exito = false;
//        System.out.println(fechaInicio + " " + fechaFin + " " + nombreFase + " " + proyecto);
        try {
                PreparedStatement p = Sentencias.getIinsertarActividadEspesificacion();
                p.setInt(1, version);
                p.setInt(2, cedulaResponsable);
                p.setInt(3, verificador);
                p.setString(4, proyecto);
                int m = p.executeUpdate();
                if (m > 0) {
                    exito = true;
                }
          
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }
        return exito;
    }
    public boolean insertarActividadEspesisianalisis(String modelo,int responsable,String proyecto,String fechaAsignado) {
        boolean exito = false;
//        System.out.println(fechaInicio + " " + fechaFin + " " + nombreFase + " " + proyecto);
        try {
                PreparedStatement p = Sentencias.getIinsertarActividadAnalisis();
                p.setString(1, modelo);
                p.setInt(2, responsable);
                p.setString(3, proyecto);
                p.setString(4, fechaAsignado);
                int m = p.executeUpdate();
                if (m > 0) {
                    exito = true;
                }
          
        } catch (Exception ex) {
//            JOptionPane.showMessageDialog(null, "Nose Pueden Registrar Proyecto");
        }
        return exito;
    }
    
    public ResultSet consultarActividesFaseElicitacion(String proyecto) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT idRegistroElicitacion, tecnica,fechaAplicacion,instrumento,"
                    + "cedulaResponsable FROM registrosfaseelicitacion where proyecto='"+proyecto+"';";
//            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
           
        }
        return rs;

    }
     public ResultSet consultarActividesFaseAnali(String proyecto) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT idRegistroAnalisi, modelo,responsable,fechaAsignado"
                    +" FROM registrosfaseanalisis where proyecto='"+proyecto+"';";
            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
           
        }
        return rs;

    }
    
    public ResultSet consultarActividesFaseEspesisificacione(String proyecto) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT version, cedulaResponsable,verificador, cedulaResponsable FROM registrofasesespecificacion where proyecto='"+proyecto+"';";
//            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
           
        }
        return rs;

    }
    public ResultSet consultarActividFaseElicitacion(String proyecto, int idRegistroElicitacion) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT idRegistroElicitacion, tecnica,fechaAplicacion,instrumento ,"
                    + "cedulaResponsable FROM registrosfaseelicitacion where proyecto='"+proyecto+"'"
                    + " and idRegistroElicitacion="+idRegistroElicitacion+";";
//            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
           
        }
        return rs;

    }
    
     public boolean actualizarActividadElicitacion(int idRegistroElicitacion, String proyecto,String tecnica, String fechaAplicacion, String instrumento, int cedulaResponsable) {
        boolean actualizado = false;
        String sql = "UPDATE registrosfaseelicitacion SET tecnica='" + tecnica + "',fechaAplicacion='"
                + fechaAplicacion + "', instrumento='"+instrumento+"',cedulaResponsable=" + cedulaResponsable
                + " WHERE idRegistroElicitacion=" + idRegistroElicitacion + " and  proyecto='" + proyecto + "';";
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
     
     public boolean eliminarActividaElicitacion(int idRegistroElicitacion, String proyecto ) {
        boolean eliminado = false;
        String sql = "DELETE  from registrosfaseelicitacion where proyecto ='" + proyecto + "'"
                + "and idRegistroElicitacion="+idRegistroElicitacion+";";
//         System.out.println(sql);
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
     
     public ResultSet consultarActividFaseEspesificacion(String proyecto, int version) {
        Statement st = null;
        ResultSet rs = null;
        try {
            String sql = "SELECT * FROM registrofasesespecificacion where proyecto='"+proyecto+"'"
                    + " and version="+version+";";
//            System.out.println(sql);
            st = conector.getConexion().createStatement();
            rs = st.executeQuery(sql);

        } catch (SQLException ex) {
           
        }
        return rs;

    }
     public boolean actualizarActividadSpesificacion(int anteriroVersion, int version, int verificador, String proyecto,int cedulaResponsable) {
        boolean actualizado = false;
        String sql = "UPDATE registrofasesespecificacion SET version=" + version + ",verificador="
                + verificador + ",cedulaResponsable=" + cedulaResponsable
                + " WHERE anteriroVersion=" + anteriroVersion + " and  proyecto='" + proyecto + "';";
//        System.out.println(sql);
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
     
}

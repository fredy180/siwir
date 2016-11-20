/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistencia;

import ComponentesBD.conector;
import java.sql.PreparedStatement;

/**
 *
 * @author Ingeniero Jean C
 */
public class Sentencias {
//    Coconexion = Singleto.getConexion("localhost", "mydb","root","root"); 

    private static PreparedStatement insertarDatoProyecto = null;
    private static PreparedStatement insertarDatoIngeneiro = null;
//    private static PreparedStatement insertarDatoIlicitacion = null;
    private static PreparedStatement insertarfase = null;
    private static PreparedStatement insertarResponsables = null;
 private static PreparedStatement insertarActividadElicitacion = null;
 private static PreparedStatement insertarActividadEspecificasion = null;
 private static PreparedStatement insertarActividaAnalis = null;
    public static PreparedStatement InsertarNuevoProyecto() throws Exception {
        if (insertarDatoProyecto == null) {
            insertarDatoProyecto = conector.getConexion().prepareStatement("INSERT"
                    + " INTO datosproyectos(nombreProyecto,cliente,direccion,"
                    + "telefono,correo,fechaInicio,fechaFin,finalizado)VALUES"
                    + " (?,?,?,?,?,?,?,?)");
        }
        return insertarDatoProyecto;
    }

    public static PreparedStatement InsertarNuevoIngeniero() throws Exception {
        if (insertarDatoIngeneiro == null) {
            System.out.println("ertetertertretertretertertertret");
            insertarDatoIngeneiro = conector.getConexion().prepareStatement("INSERT"
                    + " INTO ingenieros(cedula,nombres,apellidos,"
                    + "telefono,direccion,correo,tipoUsuario,password)VALUES (?,?,?,?,?,?,?,?)");
        }

        return insertarDatoIngeneiro;
    }

    public static PreparedStatement getInsertarFase() throws Exception {
        if (insertarfase == null) {

            insertarfase = conector.getConexion().prepareStatement("INSERT"
                    + " INTO fases(fechaInicio,fechaFin,nombreFase,proyecto)"
                    + "VALUES (?,?,?,?)");
        }

        return insertarfase;
    }

    public static PreparedStatement getIinsertarResponsable() throws Exception {
        if (insertarResponsables == null) {

            insertarResponsables = conector.getConexion().prepareStatement("INSERT"
                    + " INTO responsablefases(cedulaResponsables,proyecto,nombreFase)"
                    + "VALUES (?,?,?)");
        }

        return insertarResponsables;
    }
    public static PreparedStatement getIinsertarActividadElicitacion() throws Exception {
        if (insertarActividadElicitacion == null) {

            insertarActividadElicitacion = conector.getConexion().prepareStatement("INSERT"
                    + " INTO registrosfaseelicitacion(proyecto,tecnica,fechaAplicacion,instrumento,cedulaResponsable)"
                    + "VALUES (?,?,?,?,?)");
        }

        return insertarActividadElicitacion;
    }
    public static PreparedStatement getIinsertarActividadEspesificacion() throws Exception {
        if (insertarActividadEspecificasion == null) {

            insertarActividadEspecificasion = conector.getConexion().prepareStatement("INSERT"
                    + " INTO registrofasesespecificacion(version,cedulaResponsable,verificador,proyecto)"
                    + "VALUES (?,?,?,?)");
        }

        return insertarActividadEspecificasion;
    }
    public static PreparedStatement getIinsertarActividadAnalisis() throws Exception {
        if (insertarActividaAnalis == null) {

            insertarActividaAnalis = conector.getConexion().prepareStatement("INSERT"
                    + " INTO registrosfaseanalisis(modelo,responsable,proyecto,fechaAsignado)"
                    + "VALUES (?,?,?,?)");
        }

        return insertarActividaAnalis;
    }

}

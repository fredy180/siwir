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
     private static PreparedStatement insertarDatoIlicitacion = null;
      private static PreparedStatement insertarfase = null;

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

}

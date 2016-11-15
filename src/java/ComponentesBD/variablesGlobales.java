/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ComponentesBD;

/**
 *
 * @author freddy
 */
public class variablesGlobales {

    public static String proyecto;
    public static int idIngeniero;
    public static int idElicitacion;

    public static void setNombreProyecto(String nombre) {
        proyecto = nombre;

    }

    public static void setIdIngniero(int cedula) {
        idIngeniero = cedula;
    }

    public static void setElicitacion(int Elicitacion) {
        idElicitacion = Elicitacion;
    }

    public static String getProyecto() {
        return proyecto;
    }

    public static int getIdIngeniero() {
        return idIngeniero;
    }

    public static int getElicitacion() {
        return idElicitacion;
    }

}

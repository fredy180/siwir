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

    private static String proyecto;
    private static int idIngeniero;
    private static int idElicitacion;
    private static String fase;

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
    public static String getFase() {
        return fase;
    }
    public static void setFase(String nombreFase) {
        fase=nombreFase;
    }

}

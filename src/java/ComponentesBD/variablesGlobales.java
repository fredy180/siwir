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
    private static int idactividaElicitacion;
    public static int version;

    public static int getVersion() {
        return version;
    }

    public static void setVersion(int version) {
        variablesGlobales.version = version;
    }
    

    public static void setNombreProyecto(String nombre) {
        proyecto = nombre;

    }
     public static void setIdactividaElicitacion(int id) {
        idactividaElicitacion = id;

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
    public static int getIdActividadElicitacion() {
        return idactividaElicitacion;
    }

}

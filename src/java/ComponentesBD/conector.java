/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ComponentesBD;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Ingeniero Jean C
 */
public class conector {

    private static Connection conexion = null;

    public static Connection getConexion() {
        return conexion;
    }

    public static Connection ConectarMySQL(String servidorNombre, String nombreBD, String usuario, String password) {
        conexion = null;
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            String url = "jdbc:mysql://" + servidorNombre + "/" + nombreBD;
            conexion = DriverManager.getConnection(url, usuario, password);
            System.out.println("---Conexion exitosa--");

        } catch (Exception e) {
            System.out.println("Error al conectar con BD");
        }
        return conexion;
    }

}

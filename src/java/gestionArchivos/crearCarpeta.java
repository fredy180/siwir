/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package gestionArchivos;

import com.google.common.io.Files;
import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;

/**
 *
 * @author freddy
 */
public class crearCarpeta {
   public static void crearCarpeta(String proyecto){
        File directorio=new File("C:\\Users\\freddy\\Dropbox\\Ingenieria\\VIII\\NAMUEL\\ProyectoFinal\\"+proyecto); 
        
        directorio.mkdirs();
        
        System.out.println("creoa la carpeta");
        
    }
   public static void cambiarNombre(String proyecto, String nuevo){
        Path O = Paths.get("C:\\Users\\freddy\\Dropbox\\Ingenieria\\VIII\\NAMUEL\\ProyectoFinal\\"+proyecto); 
        
      Path D = Paths.get("C:\\Users\\freddy\\Dropbox\\Ingenieria\\VIII\\NAMUEL\\ProyectoFinal\\"+nuevo);
       // Files.copy(O,D,StandardCopyOption.REPLACE_EXISTING);
        System.out.println("creoa la carpeta");
        
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package code;

import java.io.File;

/**
 *
 * @author pc
 */
public class Main {
    public static void main(String[] args) {
        String ruta = "C:/Users/pc/Documents/NetBeansProjects/AnalizadorLexico/src/code/Lexico.flex";
        Generador(ruta);
    }
    
    public static void Generador(String ruta){
        File archivo = new File (ruta);
        JFlex.Main.generate(archivo);
        
    }
}

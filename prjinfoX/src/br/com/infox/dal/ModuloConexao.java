/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.infox.dal;
import java.sql.*;
import javax.swing.JOptionPane;

/**
 *
 * @author edivan
 */
public class ModuloConexao {
    // Metodo responsável por estabeler a conexão com o banco
    public static  Connection conector(){
        java.sql.Connection conexao = null; 
        // a linha abaixo "chama" o driver
        String driver = "com.mysql.jdbc.Driver";
        // Armazenando informações referente ao banco
        String url = "jdbc:mysql://192.168.109.109:3306/dbinfox";
        String user = "suporte";
        String password = "123";
        // Estabelecendo a conexão com o banco de dados;
        try {
             Class.forName(driver);
             conexao = DriverManager.getConnection(url, user, password);
             return conexao;
        } catch (Exception e) {
            // a linha abaixo derve de apoiio para esclarecer o erro
            //System.out.println(e);
            
            return null;
        }
        
    }
    
}

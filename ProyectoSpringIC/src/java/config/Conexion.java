/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author hgosa
 */
public class Conexion {
    public DriverManagerDataSource Conectar(){
        
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://127.0.0.1:3307/mingesoIC");
        dataSource.setUsername("root");
        dataSource.setPassword("TBD20191");
        return dataSource;
    }
}

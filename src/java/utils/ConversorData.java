/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ConversorData;

import java.sql.Date;
import java.util.Calendar;

/**
 *
 * @author Maria
 */
public class ConversorData {
    public class conversorData {
        public  java.sql.Date conv(Calendar d){
        java.sql.Date data = new java.sql.Date(d.getTime().getTime());
           return data; 
}
    }
}
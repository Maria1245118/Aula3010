/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import utils.Conexao;

/**
 *
 * @author Maria
 */
public class Carro {
    private int id; 
    private String placa;
    private String marca;
    private String modelo;
    private int km;
    private String acessorios;


   public boolean salvar(){
       String sql = "insert into carro(id,placa,marca,modelo,";
              sql +="km,acessorios)";
              sql += "values(?,?,?,?,?,?)";
       Connection con = Conexao.conectar();
       
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.placa);
           stm.setString(2, this.marca);
           stm.setString(3, this.modelo);
           stm.setInt(4, this.km);
           stm.setString(5, this.acessorios);
           stm.setInt(6, this.id);
           stm.execute();           
        }catch (SQLException ex) {
        System.out.println("Erro: " + ex.getMessage() + sql);
           return false;
       }        
       return true;
   }
   
   public boolean alterar(){
       Connection con = Conexao.conectar();
       String sql = "update carro set ";
              sql +="placa = ?, ";
              sql +="marca = ?, ";
              sql +="modelo = ?,";
              sql +="km = ?, ";
              sql +="acessorios = ? ";
              sql +=" where id = ?";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.placa);
           stm.setString(2, this.marca);
           stm.setString(3, this.modelo);
           stm.setInt(4, this.km);
           stm.setString(5, this.acessorios);
           stm.setInt(6, this.id);
           stm.execute();           
       } catch (SQLException ex) {
        System.out.println("Erro: " + ex.getMessage() + sql);
         return false;
       }        
          return true;
   }
    public boolean excluir(){
       Connection con = Conexao.conectar();
       String sql = "delete from carro ";
              sql +=" where id = ?";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setInt(1, this.id);
           stm.execute();           
        }catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage() + sql);
           return false;
        }
        return true;
    }
    public Carro consultar(String placa){
      Connection con = Conexao.conectar();
      String sql = "select id, placa, marca, modelo, km, acessorios"
                 + " from carro where placa = ?";
         Carro carro = null;
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, placa);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
             carro = new Carro();
             carro.setId(id);
             carro.setPlaca(rs.getString("placa"));
             carro.setMarca(rs.getString("marca"));
             carro.setModelo(rs.getString("modelo"));
             carro.setKm(rs.getInt("km"));
             carro.setAcessorios(rs.getString("acessorios"));
           }
           
       } catch (SQLException ex) {
        System.out.println("Erro: " + ex.getMessage() + sql);
       }      
        return carro;  
   }
  
    public Carro consultar(int id){
        Connection con = Conexao.conectar();
        String sql = "select id, placa, marca, modelo, km, acessorios"
                   + " from carro where id = ?";
        Carro carro = null;
        try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setInt(1, id);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
             carro = new Carro();
             carro.setId(id);
             carro.setPlaca(rs.getString("placa"));
             carro.setMarca(rs.getString("marca"));
             carro.setModelo(rs.getString("modelo"));
             carro.setKm(rs.getInt("km"));
             carro.setAcessorios(rs.getString("acessorios"));
        }
           
        } catch (SQLException ex) {
                System.out.println("Erro: " + ex.getMessage() + sql);
        }      
        return carro;  
        }

    @Override
    public String toString() {
        return "Carro{" + "id=" + id + ", placa=" + placa +
                ", marca=" + marca + ", modelo=" + modelo +
                ", km=" + km + ", acessorios=" + acessorios + '}';
    }    
   
    public List<Carro> consultar(){
        List<Carro> lista = new ArrayList<>();
      
        Connection con = Conexao.conectar();
        String sql = "select id, placa, marca, modelo, km, acessorios"
                   + " from carro";
      
        try {
           PreparedStatement stm = con.prepareStatement(sql);
           ResultSet rs = stm.executeQuery();
           
           while(rs.next()){
             Carro carro = new Carro();
             carro.setId(rs.getInt("id"));
             carro.setPlaca(rs.getString("placa"));
             carro.setMarca(rs.getString("marca"));
             carro.setModelo(rs.getString("modelo"));
             carro.setKm(rs.getInt("km"));
             carro.setAcessorios(rs.getString("acessorios"));
             
             lista.add(carro);
           }
           
           } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage() + sql);
           }      
    return lista;

    }
    public int getId() {
       return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public String getPlaca() {
        return placa;
    }

    public void setPlaca(String placa) {
        this.placa = placa;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public int getKm() {
        return km;
    }

    public void setKm(Integer km) {
        this.km = km;
    }

    public String getAcessorios() {
        return acessorios;
    }

    public void setAcessorios(String acessorios) {
        this.acessorios = acessorios;
    }

    
}

    
    





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


/**
 *
 * @author entra21
 */
public class Cliente {
    private int id;
    private String cpf;
    private String nome;
    private String email;
    private int numeroCartao;
    private String fone;
   
    
    public boolean salvar(){
       String sql = "insert into cliente(cpf,nome, numeroCartao, email,fone)";
                  sql += "values(?,?,?,?,?)";
       Connection con = Conexao.conectar();
       
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.cpf);
           stm.setString(2, this.nome);
           stm.setInt(3, this.numeroCartao);
           stm.setString(4, this.email);
           stm.setString(5, this.fone);
           stm.execute();           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage()+ sql);
           return false;
       }        
       return true;
   }

    public boolean alterar(){
       Connection con = Conexao.conectar();
       String sql = "update cliente set ";
              sql +="cpf = ?,";
              sql +="nome = ?,";
              sql +="numeroCartao = ?,";
              sql +="email = ?,";
              sql +="fone =?" ;
              sql +=" where id = ?";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           
           stm.setString(1, this.cpf);
           stm.setString(2, this.nome);
           stm.setInt(3, this.numeroCartao);
           stm.setString(4, this.email);
           stm.setString(5, this.fone);
           stm.setInt(6,this.id);
           stm.execute();           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage()+ sql);
           return false;
       }        
       return true;
   } 
    
    public List <Cliente> consultar(){
      List<Cliente> lista = new ArrayList<>();
      Connection con = Conexao.conectar();
      String sql = "select id,cpf, nome, numeroCartao,email,fone "
              + "from cliente";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           ResultSet rs = stm.executeQuery();
           
           while(rs.next()){
             Cliente cliente = new Cliente();
             cliente.setId(rs.getInt("id"));
             cliente.setCpf(rs.getString("cpf"));
             cliente.setNome(rs.getString("nome"));
             cliente.setNumeroCartao(rs.getInt("numeroCartao")); 
             cliente.setEmail(rs.getString("email"));
             cliente.setFone(rs.getString("fone"));
             
             lista. add(cliente);
           }
           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage()+ sql);
       }      
             return lista;  
   }  
    public Cliente consultar(String cpf){
        Connection con = Conexao.conectar();
        String sql = "select cpf, nome,numeroCartao,email,fone, id";
        Cliente cliente = null;
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, cpf);
           ResultSet rs = stm.executeQuery();
           if(rs.next()){
             cliente  = new Cliente();
             cliente.setId(rs.getInt("id"));
             cliente.setCpf(rs.getString("cpf"));
             cliente.setNome(rs.getString("nome"));
             cliente.setEmail(rs.getString("email"));
             cliente.setNumeroCartao(rs.getInt("numeroCartao"));
             cliente.setFone(rs.getString("fone"));
            
           }
           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage()+ sql);
       }       
        return cliente ;  
    }
      
    public boolean excluir(){
       Connection con = Conexao.conectar();
       String sql = "delete from cliente ";
              sql +=" where cpf = ?";
       try {
           PreparedStatement stm = con.prepareStatement(sql);
           stm.setString(1, this.cpf);
           stm.execute();           
       } catch (SQLException ex) {
           System.out.println("Erro: " + ex.getMessage()+sql);
           return false;
       }        
       return true;
   }
  
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getNumeroCartao() {
        return numeroCartao;
    }

    public void setNumeroCartao(int numeroCartao) {
        this.numeroCartao = numeroCartao;
    }

    public void setId(int id) {
        this.id = id;
    }
    public int getId() {
        return id;
    }
    public void setFone(String fone) {
        this.fone = fone;
    }

    public String getFone() {
        return fone;
    }

 
    }
      



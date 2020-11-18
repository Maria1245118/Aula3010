/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.sql.Connection;
import java.sql.Date;
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
public class Locacao {
    private int id;
      private int idcarro;
      private String cpfcliente;
      private Date data;
      private Date dataentrega;
      private Date datadevolucao; 
      
      public ResultSet consultarInner(){
           Connection con = Conexao.conectar(); 
           ResultSet rs = null;
           String sql = "select l.id, l.idcarro,c.placa, c.modelo, " +  
                        "        l.cpfcliente,cli.nome, l.data, " +
                        "        l.dataenterga, l.datadevolucao " +
                        "from locacao l , carro c, cliente cli "  +
                        "where l.idcarro = c.id " +
                        "and l.cpfcliente = cli.cpf";
           try {
               PreparedStatement stm = con.prepareStatement(sql);
                     rs = stm.executeQuery();
            } catch (SQLException ex){
                
            }
            return rs;
        }
      

      public List<Locacao> consultar(String cpfcliente){
          Carro carro = new Carro();
          carro = carro.consultar(cpfcliente);
            List<Locacao> lista = new ArrayList<>();
            Connection con = Conexao.conectar();     
            String sql = "select id, idcarro, cpfcliente, data, dataentrega, datadevolucao";
                sql += " from locacao where idcarro = ?";
            try {
              PreparedStatement stm = con.prepareStatement(sql);
              stm.setInt(1, idcarro);
              ResultSet rs = stm.executeQuery();

            while(rs.next()){
                Locacao locacao = new Locacao();
                locacao.setId(rs.getInt("id"));
                locacao.setIdcarro(idcarro);
                locacao.setCpfcliente(cpfcliente);
                locacao.setData(rs.getDate("data"));
                locacao.setDataentrega(rs.getDate("dataentrega"));
                locacao.setDatadevolucao(rs.getDate("datadevolucao"));
                lista.add(locacao);
            }
            } catch (SQLException ex) {
              System.out.println("Erro: " + ex.getMessage()+ sql);
            }     
            return lista;
            }
        public boolean salvar(){
            Connection con = Conexao.conectar();
            String sql = "insert into locacao(idcarro,cpfcliente,"
                   +"data,dataentrega,datadevolucao)";
                   sql += "values(?,?,?,?,?";
            try {
              PreparedStatement stm = con.prepareStatement(sql);
              stm.setInt(1, this.idcarro);
              stm.setString(2, this.cpfcliente);
              stm.setObject(3, this.data);
              stm.setObject(4, this.dataentrega);
              stm.setObject(5, this.datadevolucao);
              stm.execute();
          } catch (SQLException ex) {
              System.out.println("Erro: " + ex.getMessage()+ sql);
          }
            return true;
        }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdcarro() {
        return idcarro;
    }

    public void setIdcarro(int idcarro) {
        this.idcarro = idcarro;
    }

    public String getCpfcliente() {
        return cpfcliente;
    }

    public void setCpfcliente(String cpfcliente) {
        this.cpfcliente = cpfcliente;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public Date getDataentrega() {
        return dataentrega;
    }

    public void setDataentrega(Date dataentrega) {
        this.dataentrega = dataentrega;
    }

    public Date getDatadevolucao() {
        return datadevolucao;
    }

    public void setDatadevolucao(Date datadevolucao) {
        this.datadevolucao = datadevolucao;
    }

    
        
}    
   


        
        
    




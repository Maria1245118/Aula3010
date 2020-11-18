<%-- 
    Document   : recebedadoslocacao
    Created on : 11/11/2020, 08:32:10
    Author     : Maria
--%>

<%@page import="modelos.Cliente"%>
<%@page import="modelos.Carro"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="java.sql.Date"%>
<%@page import="modelos.Locacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Locação de Carro</h1>
        <%
        // recebe os dados do HTML
        String id =request.getParameter("id");
        String idcarro =request.getParameter("idcarro");
        String cpfcliente = request.getParameter("cpfcliente");
        String data = request.getParameter("data");
        String dataentrega = request.getParameter("dataentrega");
        String datadevolucao = request.getParameter("datadevolucao");
        //Instancia locacao
        Locacao locacao = new Locacao();
        Carro carro = new Carro();
        carro = carro.consultar(Integer.parseInt(idcarro));
        locacao.setCarro(carro);
        
        Cliente cliente = new Cliente();
        cliente = cliente.consultar(cpfcliente);
        locacao.setCliente(cliente);
        
        locacao.setData(Date.valueOf(data));
        locacao.setDataentrega(Date.valueOf(dataentrega));
        locacao.setDatadevolucao(Date.valueOf(datadevolucao));
        
         if(locacao.salvar()){
              out.write("locacao registrada com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar locacao");
          }
          
        %>
        
    </body>
</html>

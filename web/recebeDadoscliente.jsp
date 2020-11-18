<%-- 
    Document   : recebeDadoscliente
    Created on : 11/11/2020, 09:24:09
    Author     : Maria
--%>

<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Locacar</h1>
         <hr/>
        <%
          //recebe os valores da tela HTML  
          String cpf = request.getParameter("cpf");
          String nome = request.getParameter("nome");
          String email = request.getParameter("email");
          Integer numeroCartao = Integer.parseInt(request.getParameter("numeroCartao"));
          String fone = request.getParameter("fone");
          
          
          //instancia o carro
          Cliente cliente = new Cliente();
          cliente.setCpf(cpf);
          cliente.setNome(nome);
          cliente.setEmail(email);
          cliente.setNumeroCartao(numeroCartao);
          cliente.setFone(fone);
          
          
          if(cliente.salvar()){
              out.write("Cliente salvo com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar cliente");
          }
          
        %>
    </body>
</html>

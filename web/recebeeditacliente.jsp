<%-- 
    Document   : recebeeditacliente
    Created on : 11/11/2020, 09:24:43
    Author     : Maria
--%>

<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita Cliente</title>
    </head>
    <body>
        <h1>Cliente editado</h1>
        <hr />
        <%
        //recebe os valores da tela HTML  
          String idcliente = request.getParameter("idcliente");
          String cpf = request.getParameter("cpf");
          String nome = request.getParameter("nome");
          String numeroCartao = request.getParameter("numeroCartao");
          String email = request.getParameter("email");
          String fone = request.getParameter("fone");
          
          //instancia o carro
          Cliente cliente = new Cliente();
          cliente.setId(Integer.parseInt(idcliente));
          cliente.setCpf(cpf);
          cliente.setNome(nome);
          cliente.setNumeroCartao(Integer.parseInt(numeroCartao));
          cliente.setEmail(email);
          cliente.setFone(fone);
          
          if(cliente.alterar()){
               out.write("Cliente alterado com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar cliente");
          }
          
        %>        
       
    </body>
</html>

<%-- 
    Document   : recebeDadosCarro
    Created on : 30/10/2020, 09:44:01
    Author     : Maria
--%>
<%@page import="modelos.Carro"%>
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
          String idcarro = request.getParameter("idcarro");
          String placa = request.getParameter("placa");
          String marca = request.getParameter("marca");
          String modelo = request.getParameter("modelo");
          String km = request.getParameter("km");
          String acessorios = request.getParameter("acessorios");
          
          
          //instancia o carro
          Carro carro = new Carro();
          carro.setId(Integer.parseInt(idcarro));
          carro.setPlaca(placa);
          carro.setModelo(modelo);
          carro.setMarca(marca);
          carro.setAcessorios(acessorios);
          carro.setKm(Integer.parseInt(km));

          if(carro.salvar()){
              out.write("Carro salvo com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar carro");
          }
          
        %>
    </body>
</html>

          

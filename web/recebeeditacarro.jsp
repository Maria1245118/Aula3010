<%-- 
    Document   : recebeeditacarro
    Created on : 06/11/2020, 09:36:46
    Author     : Maria
--%>

<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edita carro</title>
    </head>
    <body>
        <h1>Carro editado</h1>
        <hr />
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
          carro.setMarca(marca);
          carro.setModelo(modelo);          
          carro.setKm(Integer.parseInt(km));
          carro.setAcessorios(acessorios);          
          
          if(carro.alterar()){
               out.write("Carro alterado com sucesso");
          }
          else
          {
              out.write("Problemas ao salvar carro");
          }
          
        %>        
       
        
    </body>
</html>


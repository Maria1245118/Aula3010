<%-- 
    Document   : consultacarro
    Created on : 30/10/2020, 08:36:08
    Author     : Maria
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta carro</h1>
        <hr />
        <%
          Carro carro = new Carro();
          List<Carro> carros = carro.consultar();
        %>
        <table>
            <thead>
              <th>Id</th>
              <th>Placa</th>
              <th>Marca</th>
              <th>Modelo</th>
              <th>Km</th>
              <th>Acessorios</th>
              <th> Editar </th>
              <th> Excluir </th>
            </thead>
            <tbody>
                <%for(Carro c : carros) {%>
                <tr>
                    <td><% out.write(""+c.getId()); %></td>
                    <td><% out.write(c.getPlaca()); %></td>
                    <td><% out.write(c.getMarca()); %></td>
                    <td><% out.write(c.getModelo()); %></td>
                    <td><% out.write(""+c.getKm()); %></td>
                    <td><% out.write(c.getAcessorios()); %></td>
                    <td><%out.write("<a href=editarcarro.jsp?idcarro="+c.getId()+">Editar</a>");%></td>   
                    <td><%out.write("<a href=excluircarro.jsp?idcarro="+c.getId()+">Excluir</a>");%></td>

               </tr> 
           <%}%>
            </tbody>
        </table>
    </body>
</html>

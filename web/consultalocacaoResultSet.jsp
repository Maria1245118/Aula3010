<%-- 
    Document   : consultalocacaoResultSet
    Created on : 16/11/2020, 10:15:21
    Author     : Maria
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="modelos.Locacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          Locacao locacao = new Locacao();
          ResultSet rs = locacao.consultarInner();
        %>
        <h1>Hello World!</h1>
        <hr />
        <table>
            <thead>
               <th>id</th>
               <th>Placa</th>
               <th>Modelo</th>
               <th>Cpf</th>
               <th>Nome</th>
               <th>Data</th>
               <th>Data Retirada</th>
               <th>Data Devolucao</th>
            </thead>
            <tbody>
        <%while(rs.next()){%>
                <tr>
                <td><%out.write(rs.getString("id"));%></td>
                <td><%out.write(rs.getString("placa"));%></td>
                <td><%out.write(rs.getString("modelo"));%></td>
                <td><%out.write(rs.getString("cpfcliente"));%></td>
                <td><%out.write(rs.getString("nome"));%></td>
                <td><%out.write(rs.getString("data"));%></td>
                <td><%out.write(rs.getString("dataretirada"));%></td>
                <td><%out.write(rs.getString("datadevolucao"));%></td>
            </tr>
            <%}%>
        </tbody>
        </table>

    </body>
</html>

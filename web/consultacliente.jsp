<%-- 
    Document   : consultacliente
    Created on : 11/11/2020, 09:39:28
    Author     : Maria
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Consulta cliente</h1>
        <hr />
        <%
          Cliente clientes = new Cliente();
          List<Cliente>cliente = clientes.consultar();
        %>
        <table>
            <thead>
            <th>Id</th>
            <th>Cpf</th>
            <th>Nome</th>
            <th>NumeroCartão</th>
            <th>Email</th>
            <th>Fone</th>
            <th> Editar </th>
            <th> Excluir </th>
            </thead>
            <tbody>
                <% for(Cliente l: cliente) {%>
                <tr>
            <td><% out.write(""+l.getId()); %></td>
            <td><% out.write(l.getCpf()); %></td>
            <td><% out.write(l.getNome()); %></td>
            <td><% out.write(""+l.getNumeroCartao()); %></td>
            <td><% out.write(l.getEmail()); %></td>
            <td><% out.write(l.getFone()); %></td>
            <td><%out.write("<a href=editarcliente.jsp?idcliente="+l.getCpf()+">Editar</a>");%></td>   
            <td><%out.write("<a href=excluircliente.jsp?idcliente="+l.getCpf()+">Excluir</a>");%></td>
               </tr> 
           <%}%>
        </tbody>
        </table>
        
    </body>
</html>

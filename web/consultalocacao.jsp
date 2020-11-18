<%-- 
    Document   : consultalocacao
    Created on : 17/11/2020, 19:21:37
    Author     : Maria
--%>

<%@page import="java.util.List"%>
<%@page import="modelos.Locacao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
         <%
          List<Locacao> locacoes = null;
          String cpfcliente = request.getParameter("cpfcliente");
          if(cpfcliente != null){
          Locacao locacao = new Locacao();
          locacoes = locacao.consultar(cpfcliente);
          }
        %>
        <h1>Consulta Locação</h1>
        <hr />
        <form action="consultalocacao.jsp" method="POST">
            <label>Digite o cpf do cliente</label>
            <input type="text" name="cpfcliente" />
          
            <input type="submit" value="Consultar" />
            <hr />
            <table>
                <thead>
                <th>Id</th> 
                <th>Carro</th>
                <th>cliente</th>
                <th>Data</th>
                <th>Data Retirada</th>
                </thead>
                <tbody>
        <%for(Locacao loc: locacoes){%>
                <tr>
                <td><%out.write(""+loc.getId());%></td>
                <td><%out.write(""+loc.getIdcarro());%></td>
                <td><%out.write(loc.getCpfcliente());%></td>
                <td><%out.write(String.valueOf(loc.getData()));%></td>
                <td><%out.write(String.valueOf(loc.getDataentrega()));%></td>
                </tr>
                <%}%>
                </tbody>    
            </table>
            
        </form>
        
    </body>
</html>

<%-- 
    Document   : editarcliente
    Created on : 11/11/2020, 09:22:32
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
        <h1>Editar Clientes</h1>
        <hr />
        <%
            String cpf = request.getParameter("idcpf");
            Cliente l = new Cliente();
            if(cpf != null){
            l = l.consultar(cpf);
            }
        %>
        <form action="recebeeditacliente.jsp" method="POST">
            <label> Cpf </label>
            <input type="text" name="cpf" 
                readonly="true"
                value="<%out.write(""+l.getCpf());%>"/>
            <br />
            <label>Nome</label>
            <input type="text" name="nome" 
                value="<%out.write(l.getNome());%>" />
            
            <br />
            <label>NumeroCartao</label>
            <input type="text" name="numerocartao" 
                value="<%out.write(l.getNumeroCartao());%>" />
            
            <br />
            <label>Email</label>
            <input type="text" name="email" 
                value="<%out.write(l.getEmail());%>" />
            
            <br />
            <label>Fone</label>
            <input type="text" name="fone" 
                value="<%out.write(l.getFone());%>" />
            
            <hr />
            <input type="submit" value="Alterar" />
        </form>
    </body>
    </body>
</html>

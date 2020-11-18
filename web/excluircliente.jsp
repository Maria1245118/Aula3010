<%-- 
    Document   : excluircliente
    Created on : 11/11/2020, 09:23:28
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
        <h1>Exclusão de Cliente</h1>
        <hr/>
        <%
            String cpf = request.getParameter("cpf");
            Cliente c = new Cliente();
            if (cpf != null){
                c = c.consultar(cpf);
                if(c.excluir()){
                    out.write("Cliente excluido com sucesso");
                }
                else
                {
                    out.write("Problemas ao excluir o cliente");
                }
            }
    
        %>
    </body>
</html>

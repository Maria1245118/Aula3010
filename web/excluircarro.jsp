<%-- 
    Document   : excluircarro
    Created on : 09/11/2020, 09:04:02
    Author     : Maria
--%>

<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir carros</title>
    </head>
    <body>
        <h1>Exclusão carros</h1>
        <hr/>
        <%
            String idcarro = request.getParameter("idcarro");
            Carro c = new Carro();
            if (idcarro != null){
                c = c.consultar(Integer.parseInt(idcarro));
                if(c.excluir()){
                    out.write("Carro excluido com sucesso");
                }
                else
                {
                    out.write("Problemas ao excluir o carro");
                }
            }
        %>
    </body>
</html>

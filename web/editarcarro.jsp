<%-- 
    Document   : editarcarro
    Created on : 06/11/2020, 09:13:37
    Author     : Maria
--%>

<%@page import="java.lang.String"%>
<%@page import="modelos.Carro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Editar carros</title>
    </head>
    <body>
        <h1>Edição de carros</h1>
        <hr />
        <%
            String idcarro = request.getParameter("idcarro");
            Carro c = new Carro();
            if(idcarro != null){
                c = c.consultar(Integer.parseInt(idcarro));
            }
        %>
        <form action="recebeeditacarro.jsp" method="POST">
            <label> Idcarro </label>
            <input type="text" name="idcarro" 
                readonly="true"
                value="<%out.write(""+c.getId());%>"/>
            <br />
            <label>Placa</label>
            <input type="text" name="placa" 
                value="<%out.write(c.getPlaca());%>" />
            <br />
            <label>Marca</label>
            <input type="text" name="marca" 
                value="<%out.write(c.getMarca());%>" />
            <br />
            <label>Modelo</label>
            <input type="text" name="modelo" 
                value="<%out.write(c.getModelo());%>" />
            
            <br />
            <label>Km</label>
            <input type="text" name="km" 
                value="<%out.write(c.getKm());%>" />
            
            <br />
            <label>Acessorios</label>
            <input type="text" name="acessorios" 
                value="<%out.write(c.getAcessorios());%>" />
            
            <hr />
            <input type="submit" value="Alterar" />
        </form>
    </body>
</html>

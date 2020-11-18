<%-- 
    Document   : cadastrolocacao
    Created on : 11/11/2020, 08:11:54
    Author     : Maria
--%>

<%@page import="modelos.Locacao"%>
<%@page import="modelos.Cliente"%>
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
        <h1>Cadastro Locacao</h1>
        <hr>
        <%
           
            Carro carro = new Carro();
            List<Carro>carros = carro.consultar();
            
            Cliente cliente = new Cliente();
            List<Cliente> clientes = cliente.consultar();
            
            //Locacao locacao = new Locacao();
            //List<Locacao> locacao = locacao.consultar();
           
        %>
    <form action = "recebedadoslocacao.jsp"method="POST">
        <label>Selecione o carrro para locação</label>
        <select> name="idcarro">
            <%for(Carro c:carros){%>
            <option value="<%out.write(""+c.getId());%>">
            <%out.write(c.getPlaca()+"-"+c.getModelo());%>
            </option>
            <%%>
        </select> 
        <br/>
        <label>Selecione o cliente para locação</label>
        <select nome="cpfcliente">
            <%for(Cliente l:clientes){%>
            <option value="<% out.write(l.getCpf());%>
            input type="cpf" name="cpf"/>
            </option>
            <% out.write((l.getNome()) + "-"+(l.getCpf())); %>
            </option>
            <%}%>
            </select>
            <br />
            <label>Informe a data</label>
            <input type="date" name="dataentrega" />
            <hr/>
        <input type="submit" value="Salvar">
    </form>
    </body>
</html>

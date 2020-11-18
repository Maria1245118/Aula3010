<%-- 
    Document   : cadastrocliente
    Created on : 11/11/2020, 09:33:40
    Author     : Maria
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Locacar - cadastro cliente</title>
    </head>
    <body>
        <h1>Cadastro Cliente</h1>
        <hr />
        <form action="recebeDadoscliente.jsp" method="POST">
            <label>Informe id</label>
            <input type="text" name="id" /> 
            <br/>
            
            <label>Informe cpf</label>
            <input type="text" name="cpf" /> 
            
            <br />
            <label>Informe o nome</label>
            <input type="text" name="nome" />
            
            <br />
            <label>Informe email</label>
            <input type="text" name="email" />
            
            <br />
            <label>Informe numeroCartao</label>
            <input type="text" name="numeroCartao" />
            
            <br />
            <label>Informe fone</label>
            <input type="text" name="fone" />
             
            <hr />
            <input type="submit" value="Salvar" />
        </form>
    </body>   
</html>
   

<%@page import="controler.ContatoControler"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		ResultSet contatos = ContatoControler.consultar();
		while(contatos.next()){
			out.print("ID: " + contatos.getString("id"));
			out.print(" Nome: " + contatos.getString("nome"));
			out.print(" Email: " + contatos.getString("email"));
			out.print("<br>");
		}
	%>
</body>
</html>
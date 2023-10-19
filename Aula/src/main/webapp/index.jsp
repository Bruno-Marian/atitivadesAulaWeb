<%@ page  import="utils.Conexao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href=exemplo1.html>Exemplo - 1</a>
<a href=exemplo2.html>Exemplo - 2</a>
<a href=exemplo3.html>Exemplo - 3</a>

<% out.print(Conexao.conectar()); %>
</body>
</html>
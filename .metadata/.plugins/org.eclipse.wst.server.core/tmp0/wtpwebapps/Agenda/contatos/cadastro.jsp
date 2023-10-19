<%@page import="controler.ContatoControler"%>
<%@page import="modelos.Contato"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de Contatos</title>
</head>
<body>
	<form class="contato">
		<h3 class="mb-4">Cadastro de Contatos</h3>
		<div class="row">
			<div class="col-md-6">
				<div class="form-group">
					<label>Nome</label> <input type="text" id="nome" name="nome"
						class="form-control" required>
				</div>
				<div class="form-group">
					<label>Email</label> <input type="text" id="email" name="email"
						class="form-control" required>
				</div>
			</div>
			<div class="row justify-content-end">
				<div class="col-md-2">
					<button type="submit" class="btn btn-primary float-right"
						id="addContatoBtn">Gravar</button>
				</div>
			</div>
		</div>
	</form>
	<%!
		private static void addNewContato(String nome, String email){
			Contato ct = new Contato(0, nome, email);
			if(ContatoControler.salvar(ct)){
				System.out.print("Contato salvo com sucesso <br>");
			}
		} 
	%>
	<script type="text/javascript">
        $(document).ready(function() {
            $('#addContatoBtn').click(function (){
                $.ajax({
                    type: "post",
                    url: "/path", 
                    data: "nome=" + $('#nome').val() + "&email="+$('#email').val(),
                    success: function(msg){      
                        //
                    }
                });
            });
        });
    </script>
    
    <%
    	String nome = request.getParameter("nome");
    	String email = request.getParameter("email");
    	
    	if (nome != null && email != null){
    		addNewContato(nome, email);
    		response.sendRedirect("lista.jsp");
    	}
    %>
</body>
</html>
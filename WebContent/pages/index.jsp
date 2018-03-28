<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.prjPratica8.Aluno" %>
<%@page import="java.util.*" %>
<%
	List<Aluno> alunos = new ArrayList<Aluno>();
	Aluno aluno = new Aluno();
	aluno.setNome("Thiago");
	aluno.setNota(3);
	
	alunos.add(aluno);
	
	aluno = new Aluno();
	aluno.setNome("Luiz");
	aluno.setNota(8);
	
	alunos.add(aluno);
	
	aluno = new Aluno();
	aluno.setNome("Oliveira");
	aluno.setNota(7);
	
	alunos.add(aluno);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>NOTAS</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<td>Nome</td>
				<td>Nota</td>
				<td>Status</td>
			</tr>
		</thead>
		<tbody>
		<%
			for (Aluno al : alunos)
			{
		%>
			<tr>
				<td><%= al.getNome() %></td>
				<td><%= al.getNota() %></td>
				<td><%= al.getNota() < 5 ? "Reprovado":"Aprovado" %></td>
			</tr>
		<% 
			}
		%>	
		
		</tbody>
	</table>	
</body>
</html>
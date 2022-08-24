<%@page import="db.*"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.*" %>
<%
	String mname=(String)session.getAttribute("mname");
	if(mname==null) {
		out.print("<script>alert('로그인이 필요합니다.');</script>");
		out.print("<script>location.href='loginpage0822.jsp'</script>");
	}
	
	boolean login=true;
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>

<%@ include file="../header.jsp" %>

	<div class="alert alert-secondary" role="alert">
		<div class="container">
			<h1 class="display-3">
				BOARD LIST
			</h1>
		</div>
	</div>
	
	<div class="container w-70">
		<table class="table table-striped table-hover">
		  <thead>
		    <tr>
		      <th scope="col">NO.</th>
		      <th scope="col">TITLE</th>
		      <th scope="col">AUTHOR</th>
		      <th scope="col">WRITE-DATE</th>
			</tr>
		  </thead>
		  <tbody>
				    
<%
   	ArrayList<DTOboard> b=DAOboard.getList();
 		    	for(DTOboard board:b) {
%>		
	
		    <tr>
		      <th scope="row"><a href="boarddetail.jsp?bid=<%=board.getBid() %>"><%=board.getBid() %></a></th>
		      <td><a href="boarddetail.jsp?bid=<%=board.getBid() %>"><%=board.getTitle() %></a></td>
		      <th scope="row"><%=board.getAuthor() %></th>
		      <th scope="row"><%=board.getBdate() %></th>
		    </tr>
		    
<% 
	}
%>
		    
		  </tbody>
		</table>
		
		<a class="btn btn-info" href="boardinputpage.jsp" role="button">글쓰기</a><br><br>
		
	</div>
	
<br><br>

<%@ include file="../footer.jsp" %>

</body>
</html>
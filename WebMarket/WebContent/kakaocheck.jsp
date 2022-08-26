<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="db.*"%>
<%@page import="util.*"%>
<%@ page import="java.sql.*"%>
<%

	String mname = request.getParameter("mname");
	String memail = request.getParameter("memail");
	String mgender = request.getParameter("mgender");
	
	int result = DAOmember.kakaologin(mname);
	
	if(result ==1) {
		//로그인 성공 후 세션넣기
		session.setAttribute("mname",mname);
		
		out.println("<script>alert('로그인 성공, 제품목록으로 이동');</script>");
		out.println("<script>location.href='productlist.jsp'</script>");
	} else if (result==3) {
		out.println("<script>alert('회원가입이 필요합니다.');</script>");
		out.println("<script>location.href='member_input_page.jsp'</script>");
	}






%>
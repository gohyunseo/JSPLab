<%@page import="db.DAOmember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String mname = (String)session.getAttribute("mname");
    String mpass = request.getParameter("mpass");
    
    int result = DAOmember.login(mname, mpass);

	//로그인시 3가지 경우의 수가 발생된다. 
	//1로그인 성공(아이디/비번 일치) -> 로그인 승인 메인으로 보내기
	//2로그인 실패(아이디는일치/비번 불일치) -> 다시 로그인으로 보내기

	if (result == 1) {
		
		
		out.println("<script>alert('비밀번호 일치, 회원 탈퇴');</script>");
		
	    int result2 = DAOmember.memberout(mname, mpass);

		 if (result2 == 1){
			 
			 session.removeAttribute("mname");	
			 out.println("<script>location.href='welcome.jsp';</script>");
		 } else {
				out.println("<script>alert('회원탈퇴 실패, 다시 시도하세요');</script>");
				out.println("<script>location.href='membereditpage.jsp';</script>");
		 }

	}else if (result == 2) {
		out.println("<script>alert('비밀번호 불일치, 다시 시도하세요');</script>");
		out.println("<script>location.href='membereditpage.jsp';</script>");
	}
		
%>
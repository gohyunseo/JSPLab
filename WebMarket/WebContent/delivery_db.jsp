<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="util.*"%>
<%@ page import="db.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<%@ include file="header.jsp" %>
<%
//구매정보 넘겨 받기

String dpid = request.getParameter("pid");
String dpname = request.getParameter("pname");
String dprice = request.getParameter("pprice");

//고객정보조회
	String mname = (String)session.getAttribute("mname");
	DTOmember member = DAOmember.memberdetail(mname);
	
	String dmid = member.getMno();
	String dmtel = member.getMtel();
	String dmemail = member.getMemail();
	String dmaddr = member.getMaddr();


//디비넣기
	int result = DAOdelivery.deliveryinsert(dpid, dmid, dmaddr, dmtel, dpname, dprice);

	  response.sendRedirect("productlist.jsp");
	
%>

<%@ include file="footer.jsp" %>
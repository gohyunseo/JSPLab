<%@page import="smtp.NaverSMTP"%>
<%@page import="java.util.*" %>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  
Map<String, String> emailInfo = new HashMap<String, String>();

emailInfo.put("from", request.getParameter("from"));// 보내는 사람
emailInfo.put("to", request.getParameter("to")); //받는 사람
emailInfo.put("subject",request.getParameter("subject"));//제목

String content = request.getParameter("content");
String format = request.getParameter("format");

if (format.equals("text")) {
	//일반 그냥 글자로 넘어오면 그대로 저장한다. 
	 emailInfo.put("content", content);
	 emailInfo.put("format", "text/plain;charset=UTF-8");
} else if (format.equals("html")) {
	//HTML 형식을 선택했다면 html 로 변환하여 저장
	content = content.replace("\r\n", "<br/>"); //줄바꿈을 html 형식으로 변경

	String htmlContent = "";
	
	try {
		
	//HTML 템플릿을 별도로 만들어 함께 붙여서 전송한다
	String templatePath = application.getRealPath("/d0825/MailForm.html");
	BufferedReader br = new BufferedReader(new FileReader(templatePath));
	
	//한줄씩 읽어서 변수에 저장
	String oneLine;
	while ((oneLine = br.readLine()) != null) { //더이상 줄이 없을때까지 한줄씩 읽기
		htmlContent += oneLine + "\n";
	}
	br.close();
	
} catch (Exception e) {
	e.printStackTrace();
}
	
	
	//읽어온 템플릿에 내용만 넣기
	htmlContent = htmlContent.replace("__CONTENT__", content);
	//html 템플릿에 넣어서 변경한 내용을 전송
	emailInfo.put("content", htmlContent);
	emailInfo.put("format", "text/html;charset=UTF-8");

}


	NaverSMTP smtpServer = new NaverSMTP();
	smtpServer.emailSending(emailInfo);

%>
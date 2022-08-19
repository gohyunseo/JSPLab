<%@ page import="util.*"%>
<%@ page import="db.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="org.apache.commons.fileupload.disk.*"%>
<%@ page import="org.apache.commons.fileupload.servlet.*"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@ include file="../header.jsp" %>

<% 
   String pid = null;
   String pname = null;   
   String pdesc = null;   
   String pprice = null;
   String iname1 = null; // 이미지 명은 데이터에 들어감
   byte[] ifile1 = null; //이미지는 byte로 뽑기 데이터에는 들어가지 않음
   String iname2 = null; 
   byte[] ifile2 = null;
   String iname3 = null; 
   byte[] ifile3 = null;
   
   ServletFileUpload sfu = new ServletFileUpload(new DiskFileItemFactory());

   List items = sfu.parseRequest(request);
   
   Iterator iter = items.iterator(); // Iterator = item에 순서 부여
   
   while(iter.hasNext()){
      FileItem item = (FileItem) iter.next(); //형변환
      String name = item.getFieldName();//키값 즉 이름을 추출
      
      
      if(item.isFormField()){
         //제목, 내용 등 이미지를 제외한 나머지 항목들을 차례대로 추출
         String value = item.getString("UTF-8");
         if(name.equals("pname")) pname = value;
         else if (name.equals("pprice")) pprice = value;
         else if (name.equals("pid")) pid = value;
         else if (name.equals("pdesc")) pdesc = value;
      }else{
         //이미지이름과 이미지파일 추출 
         if(name.equals("image1")){
            iname1 = item.getName();
            ifile1 = item.get();
            
            String root = application.getRealPath(java.io.File.separator);
            FileUtil.saveImage(root,iname1,ifile1);
         }
         else if(name.equals("image2")){
             iname2 = item.getName();
             ifile2 = item.get();
             
             String root = application.getRealPath(java.io.File.separator);
             FileUtil.saveImage(root,iname2,ifile2);
          }
         else if(name.equals("image3")){
             iname3 = item.getName();
             ifile3 = item.get();
             
             String root = application.getRealPath(java.io.File.separator);
             FileUtil.saveImage(root,iname3,ifile3);
          }
      }
   }
   
   DAOproduct.productinsert(pid,pname,pdesc,pprice,iname1,iname2,iname3);
   
   response.sendRedirect("product_list.jsp");
%>

<%@ include file="../footer.jsp" %>
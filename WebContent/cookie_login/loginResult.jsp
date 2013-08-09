<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import ="java.net.URLEncoder"%>

    <%
    String userId = "irisrose";
    String userPw = "1234";
    String userName = "ȫ�浿";
    String id = request.getParameter("id");
    
    String pw = request.getParameter("pw"); 
    
    if(userId.equals(id)&& userPw.equals(pw)){
		Cookie cookie = new Cookie("memberName", URLEncoder.encode(userName));
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
    	response.sendRedirect("main.jsp");
    }else{
    	response.sendRedirect("login.html");
    }
    %>
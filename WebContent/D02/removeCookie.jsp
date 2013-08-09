<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //1. 쿠키를 얻어옴
    Cookie[] cookies = request.getCookies();
    //2. 쿠키를 제거함
    int cookiesLength= cookies.length;
    for(int i = 0; i<cookiesLength; i++){
    	out.println(i+"번째 쿠기 :" + cookies[i].getName() + "삭제함. <br/>");
    	cookies[i].setMaxAge(0);
    	response.addCookie(cookies[i]);
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
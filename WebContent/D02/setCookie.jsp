<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //1. 쿠키를 생성한다.
    Cookie info = new Cookie("testCookie","1st Cookie");
    //2. 쿠키의 속성값을 설정한다.
    info.setMaxAge(60 * 60 * 24 * 365);//365일
    info.setPath("/");
    
    //3. 쿠키를 추가한다.
    response.addCookie(info);//클라이언트 일정에 정보가 추가되는 순간
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키를 생성하는 중입니다......</h2>
</body>
</html>
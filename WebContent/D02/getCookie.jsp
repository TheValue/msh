<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//쿠키를 얻는다.
	Cookie[] cookies = request.getCookies();
	int cookiesLength = cookies.length;
	out.println("현재 설정된 쿠키의 개수"+ cookiesLength + "<br/>");
	for(int i = 0; i< cookiesLength; i++ ){
	out.println(i + "번째 쿠키의 이름 : "+ cookies[i].getName());
	out.println(i + "번째 쿠키에 설정된 값 : "+ cookies[i].getValue()+ "<br/>");
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 정보 얻어옴</h2>
</body>
</html>
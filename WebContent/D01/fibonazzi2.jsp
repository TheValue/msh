<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>피보나치</title>
</head>
<body>
	피보나치 계산 결과는 ${result}<br/>
	피보나치 계산 결과는 <%=request.getAttribute("result") %><br/>
	
</body>
</html>
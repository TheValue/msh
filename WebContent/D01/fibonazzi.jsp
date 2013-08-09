<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		//피보나치 계산
		Integer[] arr = new Integer[20];
		arr[0] = 1;
		arr[1] = 1;
		for(int k = 2 ; k < arr.length ; k++){
			arr[k] = arr[k-2] + arr[k-1];
		}
		for(int i = 0; i<arr.length; i++){
			out.println(arr[i]);
		}
	%>
</body>
</html>
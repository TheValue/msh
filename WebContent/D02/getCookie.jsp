<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//��Ű�� ��´�.
	Cookie[] cookies = request.getCookies();
	int cookiesLength = cookies.length;
	out.println("���� ������ ��Ű�� ����"+ cookiesLength + "<br/>");
	for(int i = 0; i< cookiesLength; i++ ){
	out.println(i + "��° ��Ű�� �̸� : "+ cookies[i].getName());
	out.println(i + "��° ��Ű�� ������ �� : "+ cookies[i].getValue()+ "<br/>");
		
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��Ű ���� ����</h2>
</body>
</html>
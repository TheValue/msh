<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //1. ��Ű�� �����Ѵ�.
    Cookie info = new Cookie("testCookie","1st Cookie");
    //2. ��Ű�� �Ӽ����� �����Ѵ�.
    info.setMaxAge(60 * 60 * 24 * 365);//365��
    info.setPath("/");
    
    //3. ��Ű�� �߰��Ѵ�.
    response.addCookie(info);//Ŭ���̾�Ʈ ������ ������ �߰��Ǵ� ����
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>��Ű�� �����ϴ� ���Դϴ�......</h2>
</body>
</html>
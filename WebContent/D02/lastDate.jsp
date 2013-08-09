<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.text.DateFormat, java.util.Date" %>
<%
	//������ �湮���� �����ϰ� �ִ� ��Ű�� ������ ��ü
	Cookie lastDate = null;
	//ȭ�鿡 ����� �޽����� ������ ���ڿ�
	String msg = "";
	
	//������ �湮���� �����ϰ� �ִ� ��Ű�� �����ϴ� ���� �Ǻ�
	boolean found = false;
	
	//���� �ð��� ����
	String newValue = ""+ System.currentTimeMillis();
	//��Ű�� ��´�.
	Cookie[] cookies = request.getCookies();
	// ������ �湮���� �����ϰ� �ִ� ��Ű�� �˻�
	int cookiesLength = cookies.length;
	for(int i=0; i<cookiesLength; i++){
		lastDate = cookies[i];
		if(lastDate.getName().equals("lastDateCookie")){
			found = true;
			break;
		}
	}
	//ó�� �湮�� ��� �� ��Ű ����
	if(!found){
		msg = "my first contact";
		
		lastDate = new Cookie("lastDateCookie", newValue);
		lastDate.setMaxAge(60*60);//1�ð�
		lastDate.setPath("/");
		response.addCookie(lastDate);
		
	}else{
		//���� �湮�ð��� �˾Ƴ��� long �� ���� conv�� ����
		long conv = Long.parseLong(lastDate.getValue());
		msg = "����� ������ �湮 :" + new Date(conv);
		
		lastDate.setValue(newValue);
		response.addCookie(lastDate);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%=msg%>
</body>
</html>
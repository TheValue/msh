<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="java.text.DateFormat, java.util.Date" %>
<%
	//마지막 방문일을 저장하고 있는 쿠키를 저장할 객체
	Cookie lastDate = null;
	//화면에 출력할 메시지를 저장할 문자열
	String msg = "";
	
	//마지막 방문일을 저장하고 있는 쿠키가 존재하는 지를 판별
	boolean found = false;
	
	//현재 시간을 저장
	String newValue = ""+ System.currentTimeMillis();
	//쿠키를 얻는다.
	Cookie[] cookies = request.getCookies();
	// 마지막 방문일을 저장하고 있는 쿠키를 검색
	int cookiesLength = cookies.length;
	for(int i=0; i<cookiesLength; i++){
		lastDate = cookies[i];
		if(lastDate.getName().equals("lastDateCookie")){
			found = true;
			break;
		}
	}
	//처음 방문일 경우 새 쿠키 생성
	if(!found){
		msg = "my first contact";
		
		lastDate = new Cookie("lastDateCookie", newValue);
		lastDate.setMaxAge(60*60);//1시간
		lastDate.setPath("/");
		response.addCookie(lastDate);
		
	}else{
		//이전 방문시간을 알아내어 long 형 변수 conv에 저장
		long conv = Long.parseLong(lastDate.getValue());
		msg = "당신의 마지막 방문 :" + new Date(conv);
		
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ page import ="java.net.URLDecoder"%>
    <%
    String name = "";
    Cookie[] cookies = request.getCookies();
    if (cookies !=null){
    	int cookiesLength = cookies.length;
	    for(int i=0;i<cookiesLength;i++ ){
	    	if(cookies[i].getName().equals("memberName")){
	    		name = cookies[i].getValue();
	    	}
	    	if(cookies[i].getName().equals("")){
		    	response.sendRedirect("login.html");
	    	}
	    }
    	
    }else{
    	response.sendRedirect("login.html");
    }
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="LogOut.jsp" method="post">
	<table>
		<tr>
			<td>
				<%=URLDecoder.decode(name) %>님 하이.
			</td>	
		</tr>
		<tr>
			<td>
				저희 홈페이지는 별로에요
			</td>	
		</tr>
		<tr>
			<td>
				<input type="submit" value="로그아웃" >
			</td>	
		</tr>
		
	
	</table>
	</form>




</body>
</html>
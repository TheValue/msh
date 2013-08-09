<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" isErrorPage="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<TITLE>에러페이지</TITLE>
</HEAD>
<BODY>
	요청한 페이지가 없습니다.
	<br />
	<br /> 상세 에러 메시지:
	<%=exception.getMessage()%>
</BODY>
</HTML>

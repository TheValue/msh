<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage= "true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
        <HEAD><TITLE>덧셈 프로그램 - 에러 화면</TITLE></HEAD>
        <BODY>
                잘못된 데이터가 입력되었습니다.<br/><br/>
                상세 에러 메시지: <%= exception.getMessage() %>
        </BODY>
 </HTML>

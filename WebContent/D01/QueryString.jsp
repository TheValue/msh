<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%=application.getContextPath() %>/QueryString">
		���̵� : <input type="text" name="id" size="20" value="irisrose"/><br/>
		��й�ȣ : <input type="password" name="pw" size="20" value="1234"/><br/>
		ȸ���̸� : <input type="text" name="name" size="20" value="ȫ�浿"/><br/>
		ȸ������ :
			<input type="radio" name="vclass" value="�Ϲ�ȸ��"/> �Ϲ�ȸ��
			<input type="radio" name="vclass" value="����" checked="checked"/> ����<br/>
		��ȭ��ȣ :
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016" selected="selected">016</option>
				<option value="017">017</option>
			</select> -
			<input type="text" name="phone2" size="4" maxlength="4" value="1234"/> -
			<input type="text" name="phone3" size="4" maxlength="4" value="1234"/><br/>
			<input type="submit" value="����"/>
			<input type="reset" value="���"/>
	</form>

</body>
</html>
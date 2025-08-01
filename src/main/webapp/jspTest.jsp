<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 문법 연습</title>
</head>
<body>
	<%-- 스크립트 태그 선언부 사용 예 --%>
	<%!
		String mid;
		String mpw;
		String mname;
		String mgender;
		String[] mhobbys;
	%>
	
	<%
		mid = request.getParameter("memberid"); //가입한 회원 아이디
		mpw = request.getParameter("memberpw"); //가입한 회원 비밀번호
		mname = request.getParameter("membername"); //가입한 회원 이름
		mgender = request.getParameter("gender"); //가입한 회원 성별	
		mhobbys = request.getParameterValues("hobby"); //가입한 회원 취미
	%>
</body>
</html>
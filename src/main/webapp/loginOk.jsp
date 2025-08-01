<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		//클라이언트가 입력한 아이디값 가져오기	
		String memberId = request.getParameter("loginId");
		//클라이언트가 입력한 비밀번호값 가져오기->파라미터 값 가져오기
		String memberPw = request.getParameter("loginPw");		
	%>
		<h2>로그인하신 아이디는 <b><i><%= memberId %></i></b> 이고, 비밀번호는 <b><i><%= memberPw %></i></b> 입니다.</h2>
</body>
</html>
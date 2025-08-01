<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입 확인</title>
</head>
<body>	
	<%		
		String mid = request.getParameter("memberid"); //가입한 회원 아이디
		String mpw = request.getParameter("memberpw"); //가입한 회원 비밀번호
		String mname = request.getParameter("membername"); //가입한 회원 이름
		String mgender = request.getParameter("gender"); //가입한 회원 성별
		if(mgender.equals("male")) {
			mgender = "남성";
		} else {
			mgender = "여성";
		}
		String mage = request.getParameter("memberage"); //가입한 회원 나이
		String memail1 = request.getParameter("email1"); //이메일 주소 이름
		String memail2 = request.getParameter("email2"); //이메일 주소 도메인
		
		// String[] mhobbys = request.getParameterValues("hobby"); //가입한 회원 취미
		
		// 취미 checkbox를 Map 자료 구조로 받기
		Map<String, String[]> hobbyMap = request.getParameterMap();
		
		// 취미 checkbox를 열거형 자료 구조로 받기->모든 파라미터의 이름만 가져오기
		Enumeration<String> hobbyEnum = request.getParameterNames();
		
		String mintro = request.getParameter("intro"); //자기소개
		
	%>
	<h2>회원 가입 정보</h2>
	<hr>
	<ul>
		<li>아이디 : <%= mid %></li>
		<li>비밀번호 : <%= mpw %></li>
		<li>이름 : <%= mname %></li>
		<li>나이 : <%= mage %></li>
		<li>성별 : <%= mgender %></li>
		<li>이메일 : <%= memail1 %>@<%= memail2 %></li>
		<li>취미(Map) : 
			<%
				if(hobbyMap.get("hobby") == null) {
					out.println("취미없음");
				} else {
					for(String hobby : hobbyMap.get("hobby")) { //hobbyMap의 key값만 가져오기
							out.println(hobby);						
						}
				}
				
			%>
		</li>
		<li>취미(Enumeration) : 
			<%
				String[] hobbies = null;
				if(!hobbyEnum.hasMoreElements()) {
					out.println("취미없음");
				} else {
					while(hobbyEnum.hasMoreElements()) {
						String hobby = hobbyEnum.nextElement();
						//System.out.println(hobby);
						if(hobby.equals("hobby")) {							 
							hobbies = request.getParameterValues(hobby);
						}							
					}
					if(hobbies != null) {
						for(String hobby :hobbies) {
							out.print(hobby +  " / ");
						}
					}	
				}
				
			%>
		</li>
		<li>자기소개 : <%= mintro %></li>
	</ul>
</body>
</html>
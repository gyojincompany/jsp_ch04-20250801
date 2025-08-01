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
		request.setCharacterEncoding("UTF-8");//한글 깨짐 방지
		
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
		String[] mhobbys = request.getParameterValues("hobby"); //가입한 회원 취미
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
		<li>취미 : 
			<%
				if(mhobbys != null) { //취미 체크 박스에 선택이 하나도 되지 않고 넘어왔을 경우 처리
					for(int i=0;i<mhobbys.length;i++) {
						out.print(mhobbys[i] + " / ");
					}
					// 향상된 for문
					// for(String mhobby : mhobbys) { 
					//	out.print(mhobby + " / ");
					// }
				} else {
					out.print("취미없음");
				}
			%>
		</li>
		<li>자기소개 : <%= mintro %></li>
	</ul>
</body>
</html>
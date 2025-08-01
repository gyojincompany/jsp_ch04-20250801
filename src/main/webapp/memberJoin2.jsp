<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h2>회원 가입 양식</h2>
	<hr>
	<form action="memberJoinOk2.jsp">
		아이디 : <input type="text" name="memberid"><br><br>
		비밀번호 : <input type="password" name="memberpw"><br><br>
		이름 : <input type="text" name="membername"><br><br>
		나이 : <input type="text" name="memberage"><br><br>
		성별 : <input type="radio" name="gender" value="male" checked="checked">남자 
		<input type="radio" name="gender" value="female">여자<br><br>
		이메일 : <input type="text" name="email1"> @ 
		<select name="email2">
			<option value="naver.com">naver.com</option>
			<option value="daum.net">daum.net</option>
			<option value="gmail.com">gmail.com</option>
		</select>		
		<br><br>
		취미 : 
		<input type="checkbox" name="hobby" value="game" checked="checked">게임
		<input type="checkbox" name="hobby" value="sports" checked="checked">운동
		<input type="checkbox" name="hobby" value="book" checked="checked">독서
		<input type="checkbox" name="hobby" value="movie" checked="checked">영화
		<br><br>
		자기소개 : <br>
		<textarea rows="5" cols="50" name="intro"></textarea>
		<br><br>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시작성">
	</form>
</body>
</html>
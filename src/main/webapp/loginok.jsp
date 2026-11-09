<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인 페이지</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		//아이디 tiger 비밀번호 12345 면 로그인 진행
		if(mid.equals("tiger") && mpw.equals("12345")) {//참이면 로그인 성공
			//로그인 성공? 로그인 시킨다는 의미?
			//로그인 ok -> session 에 로그인한 유저의 아이디를 저장
			session.setAttribute("loginId", mid);
			session.setAttribute("sessionVaild", "yes");
			
		} else {
			System.out.println("로그인 실패!");
		}
	
	
	%>

</body>
</html>
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
			session.setAttribute("sessionId", mid);
			session.setAttribute("sessionVaild", "yes");
			//현재 시간을 세견에 저정
			//현재 시간을 서버에서 빼오기
			long nowTime = System.currentTimeMillis();//현재 시간을 서버에서 가져오기(변환타입:밀리세컨드 1/1000초)
			session.setAttribute("loginTime", nowTime);//현재 시간을 세션에 저장
			System.out.println("로그인한 시간 : " + nowTime);
			
			//로그인 성공시 loginsuccess.jsp로 자동(자동)이동
			response.sendRedirect("loginsuccess.jsp");
		} else {
			System.out.println("로그인 실패!");
			//로그인 실패시 로그인 페이지 다시 (강제)이동
			response.sendRedirect("login.jsp");
		}
	
	
	%>

</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
<title>Home</title>
</head>
<body>

	<form name="homeForm" method="post" action="/member/login">
		<c:if test="${member == null}">
			<div>
				<label for="userId"></label> <input type="text" id="userId"
					name="userId">
			</div>
			<div>
				<label for="userPass"></label> <input type="password" id="userPass"
					name="userPass">
			</div>
			<div>
				<button type="submit">로그인</button>
				<button type="button">회원가입</button>
			</div>
		</c:if>

		<c:if test="${member != null}">
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="logoutBtn" type="button">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호를 확인 해 주세요!</p>
		</c:if>

	</form>

</body>
</html>

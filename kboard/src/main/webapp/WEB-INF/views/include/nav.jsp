<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" type="text/css" href="/resources/css/nav.css">
<link rel="stylesheet" type="text/css" href="/resources/css/view.css">
<link rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
      integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
      crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<div class="nav_top">
    <c:if test="${member == null}">
        <div class="nav-child"><a href="/member/signup">회원가입</a></div>
    </c:if>
    <c:if test="${member != null}"><div class="nav-child"><a href="/member/logout">로그아웃</a></div></c:if>
    <c:if test="${member == null}"><div class="nav-child"><a href="/member/login">로그인</a></div></c:if>
    <c:if test="${member != null}">
        <div class="nav-child">${member.userName}님 안녕하세요.</div>
    </c:if>
    <div class="mail_img nav-child"></div>
</div>
<div class="h_list">
    <h3 style="text-align:center;">게시판</h3>
    <ul class="nav1">
        <li><a href="/board/listPageSearch?num=1">글 목록</a></li>
        <c:if test="${member != null}">
            <li><a href="/board/write">글 작성</a></li>
        </c:if>
        <li><a href="#">시계&달력</a></li>

    </ul>

</div>


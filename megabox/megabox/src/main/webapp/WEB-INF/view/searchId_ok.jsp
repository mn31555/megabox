<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/searchId_ok.css">
    <title>아이디 찾기 완료</title>
</head>

<div class="logo">
        <div class="img-top">
            <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="메인 로고">
        </div>
        <div class="img-bot">
            <img src="${pageContext.request.contextPath}/assets/img/logo-sub.png" alt="서브 로고">
        </div>
    </div>
    <div class="input-area">
        <p>회원님의 ID : ${id} </p>
    </div>
    <div class="btn">
        <a href="/member/login"><button type="button">로그인 하러가기</button></a>
    </div>

</html>
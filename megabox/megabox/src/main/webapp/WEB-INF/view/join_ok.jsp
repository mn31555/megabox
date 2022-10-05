<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <title>메가 박스</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/member/join_ok.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">

    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="${pageContext.request.contextPath}/assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="${pageContext.request.contextPath}/assets/icons/favicon_192.png" />

    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&subset=korean"
        rel="stylesheet">
</head>

<body>
    <header id="header">
		<div class="container">
			<div class="row">
				<div class="header clearfix">
					<h1>
						<a href="${pageContext.request.contextPath}/main"> <em><img
								src="${pageContext.request.contextPath}/assets/img/logo.png"
								alt="MEGABOX"></em> <strong><img
								src="${pageContext.request.contextPath}/assets/img/logo-sub.png"
								alt="LIFE THEATER"></strong>
						</a>
					</h1>
					<nav id="mNav">
						<h2 class="ir_so"></h2>
						<a href="#" class="ham"><span></span></a>
					</nav>
					<nav class="nav">
						<ul class="clearfix">
							<li><a href="${pageContext.request.contextPath}/movie/main">영화</a></li>
							<li><a href="${pageContext.request.contextPath}/main/support">공지사항</a></li>
							<li><a href="#">큐레이션</a></li>
							<li><a href="${pageContext.request.contextPath}/review/main">포스트</a></li>
							<li><a href="${pageContext.request.contextPath}/store/main">스토어</a></li>
							<li><a href="${pageContext.request.contextPath}/store/event">이벤트</a></li>
							<c:choose>
								<c:when test="${empty memberInfo.memberId }">
									<li><a
										href="${pageContext.request.contextPath}/member/login">로그인</a></li>
									<li><a
										href="${pageContext.request.contextPath}/member/join">회원가입</a></li>
								</c:when>
								<c:otherwise>
									<li><a
										href="${pageContext.request.contextPath}/member/logout">로그아웃</a></li>
									<li><a
										href="${pageContext.request.contextPath}/member/mypage">마이페이지</a></li>
								</c:otherwise>
							</c:choose>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</header>
    <!-- //header -->
    <div class="ok">
        <h1>회원 가입이 완료되었습니다.</h1>
    </div>
    <div class="btn">
        <a href="/member/login"><button type="button">로그인 페이지 이동</button></a>
    </div>
    <div class="btn">
        <a href="/main"><button type="button">메인 페이지 이동</button></a>
    </div>
    <footer id="footer">
        <div id="footer_sns">
            <div class="container">
                <div class="footer_sns">
                    <ul>
                        <li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
                        <li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
                        <li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
                        <li class="icon s4"><a href="#"><span class="ir_pm">구글 플레이</span></a></li>
                        <li class="icon s5"><a href="#"><span class="ir_pm">아이폰 앱스토어</span></a></li>
                    </ul>
                    <div class="tel">
                        <a href="#">ARS <em>1544-0070</em></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer_infor">
            <div class="container">
                <div class="row">
                    <div class="footer_infor">
                        <h2>
                            <img src="${pageContext.request.contextPath}/assets/img/logo_footer.png" alt="megabox">
                        </h2>
                        <ul>
                            <li><a href="#">회사소개</a></li>
                            <li><a href="#">채용정보</a></li>
                            <li><a href="#">제휴/광고/부대사업 문의</a></li>
                            <li><a href="#">이용약관</a></li>
                            <li><a href="#">개인정보처리방침</a></li>
                            <li><a href="#">고객센터</a></li>
                            <li><a href="#">윤리경영</a></li>
                        </ul>
                        <address>
                            <p>
                                서울특별시 강남구 도산대로 156, 2층 메가박스중앙(주) (논현동, 중앙엠앤비사옥)<br>
                                <span class="bar2">대표자명 김진선</span> 개인정보보호 책임자 경영지원실 실장 박영진<br>
                                <span class="bar2">사업자등록번호 211-86-59478</span> 통신판매업신고번호 제 833호
                            </p>
                            <p>Copyright 2014 by MegaboxJoongAng Inc. All right reserved</p>
                        </address>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>
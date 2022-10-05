<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/style.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/store/store.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/font-awesome.css">

<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&subset=korean"
	rel="stylesheet">
<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min_1.12.4.js"></script>
<title>메가박스</title>
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
							<li><a
								href="${pageContext.request.contextPath}/main/support">공지사항</a></li>
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

	<div class="inner-wrap">
		<form name="form">
		<h2 class="tit">스토어</h2>
		<div class="tab-content">
			<!-- <input type="radio" name="tabmenu" id="tab01" checked>
            <label for="tab01">새로운 상품</label>  -->
			<input type="radio" name="tabmenu" id="tab02" onclick="goPage"
				checked> <label for="tab02">메가티켓</label> <input type="radio"
				name="tabmenu" id="tab03"> <label for="tab03">팝콘/음료/굿즈</label>
			<input type="radio" name="tabmenu" id="tab04"> <label
				for="tab04">포인트몰</label>
			
			<div class="conbox con2">
				<div class="store-list">
				  <c:forEach var="p" items="${productList}">
					<ul class="list">					
							<li>
								<a href="${pageContext.request.contextPath}/store/buy?productNo=${p.productNo}">
									<div class="img">
										<img
											src="${pageContext.request.contextPath}/assets/img/${p.productNo}.png"
											alt="${p.PName}">
									</div>
									<div class="info">
										<div class="tit">
											<p class="name${p.PType }" id="pName">${p.PName}</p>																						
											<p class="sub-name">${p.PContent}</p>
										</div>
										<div class="price">
											<p class="default">${p.PPrice+1000}</p>
											<p class="sale">
												<em>${p.PPrice}</em> <span>원</span>
											</p>
										</div>
									</div>
								</a>
							</li>
						</ul>
					</c:forEach>
				</div>
			</div>
			<div class="conbox con3">
				<div class="store-list">
					<c:forEach var="p2" items="${productList2}">
					<ul class="list">					
							<li><a href="${pageContext.request.contextPath}/store/buy?productNo=${p2.productNo}">
									<div class="img">
										<img
											src="${pageContext.request.contextPath}/assets/img/${p2.productNo}.png"
											alt="일반관람권">
									</div>
									<div class="info">
										<div class="tit">
											<p class="name${p2.PType }">${p2.PName}</p>
											<p class="sub-name">${p2.PContent}</p>
										</div>
										<div class="price">
											<p class="default">${p2.PPrice+1000}</p>
											<p class="sale">
												<em>${p2.PPrice}</em> <span>원</span>
											</p>
										</div>
									</div>
							</a></li>
						</ul>
					</c:forEach>
				</div>
			</div>
			<div class="conbox con4">
				<div class="store-list">
					<ul class="list">
						<li><a href="">
								<div class="img">
									<img
										src="${pageContext.request.contextPath}/assets/img/컴포트관.png"
										alt="예매권">
								</div>
								<div class="info">
									<div class="tit">
										<p class="name4">평일 일반/컴포트관 예매권 [7월 포인트몰]</p>
										<p class="sub-name1">일반관 / 컴포트관 전용 예매권 (월~금, 공휴일 제외)</p>
									</div>
									<div class="price">
										<!-- <p class="default">
                                            12,000원
                                        </p> -->
										<p class="sale">
											<em>9,900</em> <span>Point</span>
										</p>
									</div>
								</div>
						</a></li>
						<li><a href="#">
								<div class="img">
									<img
										src="${pageContext.request.contextPath}/assets/img/3000할인.png"
										alt="예매권">
								</div>
								<div class="info">
									<div class="tit">
										<p class="name4">일반 영화 3천원 할인 쿠폰 [7월 포인트몰]</p>
										<p class="sub-name1">일반 영화 3천원 할인 쿠폰</p>
									</div>
									<div class="price">
										<!-- <p class="default">
                                            12,000원
                                        </p> -->
										<p class="sale">
											<em>3,000</em> <span>Point</span>
										</p>
									</div>
								</div>
						</a></li>
						<li><a href="#">
								<div class="img">
									<img
										src="${pageContext.request.contextPath}/assets/img/2000할인.png"
										alt="예매권">
								</div>
								<div class="info">
									<div class="tit">
										<p class="name4">일반 영화 2천원 할인 쿠폰 [7월 포인트몰]</p>
										<p class="sub-name1">일반 영화 2천원 할인 쿠폰</p>
									</div>
									<div class="price">
										<!-- <p class="default">
                                            12,000원
                                        </p> -->
										<p class="sale">
											<em>2,000</em> <span>Point</span>
										</p>
									</div>
								</div>
						</a></li>
						<li><a href="#">
								<div class="img">
									<img
										src="${pageContext.request.contextPath}/assets/img/1000할인.png"
										alt="예매권">
								</div>
								<div class="info">
									<div class="tit">
										<p class="name4">일반 영화 1천원 할인 쿠폰 [7월 포인트몰]</p>
										<p class="sub-name1">일반 영화 1천원 할인 쿠폰</p>
									</div>
									<div class="price">
										<!-- <p class="default">
                                            12,000원
                                        </p> -->
										<p class="sale">
											<em>1,000</em> <span>Point</span>
										</p>
									</div>
								</div>
						</a></li>
					</ul>
				</div>
			</div>
		</div>
		</form>
	</div>
	<footer id="footer">
		<div id="footer_sns">
			<div class="container">
				<div class="footer_sns">
					<ul>
						<li class="icon s1"><a href="#"><span class="ir_pm">트위터</span></a></li>
						<li class="icon s2"><a href="#"><span class="ir_pm">페이스북</span></a></li>
						<li class="icon s3"><a href="#"><span class="ir_pm">인스타그램</span></a></li>
						<li class="icon s4"><a href="#"><span class="ir_pm">구글
									플레이</span></a></li>
						<li class="icon s5"><a href="#"><span class="ir_pm">아이폰
									앱스토어</span></a></li>
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
							<img
								src="${pageContext.request.contextPath}/assets/img/logo_footer.png"
								alt="megabox">
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
								서울특별시 강남구 도산대로 156, 2층 메가박스중앙(주) (논현동, 중앙엠앤비사옥)<br> <span
									class="bar2">대표자명 김진선</span> 개인정보보호 책임자 경영지원실 실장 박영진<br> <span
									class="bar2">사업자등록번호 211-86-59478</span> 통신판매업신고번호 제 833호
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
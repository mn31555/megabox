<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="author" content="webstoryboy">


<!-- CSS -->
<link href="${pageContext.request.contextPath}/assets/css/reset.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/style.css"
	rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/swiper.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/font-awesome.css"
	rel="stylesheet" type="text/css">

<!-- 파비콘 -->
<link href="${pageContext.request.contextPath}/assets/icons/favicon.ico"
	rel="shortcut icon">
<link
	href="${pageContext.request.contextPath}/assets/icons/favicon_72.png"
	rel="apple-touch-icon-precomposed">
<link
	href="${pageContext.request.contextPath}/assets/icons/favicon_96.png"
	sizes="96x96" rel="apple-touch-icon-precomposed">
<link
	href="${pageContext.request.contextPath}/assets/icons/favicon_144.png"
	sizes="144x144" rel="apple-touch-icon-precomposed">
<link
	href="${pageContext.request.contextPath}/assets/icons/favicon_192.png"
	sizes="192x192" rel="apple-touch-icon-precomposed">

<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&subset=korean"
	rel="stylesheet" type="text/css">
<!-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script> -->

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
							<li><a href="${pageContext.request.contextPath}/store/buypage">구매내역</a></li>
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

	<section id="banner">
		<div class="banner_menu">
			<h2 class="ir_so">배너 영역</h2>
			<div class="container">
				<div class="row">
					<div class="bm_left">
						<ul>
							<li class="total"><a href="#">전체메뉴</a></li>
						</ul>
					</div>
					<div class="bm_right">
						<ul>
							<li class="line"><a href="#">고객센터</a></li>
						</ul>
						<ul>
							<li class="white"><a href="#">상영시간표</a></li>
							<li class="purple"><a href="${pageContext.request.contextPath}/reserve">빠른예매</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="slider">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide ss1">
						<div class="container">
							<div class="row">
								<h2>
									닥터 스트레인지 <em>대혼돈의 멀티버스</em>
								</h2>
								<p>지금껏 본 적 없는 마블의 극한 상상력! 광기의 멀티버스가 깨어난다</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide ss2">
						<div class="container">
							<div class="row">
								<h2>범죄도시2</h2>
								<p>“느낌 오지? 이 놈 잡아야 하는 거”</p>
							</div>
						</div>
					</div>
					<div class="swiper-slide ss3">
						<div class="container">
							<div class="row">
								<h2>
									쥬라기 월드 <em>도미니언</em>
								</h2>
								<p>이제 모든 것이 끝난다, 지상 최대 블록버스터의 압도적 피날레!</p>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-pagination"></div>
				<div class="swiper-button-prev"></div>
				<div class="swiper-button-next"></div>
			</div>
		</div>
	</section>
	<!-- //banner -->

	<section id="movie">
		<div class="container">
			<div class="row">
				<div class="movie">
					<h2 class="ir_so">영화 예매</h2>
					<div class="movie_title">
						<ul>
							<li class="active"><a href="#">박스오피스</a></li>
							<li><a href="#">특별상영</a></li>
							<li><a href="#">상영예정작</a></li>
							<li><a href="#">필름소사이어티</a></li>
						</ul>
					</div>
					<div class="movie_chart">
						<div class="swiper-container2">
							<div class="chart_cont1 swiper-wrapper">
								<c:forEach var="m" items="${movieList}">
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/${m.movieNo}.jpg"
													srcset="assets/img/${m.movieNo}.jpg" alt="${m.movieName}">
											</figure>
											<div class="rank">
												<strong>${m.movieNo}</strong>
											</div>
											<div class="mx">
												<span class="icon m ir_pm">MX</span>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span><img src="assets/img/${m.movieRating}.png" alt="${m.movieRating}"></span> <strong>${m.movieName}</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- //chart_cont1-->
						
						<div class="swiper-container2">
							<div class="chart_cont2 swiper-wrapper">
								<c:forEach var="m2" items="${movieList2}">
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/${m2.movieNo}.jpg"
													srcset="assets/img/${m2.movieNo}.jpg" alt="${m2.movieName}">
											</figure>
											<div class="rank">
												<strong>${m2.movieNo - 10}</strong>
											</div>
											<div class="mx">
												<span class="icon m ir_pm">MX</span>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span><img src="assets/img/${m2.movieRating}.png" alt="${m2.movieRating}"></span> <strong>${m2.movieName}</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- //chart_cont2-->
						
						<div class="swiper-container2">
							<div class="chart_cont3 swiper-wrapper">
								<c:forEach var="m3" items="${movieList3}">
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/${m3.movieNo}.jpg"
													srcset="assets/img/${m3.movieNo}.jpg" alt="${m3.movieName}">
											</figure>
											<div class="rank">
												<strong>${m3.movieNo - 20}</strong>
											</div>
											<div class="mx">
												<span class="icon m ir_pm">MX</span>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span><img src="assets/img/${m3.movieRating}.png" alt="${m3.movieRating}"></span> <strong>${m3.movieName}</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- //chart_cont3-->
						
						<div class="swiper-container2">
							<div class="chart_cont4 swiper-wrapper">
								<c:forEach var="m4" items="${movieList4}">
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/${m4.movieNo}.jpg"
													srcset="assets/img/${m4.movieNo}.jpg" alt="${m4.movieName}">
											</figure>
											<div class="rank">
												<strong>${m4.movieNo - 30}</strong>
											</div>
											<div class="mx">
												<span class="icon m ir_pm">MX</span>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span><img src="assets/img/${m4.movieRating}.png" alt="${m4.movieRating}"></span> <strong>${m4.movieName}</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<!-- //chart_cont4-->



						<!-- <div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/토르.jpg" srcset="assets/img/토르02.jpg"
													alt="토르:러브 앤 썬더">
											</figure>
											<div class="rank">
												<strong>2</strong>
											</div>
											<div class="mx">
												<span class="icon m ir_pm">MX</span>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon a15 ir_pm">12세 관람가</span> <strong>토르:
													러브 앤 썬더</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/헤어질결심.jpg"
													srcset="assets/img/헤어질결심02.jpg" alt="헤어질 결심">
											</figure>
											<div class="rank">
												<strong>3</strong>
											</div>
											<div class="mx">
												<span class="icon m ir_pm">MX</span>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon a19 ir_pm">15세</span> <strong>헤어질
													결심</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/범죄도시2.jpg"
													srcset="assets/img/범죄도시202.jpg" alt="범죄도시2">
											</figure>
											<div class="rank">
												<strong>4</strong>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon a19 ir_pm">15세</span> <strong>범죄도시2</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/마녀.jpg" srcset="assets/img/마녀02.jpg"
													alt="마녀2">
											</figure>
											<div class="rank">
												<strong>5</strong>
											</div>
											<div class="mx"></div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon a19 ir_pm">15세</span> <strong>마녀2</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/룸쉐어링.jpg"
													srcset="assets/img/룸쉐어링02.jpg" alt="룸쉐어링">
											</figure>
											<div class="rank">
												<strong>6</strong>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon all ir_pm">전체 관람가</span> <strong>룸
													쉐어링</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/브로커.jpg" srcset="assets/img/브로커02.jpg"
													alt="브로커">
											</figure>
											<div class="rank">
												<strong>7</strong>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon a15 ir_pm">12세</span> <strong>브로커</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div>
									</div>
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/버즈.jpg" srcset="assets/img/버즈02.jpg"
													alt="버즈">
											</figure>
											<div class="rank">
												<strong>8</strong>
											</div>
										</div>
										<div class="infor">
											<h3>
												<span class="icon all ir_pm">전체관람가</span> <strong>버즈</strong>
											</h3>
											<div class="infor_btn">
												<a href="#">상세보기</a> <a href="#">예매하기</a>
											</div>
										</div> 
									</div> -->

						<!-- <div class="swiper-container2">
							<div class="chart_cont2 swiper-wrapper">
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/기적.jpg" srcset="assets/img/기적02.jpg"
												alt="디어헌터">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>기적</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/남산의부장들.jpg"
												srcset="assets/img/남산의부장들.jpg" alt="모어">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>남산의부장들</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/모가디슈.jpg" srcset="assets/img/모가디슈02.jpg"
												alt="니얼굴">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>모가디슈</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/라라랜드.jpg" srcset="assets/img/라라랜드02.jpg"
												alt="애프터 양">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">12세</span> <strong>라라랜드</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/미나리.jpg" srcset="assets/img/미나리02.jpg"
												alt="감동주의보">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<span class="icon all ir_pm">전체관람가</span> <strong>미나리</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/비긴어게인.jpg"
												srcset="assets/img/비긴어게인02.jpg" alt="실종">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>비긴어게인</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						//chart_cont2

						<div class="swiper-container2">
							<div class="chart_cont2 swiper-wrapper">
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/헤어질결심.jpg"
												srcset="assets/img/헤어질결심02.jpg" alt="헤어질 결심">
										</figure>
										<div class="rank">
											<strong>1</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">전체관람가</span> <strong>헤어질
												결심</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/미친 능력.jpg"
												srcset="assets/img/미친 능력02.jpg" alt="미친 능력">
										</figure>
										<div class="rank">
											<strong>2</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>미친
												능력</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/위대한 침묵.jpg"
												srcset="assets/img/위대한 침묵02.jpg" alt="위대한 침묵">
										</figure>
										<div class="rank">
											<strong>3</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">15세</span> <strong>위대한
												침묵</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/리멤버미.jpg" srcset="assets/img/리멤버미02.jpg"
												alt="리멤버 미">
										</figure>
										<div class="rank">
											<strong>4</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">19세</span> <strong>리멤버
												미</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/고스트랜드.jpg"
												srcset="assets/img/고스트랜드02.jpg" alt="고스트랜드">
										</figure>
										<div class="rank">
											<strong>5</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">19세</span> <strong>고스트
												랜드</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/컴온컴온.jpg" srcset="assets/img/컴온컴온02.jpg"
												alt="컴온 컴온">
										</figure>
										<div class="rank">
											<strong>6</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a15 ir_pm">19세</span> <strong>컴온
												컴온</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						//chart_cont3

						<div class="swiper-container2">
							<div class="chart_cont4 swiper-wrapper">
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/디어헌터.jpg" srcset="assets/img/디어헌터02.jpg"
												alt="디어헌터">
										</figure>
										<div class="rank">
											<strong>1</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>디어헌터</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/모어.jpg" srcset="assets/img/모어02.jpg"
												alt="모어">
										</figure>
										<div class="rank">
											<strong>2</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a19 ir_pm">15세</span> <strong>모어</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/니얼굴.jpg" srcset="assets/img/니얼굴02.jpg"
												alt="니얼굴">
										</figure>
										<div class="rank">
											<strong>3</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon all ir_pm">전체관람가</span> <strong>니얼굴</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/애프터 양.jpg"
												srcset="assets/img/애프터 양02.jpg" alt="애프터 양">
										</figure>
										<div class="rank">
											<strong>4</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon all ir_pm">전체관람가</span> <strong>애프터
												양</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/감동주의보.jpg"
												srcset="assets/img/감동주의보02.jpg" alt="감동주의보">
										</figure>
										<div class="rank">
											<strong>5</strong>
										</div>

									</div>
									<div class="infor">
										<h3>
											<span class="icon all ir_pm">전체관람가</span> <strong>감동주의보</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/실종.jpg" srcset="assets/img/실종02.jpg"
												alt="실종">
										</figure>
										<div class="rank">
											<strong>6</strong>
										</div>
									</div>
									<div class="infor">
										<h3>
											<span class="icon a12 ir_pm">19세</span> <strong>실종</strong>
										</h3>
										<div class="infor_btn">
											<a href="#">상세보기</a> <a href="#">예매하기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						//chart_cont4 -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //movie -->

	<section id="event">
		<div class="container">
			<div class="row">
				<div class="event">
					<h2>새로운 이벤트</h2>
					<div class="event_left">
						<div class="event_slider">
							<a href="#"><img src="assets/img/event01.jpg"
								srcset="assets/img/event01@2.jpg" alt=""></a>
						</div>
						<div class="event_box1">
							<a href="#"><img src="assets/img/event02.jpg"
								srcset="assets/img/event02@2.jpg" alt="영화 할인"></a>
						</div>
						<div class="event_box2">
							<a href="#"><img src="assets/img/event03.jpg"
								srcset="assets/img/event03@2.jpg" alt="싱글 콤보 무료"></a>
						</div>
					</div>
					<div class="event_right">
						<a href="#"><img src="assets/img/event04.jpg"
							srcset="assets/img/event04@2.jpg 2x" alt="사표 대신 영화표"></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //event -->

	<section id="store">
		<div class="container">
			<div class="row">
				<div class="store">
					<h2>스토어</h2>
					<div class="store_chart">
						<div class="swiper-container2">
							<div class="chart_cont1 swiper-wrapper">
								<a href="#">
									<div class="swiper-slide">
										<div class="poster">
											<figure>
												<img src="assets/img/1008.png" alt="">
											</figure>
										</div>
										<div class="infor">
											<h3>
												<strong>러브콤보</strong>
											</h3>
											<p>팝콘(L) 1 + 탄산음료(R) 2</p>
											<hr>
											<h4>10,000원</h4>
										</div>
								</a>
							</div>
							<a href="#">
								<div class="swiper-slide">
									<div class="poster">
										<figure>
											<img src="assets/img/1009.png" alt="">
										</figure>
									</div>
									<div class="infor">
										<h3>
											<strong>더블콤보</strong>
										</h3>
										<p>팝콘(R) 2 + 탄산음료(R) 2</p>
										<hr>
										<h4>13,000원</h4>
									</div>
							</a>
						</div>
						<a href="#">
							<div class="swiper-slide">
								<div class="poster">
									<figure>
										<img src="assets/img/1000.png" alt="">
									</figure>
								</div>
								<div class="infor">
									<h3>
										<strong>일반관람권(2D)</strong>
									</h3>
									<p>일반관람권</p>
									<hr>
									<h4>11,000원</h4>
								</div>
						</a>
					</div>
					<a href="#">
						<div class="swiper-slide">
							<div class="poster">
								<figure>
									<img src="assets/img/1005.png" alt="">
								</figure>
							</div>
							<div class="infor">
								<h3>
									<strong>싱글패키지</strong>
								</h3>
								<p>2D 일반관람권 1매 + 팝콘(R) 1 + 탄산음료(R) 1</p>
								<hr>
								<h4>17,500원</h4>
							</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- //store -->

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

	<!-- 자바스크립트 라이브러리 -->
	<script
		src="${pageContext.request.contextPath}/assets/js/jquery.min_1.12.4.js"></script>
	<!-- <script type="text/javascript"
		src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script>-->
	<script
		src="${pageContext.request.contextPath}/assets/js/modernizr-custom.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/ie-checker.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	<script>
		//배너 이미지 슬라이드
		var swiper = new Swiper('.swiper-container', {
			pagination : {
				el : '.swiper-pagination',
			},
			navigation : {
				nextEl : '.swiper-button-next',
				prevEl : '.swiper-button-prev',
			},
			autoplay : {
				delay : 5000,
			},
		});

		//영화차트 이미지 슬라이드
		var mySwiper = new Swiper('.swiper-container2', {
			slidesPerView : 4,
			spaceBetween : 24,
			//            mousewheel: {
			//                invert: true,
			//            },
			keyboard : {
				enabled : true,
				onlyInViewport : false,
			},
			autoplay : {
				delay : 6000,
			},
			breakpoints : {
				600 : {
					slidesPerView : 1.4,
					spaceBetween : 24
				},
				768 : {
					slidesPerView : 2,
					spaceBetween : 24
				},
				960 : {
					slidesPerView : 3,
					spaceBetween : 24
				}
			}
		});

		//영화차트 탭 메뉴
		var movBtn = $(".movie_title > ul > li");
		var movCont = $(".movie_chart > div");

		movCont.hide().eq(0).show();

		movBtn.click(function(e) {
			e.preventDefault();
			var target = $(this);
			var index = target.index();
			movBtn.removeClass("active");
			target.addClass("active");
			movCont.css("display", "none");
			movCont.eq(index).css("display", "block");
		});
	</script>
</body>

</html>
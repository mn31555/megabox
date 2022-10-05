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
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/font-awesome.css">

<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:100,300,400,500,700,900&subset=korean"
	rel="stylesheet">
<link rel="stylesheet" href="resources/booking_1_files/megabox.min.css"
	media="all">
<script type="text/javascript" async=""
	src="resources/booking_1_files/analytics.js.다운로드"></script>
<script async="" src="resources/booking_1_files/js"></script>
<script>window.dataLayer = window.dataLayer || []; function gtag(){dataLayer.push(arguments);} gtag('js', new Date()); gtag('config', 'UA-30006739-3');</script>
<script src="resources/booking_1_files/megabox.api.min.js.다운로드"></script>
<script src="resources/booking_1_files/lozad.min.js.다운로드"></script>
<script src="resources/booking_1_files/megabox.common.min.js.다운로드"></script>
<script src="resources/booking_1_files/megabox.netfunnel.min.js.다운로드"></script>
<script src="resources/booking_1_files/persona.js.다운로드" async=""></script>
<script src="resources/booking_1_files/ui.common.js.다운로드"></script>
<script
	src="resources/booking_1_files/m-ny8Ge9GlYZJI4cgMhnHRaYB3JpsfRgMZ-aSWeaR4SEAM4qWzAZAbZEZkUwWnZPUVNfQ01sOTEtVU9TeHFRAstB2JUHayDnTwPLQdiVB2sg508.js.다운로드"></script>
<script src="resources/booking_1_files/front.js.다운로드"></script>
<script src="resources/booking_1_files/bc4af2fa1e" async=""
	type="text/javascript"></script>
<script src="resources/booking_1_files/bc4af2fa1e(1)" async=""
	type="text/javascript"></script>
<script src="resources/booking_1_files/ts.wseq"></script>
<script src="js/booking/booking_1.js"></script>
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
	<!-- //header -->
		<div class="inner-wrap"
			style="padding-top: 40px; padding-bottom: 100px;">
			<form action="" method="post" name="myForm">
				<input type="hidden" id="rdToken" value="0" /> <input type="hidden"
					id="preListsLength" value="0" /> <input type="hidden" id="mtToken"
					value="0" /> <input type="hidden" id="preMtListsLength" value="0" />
				<input type="hidden" id="mcToken" value="0" /> <input type="hidden"
					id="thToken" value="0" /> <input type="hidden" id="movieSel"
					name="movieSel" value="" /> <input type="hidden" id="regionSel"
					name="regionSel" value="" /> <input type="hidden" id="rdSel"
					name="rdSel" value="" /> <input type="hidden" id="daySel"
					name="daySel"
					value="${dayWeekList[1].year}.${dayWeekList[1].month}.${dayWeekList[1].day}" />
				<input type="hidden" id="daySel2" name="daySel2"
					value="${dayWeekList[1].day}" /> <input type="hidden" id="timeSel"
					name="timeSel" value="" /> <input type="hidden" id="mtnNum"
					name="mtnNum" value="" />
				<div class="quick-reserve">
					<div class="tit-util">
						<h2 class="tit">빠른예매</h2>
						<div id="btnLangChg" class="right btn-ticket"
							style="display: none">
							<button type="button" class="button gray-line"
								onclick="parent.setLangChg()">English</button>
						</div>
					</div>
					<div class="mege-quick-reserve-inculde">
						<div class="time-schedule quick">
							<div class="wrap">
								<button type="button" title="이전 날짜 보기" class="btn-pre"
									disabled="true">
									<i class="iconset ico-cld-pre"></i> <em>이전</em>
								</button>
								<div class="date-list">
									<div class="year-area">
										<div class="year" style="left: 30px; z-index: 1; opacity: 1;">${dayWeekList[1].year}.${dayWeekList[1].month}</div>
										<div class="year" style="left: 450px; z-index: 1; opacity: 0;"></div>
									</div>
									<div class="date-area" id="formDeList">
										<div class="wrap"
											style="position: relative; width: 2100px; border: none; left: -70px;">
											<c:forEach var="dto" items="${dayWeekList}"
												varStatus="status">
												<c:if test="${status.index == 1}">
													<button class="on" type="button" id="day_${dto.day }"
														date-data="${dto.year }.${dto.month }.${dto.day }"
														onclick="dateClk(${dto.year },${dto.month },${dto.day });">
												</c:if>
												<c:if test="${status.index != 1}">
													<button class="" type="button" id="day_${dto.day }"
														date-data="${dto.year }.${dto.month }.${dto.day }"
														onclick="dateClk(${dto.year },${dto.month },${dto.day });">
												</c:if>

												<span class="ir">${dto.year }년 ${dto.month }월</span>
												<em style="pointer-events: none;">${dto.day }<span
													style="pointer-events: none;" class="ir">일</span></em>
												<span class="day-kr"
													style="pointer-events: none; display: inline-block">${dto.dayOfweek }</span>
												</button>
											</c:forEach>
										</div>
									</div>
								</div>

								<!-- 다음날짜 -->
								<button type="button" title="다음 날짜 보기" class="btn-next"
									disabled="true">
									<i class="iconset ico-cld-next"></i> <em>다음</em>
								</button>
								<!--// 다음날짜 -->

								<!-- 달력보기 -->
								<div class="bg-line">
									<input type="hidden" id="datePicker" value="2022.04.11"
										class="hasDatepicker">
									<button type="button" id="calendar"
										onclick="$(&#39;#datePicker&#39;).datepicker(&#39;show&#39;)"
										class="btn-calendar-large" title="달력보기">달력보기</button>

								</div>
								<!--// 달력보기 -->
							</div>
						</div>
						<div class="quick-reserve-area">
							<div class="movie-choice">
								<p class="tit">영화</p>
								<div class="list-area">
									<div class="all-list">
										<button type="button" class="btn-tab on" id="movieAll">전체</button>
										<div class="list">
											<div class="scroll m-scroll mCustomScrollbar _mCS_1"
												id="movieList">
												<div id="mCSB_1"
													class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
													style="max-height: none;" tabindex="0">
													<div id="mCSB_1_container" class="mCSB_container"
														style="position: relative; top: 0; left: 0;" dir="ltr">
														<ul>
															<c:forEach var="dto" items="${movieNamelists}">
																<li><button type="button" class="btn"
																		id="mn_${dto.num }" onclick="mnClk(${dto.num})">
																		<span class="movie-grade small ${dto.tagName }"></span><i
																			class="iconset ico-heart-small">보고싶어 설정안함</i><span
																			class="txt">${dto.name }</span>
																	</button></li>
															</c:forEach>
														</ul>
													</div>

												</div>
											</div>
										</div>
									</div>

								</div>
								<!--// list-area -->

								<!-- view-area -->
								<div class="view-area">

									<!-- 영화 선택 하지 않았을 때 -->
									<div class="choice-all" id="choiceMovieNone"
										style="display: none;">
										<strong>모든영화</strong> <span>목록에서 영화를 선택하세요.</span>
									</div>
									<div class="choice-list" id="choiceMovieList"
										style="display: block;">
										<div class="bg" id="mChoice_1"></div>
										<div class="bg" id="mChoice_2"></div>
										<div class="bg" id="mChoice_3"></div>
									</div>
								</div>
							</div>
							<div class="theater-choice">
								<div class="tit-area">
									<p class="tit">극장</p>
								</div>
								<div class="list-area" id="brchTab">
									<div class="all-list">
										<button type="button" class="btn-tab on">전체</button>
										<div class="list">
											<div class="scroll" id="brchList">
												<ul>
													<c:forEach var="dto" items="${regionlists}">
														<li>
															<button type="button" class="btn" id="region_${dto.num }"
																onclick="regionClk(${dto.num});">
																<span calss="txt">${dto.name }</span>
															</button>
															<div class="depth on">
																<div
																	class="detail-list m-scroll area-cd10 mCustomScrollbar _mCS_4">
																	<div id="mCSB_4"
																		class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
																		style="max-height: none;" tabindex="0">
																		<div id="mCSB_4_container" class="mCSB_container"
																			style="position: relative; top: 0; left: 0;"
																			dir="ltr">

																			<ul>
																				<li id="regionDetailPos"></li>
																			</ul>

																		</div>
																	</div>
																</div>
														</li>
													</c:forEach>
												</ul>
											</div>
										</div>
									</div>

								</div>
								<!--// list-area -->

								<!-- view-area -->
								<div class="view-area">

									<!-- 영화관 선택 하지 않았을 때 -->
									<div class="choice-all" id="choiceBrchNone"
										style="display: none;">
										<strong>전체극장</strong> <span>목록에서 극장을 선택하세요.</span>
									</div>

									<!-- 영화관을 한개라도 선택 했을때 -->
									<div class="choice-list" id="choiceBrchList"
										style="display: block;">
										<div class="bg" id="thChoice_1"></div>
										<div class="bg" id="thChoice_2"></div>
										<div class="bg" id="thChoice_3"></div>
									</div>
								</div>
							</div>
							<div class="time-choice">
								<div class="tit-area">
									<p class="tit">시간</p>

									<div class="right legend">
										<i class="iconset ico-sun" title="조조"></i> 조조 <i
											class="iconset ico-brunch" title="브런치"></i> 브런치 <i
											class="iconset ico-moon" title="심야"></i> 심야
									</div>
								</div>
								<div class="hour-schedule">
									<button type="button" class="btn-prev-time">이전 시간 보기</button>

									<div class="wrap">
										<div class="view"
											style="position: absolute; width: 1015px; transition: none 0s ease 0s; left: -665px;"
											id="hour-scheduleView">
											<%
											for (int i = 0; i < 19; i++) {
											%>
											<button type="button" class="hour">00</button>
											<%
											}
											%>
											<c:forEach var="timeList" items="${timeList}"
												varStatus="status">
												<button type="button" class="hour" style="opacity: 0.5;"
													id="time_${timeList }">${timeList }</button>
											</c:forEach>
										</div>
									</div>
									<button type="button" class="btn-next-time">다음 시간 보기</button>
								</div>
								<div class="movie-schedule-area">
									<div class="no-result" id="playScheduleNonList"
										style="display: none;">
										<i class="iconset ico-movie-time"></i>
										<p class="txt">
											영화와 극장을 선택하시면<br> 상영시간표를 비교하여 볼 수 있습니다.
										</p>
									</div>
									<!-- 영화, 영화관 선택 했을때 -->
									<div class="result">
										<div
											class="scroll m-scroll mCustomScrollbar _mCS_16 mCS_no_scrollbar"
											id="playScheduleList" style="">
											<div id="mCSB_16"
												class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
												style="max-height: none;" tabindex="0">
												<div id="mCSB_16_container"
													class="mCSB_container mCS_no_scrollbar_y"
													style="position: relative; top: 0; left: 0;" dir="ltr">
													<ul>
														<li id="movieTimePos"></li>
													</ul>
												</div>

											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>

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
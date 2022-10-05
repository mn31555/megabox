<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/event.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">
    <title>메가박스</title>
</head>

<body>
    <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="${pageContext.request.contextPath}/main">
                            <em><img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="MEGABOX"></em>
                            <strong><img src="${pageContext.request.contextPath}/assets/img/logo-sub.png" alt="LIFE THEATER"></strong>
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

    <div class="inner-wrap">
        <h2 class="tit">진행중인 이벤트</h2>
        <div class="tab-content">
            <input type="radio" name="tabmenu" id="tab01" checked>
            <label for="tab01">전체</label>
            <input type="radio" name="tabmenu" id="tab02">
            <label for="tab02">메가Pick</label>
            <input type="radio" name="tabmenu" id="tab03">
            <label for="tab03">영화</label>
            <input type="radio" name="tabmenu" id="tab04">
            <label for="tab04">극장</label>
            <input type="radio" name="tabmenu" id="tab05">
            <label for="tab05">제휴/할인</label>
            <input type="radio" name="tabmenu" id="tab06">
            <label for="tab06">시사회/무대인사</label>

            <div class="conbox con1">
                <div class="tit-util top70 bot15">
                    <h3 class="tit">메가Pick</h3>
                </div>

                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/이벤트미니언즈.jpg" alt="미니언즈2 이벤트">
                                </p>
                                <p class="tit">
                                    <미니언즈2>프로모션 콤보 출시
                                </p>
                                <p class="date"> 2022.07.14 ~ 2022.08.07 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/메가박스토르.jpg" alt="토르 이벤트">
                                </p>
                                <p class="tit"> 메가박스 오리지널 티켓 No.57 <토르:러브 앤 썬더>
                                </p>
                                <p class="date"> 2022.07.13 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/7월메가.jpg" alt="7월 메가 이벤트">
                                </p>
                                <p class="tit"> 7월 메7ㅏ 포인트 페스타 </p>
                                <p class="date"> 2022.07.07 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/메가피크닉.jpg" alt="메가피크닉 이벤트">
                                </p>
                                <p class="tit"> 메가피크닉팩 출시 </p>
                                <p class="date"> 2022.06.02 ~ 2022.07.31 </p>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="tit-util top70 bot15">
                    <h3 class="tit">영화</h3>
                </div>

                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/초록.jpg" alt="초록밤 이벤트">
                                </p>
                                <p class="tit">
                                    <초록밤> 프리미어 GV
                                </p>
                                <p class="date"> 2022.07.27 ~ 2022.07.27 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/미니언개봉.jpg" alt="미니언즈2 개봉 이벤트">
                                </p>
                                <p class="tit">
                                    <미니언즈2> 개봉기념 현장증정 이벤트
                                </p>
                                <p class="date"> 2022.07.20 ~ 2022.08.03 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/모어상영회.jpg" alt="모어 상영회 이벤트">
                                </p>
                                <p class="tit">
                                    <모어> 성수 스페셜 GV 상영회
                                </p>
                                <p class="date"> 2022.07.19 ~ 2022.07.19 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/그레이맨.jpg" alt="선착순 이벤트">
                                </p>
                                <p class="tit"> [그레이 맨] 선착순 빵원티켓 </p>
                                <p class="date"> 2022.07.18 ~ 2022.07.18 </p>
                            </a>
                        </li>
                    </ul>
                </div>

            </div>
            <div class="conbox con2">
                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/이벤트미니언즈.jpg" alt="미니언즈2 이벤트">
                                </p>
                                <p class="tit">
                                    <미니언즈2>프로모션 콤보 출시
                                </p>
                                <p class="date"> 2022.07.14 ~ 2022.08.07 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/메가박스토르.jpg" alt="토르 이벤트">
                                </p>
                                <p class="tit"> 메가박스 오리지널 티켓 No.57 <토르:러브 앤 썬더>
                                </p>
                                <p class="date"> 2022.07.13 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/7월메가.jpg" alt="7월 메가 이벤트">
                                </p>
                                <p class="tit"> 7월 메7ㅏ 포인트 페스타 </p>
                                <p class="date"> 2022.07.07 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/메가피크닉.jpg" alt="메가피크닉 이벤트">
                                </p>
                                <p class="tit"> 메가피크닉팩 출시 </p>
                                <p class="date"> 2022.06.02 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/에이드.jpg" alt="에이드 이벤트">
                                </p>
                                <p class="tit"> 무더운 여름, 에이드 한잔! </p>
                                <p class="date"> 2022.07.15 ~ 2022.08.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/허니버터팝콘.png" alt="팝콘론칭 이벤트">
                                </p>
                                <p class="tit"> [메가박스XHBAF] 달콤고소 끝판왕 허니버터팝콘 론칭! </p>
                                <p class="date"> 2022.05.23 ~ 2022.09.30 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/welcome.jpg" alt="돌비 시네마 이벤트">
                                </p>
                                <p class="tit"> WELCOME TO DOLBY CINEMA LAND </p>
                                <p class="date"> 2022.05.04 ~ 2022.08.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/티켓북.jpg" alt="티켓북 이벤트">
                                </p>
                                <p class="tit"> 메가박스 오리지널 티켓북 시즌2 </p>
                                <p class="date"> 2022.04.25 ~ 2022.12.31 </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="conbox con3">
                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/초록.jpg" alt="초록밤 이벤트">
                                </p>
                                <p class="tit">
                                    <초록밤> 프리미어 GV
                                </p>
                                <p class="date"> 2022.07.27 ~ 2022.07.27 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/미니언개봉.jpg" alt="미니언즈2 개봉 이벤트">
                                </p>
                                <p class="tit">
                                    <미니언즈2> 개봉기념 현장증정 이벤트
                                </p>
                                <p class="date"> 2022.07.20 ~ 2022.08.03 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/모어상영회.jpg" alt="모어 상영회 이벤트">
                                </p>
                                <p class="tit">
                                    <모어> 성수 스페셜 GV 상영회
                                </p>
                                <p class="date"> 2022.07.19 ~ 2022.07.19 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/그레이맨.jpg" alt="선착순 이벤트">
                                </p>
                                <p class="tit"> [그레이 맨] 선착순 빵원티켓 </p>
                                <p class="date"> 2022.07.18 ~ 2022.07.18 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/썸머.jpg" alt="관람인증 이벤트">
                                </p>
                                <p class="tit">
                                    <썸머 필름을 타고!> 메가박스 관람인증 이벤트
                                </p>
                                <p class="date"> 2022.07.20 ~ 2022.08.02 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/멘.jpg" alt="굿즈패키지 이벤트">
                                </p>
                                <p class="tit">
                                    <멘> 굿즈패키지 상영회
                                </p>
                                <p class="date"> 2022.07.17 ~ 2022.07.17 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/로스트도터.jpg" alt="현장증정 이벤트">
                                </p>
                                <p class="tit">
                                    <로스트 도터> 개봉기념 현장증정 이벤트
                                </p>
                                <p class="date"> 2022.07.14 ~ 2022.08.03 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/헤어질결심n차.jpg" alt="관람 인증 이벤트">
                                </p>
                                <p class="tit">
                                    <헤어질 결심> N차 관람 인증 이벤트
                                </p>
                                <p class="date"> 2022.07.14 ~ 2022.07.26 </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="conbox con4">
                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/춘천석사.jpg" alt="오픈 이벤트">
                                </p>
                                <p class="tit"> [춘천석사지점] 오픈 이벤트 </p>
                                <p class="date"> 2022.06.24 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/광명소하.jpg" alt="오픈 이벤트">
                                </p>
                                <p class="tit"> [광명소하지점] 오픈 이벤트 </p>
                                <p class="date"> 2022.06.28 ~ 2022.08.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/금정.jpg" alt="오픈 이벤트">
                                </p>
                                <p class="tit"> [금정AK플라자지점] 오픈 이벤트 </p>
                                <p class="date"> 2022.07.01 ~ 2022.08.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/사상.jpg" alt="영수증 할인">
                                </p>
                                <p class="tit"> [사상] 이마트 사상점 구매 영수증으로 할인 받자! </p>
                                <p class="date"> 2022.07.15 ~ 2022.12.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/양산.jpg" alt="포인트 추가 할인">
                                </p>
                                <p class="tit"> [양산] 매점에서 포인트 쓰고 추가 할인 받자! </p>
                                <p class="date"> 2022.07.14 ~ 2022.12.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/북대구.jpg" alt="할인 쿠폰">
                                </p>
                                <p class="tit"> [북대구(칠곡)] 대구시 문화소비 6천원 할인 쿠폰 </p>
                                <p class="date"> 2022.07.14 ~ 2022.08.12 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/굽네치킨.jpg" alt="할인">
                                </p>
                                <p class="tit"> [굽네치킨X김포한강신도시점] 영화보면 굽네치킨 3,000원 할인 </p>
                                <p class="date"> 2022.07.13 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/부산대.jpg" alt="할인">
                                </p>
                                <p class="tit"> [부산대] 중,고등학생!! 할인 받고 영화 보자! </p>
                                <p class="date"> 2022.07.11 ~ 2022.12.31 </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="conbox con5">
                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/카카오페이.jpg" alt="결제 이벤트">
                                </p>
                                <p class="tit"> [카카오페이] 온라인 결제 시 즉시 할인 선착순 혜택 제공! </p>
                                <p class="date"> 2022.07.15 ~ 2022.07.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/kt.jpg" alt="이벤트">
                                </p>
                                <p class="tit"> [KT멤버십X메가박스] 7월 '나의 초이스' 8천원 영화관람 </p>
                                <p class="date"> 2022.07.11 ~ 2022.07.24 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/휘닉스.jpg" alt="영화 티켓">
                                </p>
                                <p class="tit"> [휘닉스제주X메가박스] 휘닉스제주 이용하고 영화 티켓 받자! </p>
                                <p class="date"> 2022.07.08 ~ 2022.10.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/더쎈카드.png" alt="이벤트">
                                </p>
                                <p class="tit"> [메가박스X더쎈카드] 내 카드 할인 혜택 확인하고 관람권 받자! </p>
                                <p class="date"> 2022.06.24 ~ 2022.08.23 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/삼성페이.jpg" alt="이벤트">
                                </p>
                                <p class="tit"> 삼성페이 티켓담기 하고 오리지널 팝콘 받아가세요! </p>
                                <p class="date"> 2022.06.23 ~ 2022.07.24 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/대한항공.jpg" alt="이벤트">
                                </p>
                                <p class="tit"> [대한항공X메가박스] SKYPASS 회원 할인 프로모션 </p>
                                <p class="date"> 2022.06.02 ~ 2022.12.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/에버랜드.jpg" alt="이벤트">
                                </p>
                                <p class="tit"> [에버랜드X메가박스] 제휴 할인 프로모션! </p>
                                <p class="date"> 2022.06.01 ~ 2022.12.31 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/보험료.jpg" alt="이벤트">
                                </p>
                                <p class="tit"> 내 차 보험료 확인하고 영화 1만원 할인쿠폰 받으세요! </p>
                                <p class="date"> 2022.04.18 ~ 2022.12.31 </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="conbox con6">
                <div class="event-list top15">
                    <ul>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/외계인.png" alt="이벤트">
                                </p>
                                <p class="tit">
                                    <외계+인 1부> 개봉주 무대인사
                                </p>
                                <p class="date"> 2022.07.23 ~ 2022.07.24 </p>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <p class="img">
                                    <img src="${pageContext.request.contextPath}/assets/img/더킬러.jpg" alt="이벤트">
                                </p>
                                <p class="tit">
                                    <더 킬러:죽어도 되는 아이> 개봉주 무대인사
                                </p>
                                <p class="date"> 2022.07.16 ~ 2022.07.17 </p>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
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
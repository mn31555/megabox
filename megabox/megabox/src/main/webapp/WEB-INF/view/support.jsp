<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="author" content="webstoryboy">
    <meta name="description" content="메가박스 사이트 따라하면서 배우는 튜토리얼입니다.">
    <meta name="keywords" content="메가박스, 유투브, 영화, 최신영화, 영화관, CGV, 롯데시네마, 웹스토리보이, 웹스, 사이트 만들기, 따라하기">
    <title>메가박스</title>

    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/reset.css"
   rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/style.css"
   rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/support.css"
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

</head>

<body>
    <header id="header">
        <div class="container">
            <div class="row">
                <div class="header clearfix">
                    <h1>
                        <a href="/main"> <em><img src="/assets/img/logo.png" alt="MEGABOX"></em> <strong><img
                                    src="/assets/img/logo-sub.png" alt="LIFE THEATER"></strong>
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
    <div class="container1 has-lnb">
        <div class="page-util">
            <div class="inner-wrap">
                <div class="location">
                    <span>Home</span>
                    <a href="/support" title="고객센터 페이지로 이동">고객센터</a>
                    <a href="/support" title="고객센터 페이지로 이동">고객센터 홈</a>
                </div>

            </div>
        </div>

        <div class="inner-wrap">
            <div class="lnb-area addchat">
                <nav id="lnb">
                    <p class="tit"><a href="/support" title="고객센터">고객센터</a></p>
                    <ul>
                        <li class="on"><a href="/support" title="고객센터 홈">고객센터 홈</a></li>
                        <li><a href="/support/faq" title="자주 묻는 질문">자주 묻는 질문</a></li>
                        <li><a href="/support/notice" title="공지사항">공지사항</a></li>
                        <li><a href="/support/inquiry" title="1:1문의">1:1문의</a></li>
                        <li><a href="/support/rent" title="단체관람 및 대관문의">단체관람 및 대관문의</a></li>
                        <li><a href="/support/lost" title="분실물 문의">분실물 문의</a></li>
                        <li><a href="/support/terms" title="이용약관">이용약관</a></li>
                        <li><a href="/support/lcinfo" title="위치기반서비스이용약관">위치기반서비스이용약관</a></li>
                        <li><a href="/support/privacy" title="개인정보처리방침">개인정보처리방침</a></li>
                        <li><a href="/support/screenrule" style="border-radius: 0 0 10px 10px;"
                                title="스크린배정수에관한기준">스크린배정수에관한기준</a></li>
                    </ul>

                    <!-- 고객센터 메뉴일때만 출력 -->
                    <div class="left-customer-info">
                        <p class="tit">
                            메가박스 고객센터
                            <span>Dream center</span>
                        </p>
                        <p class="time"><i class="iconset ico-clock"></i> 10:00~19:00</p>
                    </div>
                </nav>
            </div>

            <div id="contents">
                <h2 class="tit">고객센터 홈</h2>

                <!-- input-search-area -->
                <div class="input-search-area mb30">
                    <div class="input-area">
                        <label for="search01" class="label">빠른검색</label>

                        <div class="board-search w460px">
                            <input type="search" id="searchTxt" title="검색어를 입력해 주세요." placeholder="검색어를 입력해 주세요."
                                class="input-text" maxlength="15">
                            <button type="button" class="btn-search-input" id="searchBtn">검색</button>
                        </div>
                    </div>

                    <div class="btn-area">

                    </div>
                </div>
                <!--// input-search-area -->

                <div class="custo-main">
                    <div class="main-block">
                        <div class="block-content" style="display: none">
                            <a href="#" id="channelTalk" title="상담톡 이용">
                                <p>
                                    <strong>상담톡 이용</strong>
                                    상담톡으로 편리하게 문의해주세요.
                                </p>
                            </a>
                        </div>
                        <div class="block-content">
                            <a href="/support/lost" title="분실물 문의 페이지로 이동">
                                <p>
                                    <strong>분실물 문의</strong>
                                    잃어버린 물건을 접수해 주시면<br>신속히 찾아드리겠습니다.
                                </p>
                            </a>
                        </div>
                        <div class="block-content">
                            <a href="/support/inquiry" title="1:1 문의 페이지로 이동">
                                <p>
                                    <strong>1:1 문의</strong>
                                    해결되지않은 문제가 있나요?<br>1:1문의로 문의주세요
                                </p>
                            </a>
                        </div>
                        <div class="block-content">
                            <a href="/support/rent" title="단체관람 및 대관문의 페이지로 이동">
                                <p>
                                    <strong>단체관람 및 대관문의</strong>
                                    단체관람 또는 대관을 원하시면<br>문의 해주세요.
                                </p>
                            </a>
                        </div>
                        <div class="block-content">
                            <a href="/benefit/discount/guide" title="할인카드 안내 페이지로 이동">
                                <p>
                                    <strong>할인카드 안내</strong>
                                    멤버십 제휴카드 및 다양한 할인카드를<br>통해 알뜰하게 영화 감상하세요.
                                </p>
                            </a>
                        </div>
                        <div class="block-content">
                            <a href="/support/faq" title="자주 묻는 질문 페이지로 이동">
                                <p>
                                    <strong>자주 묻는 질문</strong>
                                    자주 묻는 질문<br>빠르고 간편하게 검색하세요.
                                </p>
                            </a>
                        </div>
                    </div>

                    <div class="notice-wrap">
                        <div class="block left">
                            <div class="tit-area">
                                <h3 class="tit small">자주 묻는 질문 BEST5</h3>

                                <a href="/support/faq" class="more" title="더보기">더보기 <i
                                        class="iconset ico-arr-right-gray ml07"></i></a>
                            </div>
                            <div class="">
                                <ol class="decimal-list">

                                    <li>
                                        <a href="#" class="faqBtn" data-idx="1" title="질문 상세보기">
                                            <span class="font-roboto">1</span>&nbsp;
                                            <span class="font-gblue">[결제수단/관람권]</span> 멤버십에 등록한 영화관람권 삭제는 어떻게 하나요?
                                            <span class="date">2022.01.04</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="faqBtn" data-idx="2" title="질문 상세보기">
                                            <span class="font-roboto">2</span>&nbsp;
                                            <span class="font-gblue">[극장]</span> 오리지널 티켓 및 특전 수량 안내
                                            <span class="date">2020.08.12</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="faqBtn" data-idx="3" title="질문 상세보기">
                                            <span class="font-roboto">3</span>&nbsp;
                                            <span class="font-gblue">[VIP]</span> 매점 상품 구매 후 적립한 포인트도 VIP 선정시 포함되나요?
                                            <span class="date">2020.03.13</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="faqBtn" data-idx="4" title="질문 상세보기">
                                            <span class="font-roboto">4</span>&nbsp;
                                            <span class="font-gblue">[VIP]</span> 포인트 사용시 VIP 등급에 선정되지 못하나요?
                                            <span class="date">2020.03.13</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="faqBtn" data-idx="5" title="질문 상세보기">
                                            <span class="font-roboto">5</span>&nbsp;
                                            <span class="font-gblue">[영화예매]</span> 영화 관람권으로 예매하는 방법
                                            <span class="date">2020.01.16</span>
                                        </a>
                                    </li>

                                </ol>
                            </div>
                        </div>

                        <div class="block right">
                            <div class="tit-area">
                                <h3 class="tit small">공지사항</h3>

                                <a href="/support/notice" class="more" title="더보기">더보기 <i
                                        class="iconset ico-arr-right-gray ml07"></i></a>
                            </div>

                            <div class="decimal-list">
                                <ol>

                                    <li>
                                        <a href="#" class="moveBtn" data-no="10631" title="공지사항 상세보기">



                                            <span class="font-purple"><i class="iconset ico-marker"></i> [코엑스]</span>


                                            [코엑스] 7/25 &lt;비상선언&gt; 시사회 진행에 따른 이용 안내
                                            <span class="date">2022.07.18</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="moveBtn" data-no="10630" title="공지사항 상세보기">



                                            <span class="font-purple"><i class="iconset ico-marker"></i> [대전신세계
                                                아트앤사이언스]</span>


                                            [대전신세계 아트앤사이언스] 영화관 방문 고객 지하주차장 이용 안내(07/18)
                                            <span class="date">2022.07.18</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="moveBtn" data-no="10629" title="공지사항 상세보기">


                                            <span class="font-gblue"><i class="iconset ico-notice"></i> [이벤트]</span>



                                            [돌비 시네마 랜드] 이벤트 기간 변경 안내
                                            <span class="date">2022.07.12</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="moveBtn" data-no="10628" title="공지사항 상세보기">



                                            <span class="font-purple"><i class="iconset ico-marker"></i>
                                                [금정AK플라자]</span>


                                            [금정AK플라자지점] 영화관 방문 고객 주차장 안내
                                            <span class="date">2022.07.12</span>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#" class="moveBtn" data-no="10627" title="공지사항 상세보기">



                                            <span class="font-purple"><i class="iconset ico-marker"></i> [강남]</span>


                                            [강남] 7월 9일 긴급점검으로 인한 운영중단 및 취소 안내
                                            <span class="date">2022.07.09</span>
                                        </a>
                                    </li>

                                </ol>
                            </div>
                        </div>
                    </div>
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
                            <img src="assets/img/logo_footer.png" alt="megabox">
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
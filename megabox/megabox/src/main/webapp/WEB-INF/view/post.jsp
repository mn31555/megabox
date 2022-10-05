<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
        content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>메가박스</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/review/post.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">

    <!-- 파비콘 -->
    <link rel="shortcut icon" href="assets/icons/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="assets/icons/favicon_72.png" />
    <link rel="apple-touch-icon-precomposed" sizes="96x96" href="assets/icons/favicon_96.png" />
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/icons/favicon_144.png" />
    <link rel="apple-touch-icon-precomposed" sizes="192x192" href="assets/icons/favicon_192.png" />

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


    <div id="contents" class="pt00">
        <!-- post lank  -->
        <div class="post-lank-box">
            <div class="inner-wrap">
                <h2 class="tit">무비포스트</h2>
                <!-- post-lank -->
                <ol class="post-lank">


                    <li>
                        <a href="#" class="top5Btn" data-no="스파이더맨: 노 웨이 홈" title="스파이더맨: 노 웨이 홈 무비포스트 보기">
                            <p class="lank">1</p>

                            <div class="post-count">
                                <p class="tit">POST</p>
                                <p class="count">1,135</p>
                            </div>

                            <p class="img"><img
                                    src="https://img.megabox.co.kr/SharedImg/2021/12/16/ixl5QxDVs5Gn8nQN3rslK8BUmgFVklj8_150.jpg"
                                    onerror="noImg(this)" alt="스파이더맨: 노 웨이 홈"></p>
                        </a>
                    </li>



                    <li>
                        <a href="#" class="top5Btn" data-no="범죄도시 2" title="범죄도시 2 무비포스트 보기">
                            <p class="lank">2</p>

                            <div class="post-count">
                                <p class="tit">POST</p>
                                <p class="count">975</p>
                            </div>

                            <p class="img"><img
                                    src="https://img.megabox.co.kr/SharedImg/2022/05/23/oZfETtpEvKGpdY2JQo2Z6wFL0S4cpKy5_150.jpg"
                                    onerror="noImg(this)" alt="범죄도시 2"></p>
                        </a>
                    </li>



                    <li>
                        <a href="#" class="top5Btn" data-no="탑건: 매버릭" title="탑건: 매버릭 무비포스트 보기">
                            <p class="lank">3</p>

                            <div class="post-count">
                                <p class="tit">POST</p>
                                <p class="count">506</p>
                            </div>

                            <p class="img"><img
                                    src="https://img.megabox.co.kr/SharedImg/2022/05/09/6zfAYe6IrZ8BWnruqEfafwakt5cUjWgX_150.jpg"
                                    onerror="noImg(this)" alt="탑건: 매버릭"></p>
                        </a>
                    </li>



                    <li>
                        <a href="#" class="top5Btn" data-no="모가디슈" title="모가디슈 무비포스트 보기">
                            <p class="lank">4</p>

                            <div class="post-count">
                                <p class="tit">POST</p>
                                <p class="count">505</p>
                            </div>

                            <p class="img"><img
                                    src="https://img.megabox.co.kr/SharedImg/2021/08/20/RXpJHrGvZZDIKAD5rqJWL4kSzlI2Fy54_150.jpg"
                                    onerror="noImg(this)" alt="모가디슈"></p>
                        </a>
                    </li>



                    <li>
                        <a href="#" class="top5Btn" data-no="닥터 스트레인지: 대혼돈의 멀티버스" title="닥터 스트레인지: 대혼돈의 멀티버스 무비포스트 보기">
                            <p class="lank">5</p>

                            <div class="post-count">
                                <p class="tit">POST</p>
                                <p class="count">468</p>
                            </div>

                            <p class="img"><img
                                    src="https://img.megabox.co.kr/SharedImg/2022/05/04/4OFqLBLmda67a6BPXjaXCVM5wun7FAtb_150.jpg"
                                    onerror="noImg(this)" alt="닥터 스트레인지: 대혼돈의 멀티버스"></p>
                        </a>
                    </li>


                </ol>
                <!--// post-lank -->

                <!-- mypost-box -->
                <div class="mypost-box">



                    <!-- 로그인 전 -->
                    <div class="before">
                        <div class="post-count">
                            <p class="tit">MY POST</p>
                            <a href="javaScript:fn_viewLoginPopup('default','pc');" class="txt-login"
                                title="로그인하기">로그인하기</a>
                        </div>
                    </div>


                </div>
                <!--// mypost-box -->

                <!-- add-post -->
                <div class="add-post">
                    <a href="#" class="button purple" title="무비포스트 작성">무비포스트 작성</a>
                </div>
                <!--// add-post -->
            </div>
        </div>
        <!--// post lank -->

        <!--content:Start -->
        <div class="inner-wrap">

            <div class="tab-content">
                <input type="radio" name="tabmenu" id="tab01" checked>
                <label for="tab01">박스오피스</label>
                <input type="radio" name="tabmenu" id="tab02">
                <label for="tab02">상영예정작</label>



                <div class="board-list-util">
                    <p class="result-count"><strong>전체 <b class="result-count-cnt">190,403</b>건</strong></p>



                    <div class="board-search">
                        <input type="text" id="ibxMovieNmSearch" name="ibxMovieNmSearch" title="검색어를 입력해 주세요."
                            placeholder="제목, 배우, 아이디" class="input-text" value="">
                        <input type="hidden" id="moviePostId" name="moviePostId" value="">
                        <button type="button" class="btn-search-input" id="btnSearch">검색</button>
                    </div>
                </div>

                <!-- movie-post-list -->
                <div class="conbox con1">
                    <div class="movie-post-list" id="moviePostList" style="position: relative; height: 1500px;">
                        <ol class="list" id="movieList">
                            <div class="grid-item">
                                <div class="wrap">
                                    <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                            class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                            data-no="208530" data-row="1" data-tot="190403" data-url=""><img
                                                src="https://img.megabox.co.kr/SharedImg/2022/05/23/U2VXGxzAQDeoGwI10YMS6RuJQULq6aqb_230.jpg"
                                                alt="범죄도시 2" onerror="noImg(this);"> /&gt;</a> </div>
                                    <div class="cont">
                                        <div class="writer"> <a href="#" title="lems**님의 무비포스트 보기" class="moviePostId"
                                                data-id="5F77EEA5-EF72-4D2A-ABDA-C1EAFB922976">lems**</a> </div> <a
                                            href="/movie-detail?rpstMovieNo=22018700" title="범죄도시 2 상세보기">
                                            <p class="tit">범죄도시 2</p>
                                        </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                            class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                            data-no="208530" data-row="1" data-tot="190403">
                                            <p class="txt">시작부터 끝까지 죽이는 씬 밖에 남는게 없네요<br>시즌1보다 내용은 정말없음..</p>
                                            <p class="time">12 분전</p>
                                        </a>
                                        <div class="condition"> <button type="button"
                                                class="btn-like postLikeBtn listBtn jsMake" data-no="208530"><i
                                                    class="iconset ico-like">좋아요 수</i> <span
                                                    class="none">0</span></button> <a href="#layer_post_detail"
                                                title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup"
                                                w-data="850" h-data="auto" data-no="208530" data-row="1"
                                                data-tot="190403"><i class="iconset ico-reply">댓글 수</i>
                                                0</a> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="grid-item">
                                <div class="wrap">
                                    <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                            class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                            data-no="208529" data-row="2" data-tot="190403" data-url=""><img
                                                src="https://img.megabox.co.kr/SharedImg/2022/06/07/S3GJQZbpshoIx0Lelerscl9rlI14FHqK_230.jpg"
                                                alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                                    <div class="cont">
                                        <div class="writer"> <a href="#" title="fy5577**님의 무비포스트 보기" class="moviePostId"
                                                data-id="9A26B68B-B40E-4E3A-A658-763EF953330C">fy5577**</a> </div> <a
                                            href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                            <p class="tit">헤어질 결심</p>
                                        </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                            class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                            data-no="208529" data-row="2" data-tot="190403">
                                            <p class="txt">글쎄 나는 박찬욱식 유머가 별로 재미 없더라</p>
                                            <p class="time">29 분전</p>
                                        </a>
                                        <div class="condition"> <button type="button"
                                                class="btn-like postLikeBtn listBtn jsMake" data-no="208529"><i
                                                    class="iconset ico-like">좋아요 수</i> <span
                                                    class="none">0</span></button> <a href="#layer_post_detail"
                                                title="댓글 작성하기" class="link btn-modal-open2 post-detailRlyPopup"
                                                w-data="850" h-data="auto" data-no="208529" data-row="2"
                                                data-tot="190403"><i class="iconset ico-reply">댓글 수</i>
                                                0</a> </div>
                                    </div>
                                </div>
                            </div>
                            <div class="grid-item" ">
                <div class=" wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208528" data-row="3" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/10/OHzTKqp4PsY8jHuiFZKs6yU6a1vmWGIX_230.jpg"
                                            alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="nike96**님의 무비포스트 보기" class="moviePostId"
                                            data-id="5DE8E00D-B983-46F4-B960-838FE2CEC3C0">nike96**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                        <p class="tit">탑건: 매버릭</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208528" data-row="3" data-tot="190403">
                                        <p class="txt">공중전에서 손에 땀을 쥐게하고 움찔움찔하게 만드는 영화입니다.</p>
                                        <p class="time">1 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208528"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">0</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208528" data-row="3" data-tot="190403"><i
                                                class="iconset ico-reply">댓글 수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208527"
                                    data-row="4" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/24/0iXw7rnUGTtHKCdWrlNuwmWta6AIrHct_230.jpg"
                                        alt="토르: 러브 앤 썬더" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="smange**님의 무비포스트 보기" class="moviePostId"
                                        data-id="C4711310-2507-4288-B77E-51ACCF2CBFDC">smange**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22028200" title="토르: 러브 앤 썬더 상세보기">
                                    <p class="tit">토르: 러브 앤 썬더</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208527" data-row="4" data-tot="190403">
                                    <p class="txt">햄스워스 가족 사업이라는 점을 다시 한번 느낌...<br>3에서 끝냈어야할 영화</p>
                                    <p class="time">3 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208527"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208527" data-row="4" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208526"
                                    data-row="5" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/05/25/SEE2wpD224td3PT0UB3BpFKJ8nomJMw8_230.jpg"
                                        alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="rim062607**님의 무비포스트 보기" class="moviePostId"
                                        data-id="10942047-9D51-4BCF-9BED-2FACBB973C34">rim062607**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                    <p class="tit">탑건: 매버릭</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208526" data-row="5" data-tot="190403">
                                    <p class="txt">역시 믿고보는 탐크루즈~ 넘넘 잼나게 봤어요~</p>
                                    <p class="time">3 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208526"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208526" data-row="5" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208525"
                                    data-row="6" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/24/Idsmtp80aohlKP8hDjxELo8QDhQpv1Ea_230.jpg"
                                        alt="토르: 러브 앤 썬더" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="p107015ho**님의 무비포스트 보기" class="moviePostId"
                                        data-id="43ADE9DE-7B31-4BA1-B1D1-83EFA8ABAA64">p107015ho**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22028200" title="토르: 러브 앤 썬더 상세보기">
                                    <p class="tit">토르: 러브 앤 썬더</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208525" data-row="6" data-tot="190403">
                                    <p class="txt">좀 유치찬란했음….</p>
                                    <p class="time">5 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208525"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208525" data-row="6" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208524"
                                    data-row="7" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/24/fPb1Ajy4K7nkYRaHTIQ7PUm2vgQHbHwS_230.jpg"
                                        alt="토르: 러브 앤 썬더" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="oasisimoa**님의 무비포스트 보기" class="moviePostId"
                                        data-id="E7FF30CE-6695-4743-994A-0C2A12EAB337">oasisimoa**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22028200" title="토르: 러브 앤 썬더 상세보기">
                                    <p class="tit">토르: 러브 앤 썬더</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208524" data-row="7" data-tot="190403">
                                    <p class="txt">3d로 몇년만에 영화감상 했는데 입체감이 상당히 좋았고 영화도 재밌게 잘봤습니다.</p>
                                    <p class="time">8 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208524"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208524" data-row="7" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208523"
                                    data-row="8" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/07/05/VGcTrtwYse6eztEurBE4Ft2BLVXhnlS8_230.jpg"
                                        alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="lo1003**님의 무비포스트 보기" class="moviePostId"
                                        data-id="1F671DAB-A065-477F-A762-673814C9B222">lo1003**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                    <p class="tit">헤어질 결심</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208523" data-row="8" data-tot="190403">
                                    <p class="txt">마침내… n차 관람 무조건 가야죠!</p>
                                    <p class="time">9 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208523"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208523" data-row="8" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208522"
                                    data-row="9" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/07/FQQBP11X1tWexd9hBLS5SCMX2EWVzis8_230.jpg"
                                        alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="wnsals47**님의 무비포스트 보기" class="moviePostId"
                                        data-id="E6B0026E-B79E-4147-8453-AF10DB63B524">wnsals47**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                    <p class="tit">탑건: 매버릭</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208522" data-row="9" data-tot="190403">
                                    <p class="txt">LAST MOVIE STAR, TOM CRUISE. 그런 그의 최고의 작품.</p>
                                    <p class="time">9 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208522"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208522" data-row="9" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208521"
                                    data-row="10" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/20/y325IC6Z6sKTfHJFNo6p9mDwgFfaFOa3_230.jpg"
                                        alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="lsmin08**님의 무비포스트 보기" class="moviePostId"
                                        data-id="8A0CB6B7-B6B1-42A9-BEE8-511D233B8BD1">lsmin08**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                    <p class="tit">ㅋㅋㅋㅋ</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208521" data-row="10" data-tot="190403">
                                    <p class="txt">한국에선 결혼하면 다른 사람을 사랑 못 합니까?</p>
                                    <p class="time">10 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208521"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208521" data-row="10" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208520"
                                    data-row="11" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/07/FQQBP11X1tWexd9hBLS5SCMX2EWVzis8_230.jpg"
                                        alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="pp43**님의 무비포스트 보기" class="moviePostId"
                                        data-id="375E58D0-2BE5-4B9B-B608-6BA6906F5873">pp43**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                    <p class="tit">탑건: 매버릭</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208520" data-row="11" data-tot="190403">
                                    <p class="txt">20년 넘어 2탄을 봐도<br>너무나 멋진 영화</p>
                                    <p class="time">10 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208520"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208520" data-row="11" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>

                        </div>
                    </div>
                    <div class="grid-item">
                        <div class="wrap">
                            <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto" data-no="208519"
                                    data-row="12" data-tot="190403" data-url=""><img
                                        src="https://img.megabox.co.kr/SharedImg/2022/06/17/eiCsk3lSogri5Wxt5cv9bAwDk3GSe772_230.jpg"
                                        alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                            <div class="cont">
                                <div class="writer"> <a href="#" title="aurajsy**님의 무비포스트 보기" class="moviePostId"
                                        data-id="E916D9B9-8D3B-485A-A00E-86BDB23A29DC">aurajsy**</a> </div> <a
                                    href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                    <p class="tit">헤어질 결심</p>
                                </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                    class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                    data-no="208519" data-row="12" data-tot="190403">
                                    <p class="txt">헤어질결심</p>
                                    <p class="time">11 시간전</p>
                                </a>
                                <div class="condition"> <button type="button"
                                        class="btn-like postLikeBtn listBtn jsMake" data-no="208519"><i
                                            class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button> <a
                                        href="#layer_post_detail" title="댓글 작성하기"
                                        class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                        data-no="208519" data-row="12" data-tot="190403"><i class="iconset ico-reply">댓글
                                            수</i>
                                        0</a> </div>
                            </div>
                        </div>
                    </div>
                    <ol>
                </div>

            </div>
            <div class="conbox con2">
                <div class="movie-post-list" id="moviePostList" style="position: relative; height: 1500px;">
                    <ol class="list" id="movieList">
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208586" data-row="3" data-tot="190454" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/03/AVssVis4YA3ZD9epxU1yuvBKxN6rLC2R_230.jpg"
                                            alt="룸 쉐어링" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="ej69**님의 무비포스트 보기" class="moviePostId"
                                            data-id="E9E1C31A-4A93-42A5-BC3C-F8B7AE75DA1F">ej69**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22030200" title="룸 쉐어링 상세보기">
                                        <p class="tit">룸 쉐어링</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208586" data-row="3" data-tot="190454">
                                        <p class="txt">앞으로 어떻게 살아가야 할지 생각해보고 좋았어요</p>
                                        <p class="time">35 분전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208586"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208586" data-row="3" data-tot="190454"><i
                                                class="iconset ico-reply">댓글 수</i> 0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208592" data-row="2" data-tot="6621" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/05/30/y4rLG5QGU3p8HuaU7kdEiJ697jtwRAUG_230.jpg"
                                            alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="sara8111**님의 무비포스트 보기" class="moviePostId"
                                            data-id="4C7A991E-885B-4373-8084-C2B273E8955D">sara8111**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                        <p class="tit">탑건: 매버릭</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208592" data-row="2" data-tot="6621">
                                        <p class="txt">화려한 비행신과 톰아저씨의 연기가 넘좋았어요</p>
                                        <p class="time">5 분전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208592"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">0</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208592" data-row="2" data-tot="6621"><i
                                                class="iconset ico-reply">댓글 수</i> 0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208591" data-row="3" data-tot="6621" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/05/25/hVfmxlWDE7kYeExhFPOKT8YLe1yBWF2E_230.jpg"
                                            alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="ts6804**님의 무비포스트 보기" class="moviePostId"
                                            data-id="B650C756-CD59-40DC-9B68-BCD28AC5D445">ts6804**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                        <p class="tit">탑건: 매버릭</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208591" data-row="3" data-tot="6621">
                                        <p class="txt">남양주 돌비 시네마에서 봤는데 다르긴 다르네요~~</p>
                                        <p class="time">20 분전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208591"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">0</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208591" data-row="3" data-tot="6621"><i
                                                class="iconset ico-reply">댓글 수</i> 0</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208587" data-row="6" data-tot="6621" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/28/UbhwejgLpS72jR9UlZLdgduFTgtGnrFw_230.jpg"
                                            alt="마녀(魔女) Part2. The Other One" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="ej69**님의 무비포스트 보기" class="moviePostId"
                                            data-id="E9E1C31A-4A93-42A5-BC3C-F8B7AE75DA1F">ej69**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22027700"
                                        title="마녀(魔女) Part2. The Other One 상세보기">
                                        <p class="tit">마녀(魔女) Part2. The Other One</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208587" data-row="6" data-tot="6621">
                                        <p class="txt">우리 cg가 이만큼 발전햇다니 깜짝 놀랐어요 대단합니다</p>
                                        <p class="time">2 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208587"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">0</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208587" data-row="6" data-tot="6621"><i
                                                class="iconset ico-reply">댓글 수</i> 0</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208586" data-row="7" data-tot="6621" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/03/AVssVis4YA3ZD9epxU1yuvBKxN6rLC2R_230.jpg"
                                            alt="룸 쉐어링" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="ej69**님의 무비포스트 보기" class="moviePostId"
                                            data-id="E9E1C31A-4A93-42A5-BC3C-F8B7AE75DA1F">ej69**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22030200" title="룸 쉐어링 상세보기">
                                        <p class="tit">룸 쉐어링</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208586" data-row="7" data-tot="6621">
                                        <p class="txt">앞으로 어떻게 살아가야 할지 생각해보고 좋았어요</p>
                                        <p class="time">2 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208586"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208586" data-row="7" data-tot="6621"><i
                                                class="iconset ico-reply">댓글 수</i> 0</a> </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208525" data-row="6" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/24/Idsmtp80aohlKP8hDjxELo8QDhQpv1Ea_230.jpg"
                                            alt="토르: 러브 앤 썬더" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="p107015ho**님의 무비포스트 보기" class="moviePostId"
                                            data-id="43ADE9DE-7B31-4BA1-B1D1-83EFA8ABAA64">p107015ho**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22028200" title="토르: 러브 앤 썬더 상세보기">
                                        <p class="tit">토르: 러브 앤 썬더</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208525" data-row="6" data-tot="190403">
                                        <p class="txt">좀 유치찬란했음….</p>
                                        <p class="time">5 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208525"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208525" data-row="6" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208524" data-row="7" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/24/fPb1Ajy4K7nkYRaHTIQ7PUm2vgQHbHwS_230.jpg"
                                            alt="토르: 러브 앤 썬더" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="oasisimoa**님의 무비포스트 보기" class="moviePostId"
                                            data-id="E7FF30CE-6695-4743-994A-0C2A12EAB337">oasisimoa**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22028200" title="토르: 러브 앤 썬더 상세보기">
                                        <p class="tit">토르: 러브 앤 썬더</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208524" data-row="7" data-tot="190403">
                                        <p class="txt">3d로 몇년만에 영화감상 했는데 입체감이 상당히 좋았고 영화도 재밌게 잘봤습니다.</p>
                                        <p class="time">8 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208524"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208524" data-row="7" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208523" data-row="8" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/07/05/VGcTrtwYse6eztEurBE4Ft2BLVXhnlS8_230.jpg"
                                            alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="lo1003**님의 무비포스트 보기" class="moviePostId"
                                            data-id="1F671DAB-A065-477F-A762-673814C9B222">lo1003**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                        <p class="tit">헤어질 결심</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208523" data-row="8" data-tot="190403">
                                        <p class="txt">마침내… n차 관람 무조건 가야죠!</p>
                                        <p class="time">9 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208523"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208523" data-row="8" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208522" data-row="9" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/07/FQQBP11X1tWexd9hBLS5SCMX2EWVzis8_230.jpg"
                                            alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="wnsals47**님의 무비포스트 보기" class="moviePostId"
                                            data-id="E6B0026E-B79E-4147-8453-AF10DB63B524">wnsals47**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                        <p class="tit">탑건: 매버릭</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208522" data-row="9" data-tot="190403">
                                        <p class="txt">LAST MOVIE STAR, TOM CRUISE. 그런 그의 최고의 작품.</p>
                                        <p class="time">9 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208522"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208522" data-row="9" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208521" data-row="10" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/20/y325IC6Z6sKTfHJFNo6p9mDwgFfaFOa3_230.jpg"
                                            alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="lsmin08**님의 무비포스트 보기" class="moviePostId"
                                            data-id="8A0CB6B7-B6B1-42A9-BEE8-511D233B8BD1">lsmin08**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                        <p class="tit">ㅋㅋㅋㅋ</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208521" data-row="10" data-tot="190403">
                                        <p class="txt">한국에선 결혼하면 다른 사람을 사랑 못 합니까?</p>
                                        <p class="time">10 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208521"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208521" data-row="10" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208520" data-row="11" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/07/FQQBP11X1tWexd9hBLS5SCMX2EWVzis8_230.jpg"
                                            alt="탑건: 매버릭" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="pp43**님의 무비포스트 보기" class="moviePostId"
                                            data-id="375E58D0-2BE5-4B9B-B608-6BA6906F5873">pp43**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22018400" title="탑건: 매버릭 상세보기">
                                        <p class="tit">탑건: 매버릭</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208520" data-row="11" data-tot="190403">
                                        <p class="txt">20년 넘어 2탄을 봐도<br>너무나 멋진 영화</p>
                                        <p class="time">10 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208520"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208520" data-row="11" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="grid-item">
                            <div class="wrap">
                                <div class="img"> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="post-detailPopup btn-modal-open2" w-data="850" h-data="auto"
                                        data-no="208519" data-row="12" data-tot="190403" data-url=""><img
                                            src="https://img.megabox.co.kr/SharedImg/2022/06/17/eiCsk3lSogri5Wxt5cv9bAwDk3GSe772_230.jpg"
                                            alt="헤어질 결심" onerror="noImg(this);"> /&gt;</a> </div>
                                <div class="cont">
                                    <div class="writer"> <a href="#" title="aurajsy**님의 무비포스트 보기" class="moviePostId"
                                            data-id="E916D9B9-8D3B-485A-A00E-86BDB23A29DC">aurajsy**</a> </div> <a
                                        href="/movie-detail?rpstMovieNo=22022900" title="헤어질 결심 상세보기">
                                        <p class="tit">헤어질 결심</p>
                                    </a> <a href="#layer_post_detail" title="무비포스트 상세보기"
                                        class="link btn-modal-open2 post-detailPopup" w-data="850" h-data="auto"
                                        data-no="208519" data-row="12" data-tot="190403">
                                        <p class="txt">헤어질결심</p>
                                        <p class="time">11 시간전</p>
                                    </a>
                                    <div class="condition"> <button type="button"
                                            class="btn-like postLikeBtn listBtn jsMake" data-no="208519"><i
                                                class="iconset ico-like">좋아요 수</i> <span class="none">1</span></button>
                                        <a href="#layer_post_detail" title="댓글 작성하기"
                                            class="link btn-modal-open2 post-detailRlyPopup" w-data="850" h-data="auto"
                                            data-no="208519" data-row="12" data-tot="190403"><i
                                                class="iconset ico-reply">댓글
                                                수</i>
                                            0</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ol>
                </div>

            </div>
        </div>



        <div class="no-moviepost" style="display: none;">등록된 무비포스트가 없습니다.</div>

        <div class="btn-more" style="">
            <button type="button" class="btn" id="btnAddMovie">더보기 <i class="iconset ico-btn-more-arr"></i></button>
        </div>

    </div>
    <!--content:End -->
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
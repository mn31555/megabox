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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/payment.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">
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

    <div id="contents">
        <div class="inner-wrap">
            <div class="payment-gift">
                <h2 class="tit">결제</h2>
                <h3 class="tit">주문상품정보</h3>
                <div class="table-wrap">
                    <table class="board-list">
                        <caption>주문상품정보 목록 표</caption>
                        <colgroup>
                            <col style="width:120px;">
                            <col>
                            <col style="width: 150px;">
                            <col style="width: 80px;">
                            <col style="width: 200px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th scope="colgroup" colspan="2">주문상품</th>
                                <th scope="col">사용가능처</th>
                                <th scope="col">구매수량</th>
                                <th scope="col">총 상품금액</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td class="a-c">
                                    <div class="goods-info">
                                        <p class="img">
                                            <a href="${pageContext.request.contextPath}/store/buy?productNo=${product.productNo}">${product.productNo}
                                                <img src="${pageContext.request.contextPath}/assets/img/${product.productNo}.png" alt="${product.PName}">
                                            </a>
                                        </p>
                                    </div>
                                </td>
                                <th scope="row">
                                    <div class="goods-info">
                                        <p class="name">
                                            <a href="${pageContext.request.contextPath}/store/buy?productNo=${product.productNo}">${product.PName}</a>
                                        </p>
                                        <p class="bundle">${product.PContent }</p>
                                    </div>
                                </th>
                                <td>
                                    <a href="#pop_info" class="btn_open">사용가능극장 확인</a>
                                    <div id="pop_info" class="pop_wrap" style="display:none;">
                                        <div class="pop_inner">
                                            <p class="dsc">팝업 제작중 입니다.</p>
                                            <button type="button" class="btn_close">닫기</button>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <em class="left1">${amount}</em>
                                </td>
                                <td>
                                    <div class="goods-info">
                                        <em class="left2">${sum}원</em>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <script>
                    var target = document.querySelectorAll('.btn_open');
                    var btnPopClose = document.querySelectorAll('.pop_wrap .btn_close');
                    var targetID;

                    // 팝업 열기
                    for (var i = 0; i < target.length; i++) {
                        target[i].addEventListener('click', function () {
                            targetID = this.getAttribute('href');
                            document.querySelector(targetID).style.display = 'block';
                        });
                    }

                    // 팝업 닫기
                    for (var j = 0; j < target.length; j++) {
                        btnPopClose[j].addEventListener('click', function () {
                            this.parentNode.parentNode.style.display = 'none';
                        });
                    }
                </script>

                
                <h3 class="tit mt40">최종결제</h3>
                <div class="payment-final">
                    <div class="calc">
                        <div class="cell all">
                            <p class="txt">총 상품금액</p>
                            <p class="price">
                                <em>${sum}</em>
                                <span>원</span>
                            </p>
                        </div>
                        <i class="iconset ico-circle-minus">빼기</i>
                        <div class="cell sale">
                            <p class="txt">할인금액</p>
                            <p class="price">
                                <em>0</em>
                                <span>원</span>
                            </p>
                        </div>
                        <i class="iconset ico-circle-equal">등호</i>
                        <div class="cell final">
                            <p class="txt">최종 결제금액</p>
                            <p class="price">
                                <em>${sum}</em>
                                <span>원</span>
                            </p>
                        </div>
                    </div>
                    <div class="choice">
                        <div class="inbox">
                            <p class="txt">결제수단 선택</p>
                            <div class="cell">
                                <input type="radio" id="radio_choice01" name="radio_choice" value="1"
                                    onclick="div_OnOff(this.value,'con');">
                                <label for="radio_choice01">신용/체크카드</label>
                            </div>
                            <div class="cell">
                                <input type="radio" id="radio_choice02" name="radio_choice" value="2"
                                    onclick="div_OnOff(this.value,'con');" checked>
                                <label for="radio_choice02">카카오페이</label>
                            </div>
                        </div>
                    </div>
                    <div class="choice ty2 sel-patment-card" id="con" style="display: none;">
                        <div class="inbox">
                            <p class="txt">카드사 선택</p>
                            <div class="cell">
                                <select id="card_select" class="x-samll selpicker">
                                    <option value="00" selected>카드선택</option>
                                    <option value="01">비씨카드</option>
                                    <option value="02">국민카드</option>
                                    <option value="03">신한카드</option>
                                    <option value="04">삼성카드</option>
                                    <option value="05">농협카드</option>
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="btn-group pt40">
                    <a href=history.back(); class="button large" id="btn_store_back">취소</a>
                     <a href="/store/payment_ok?productNo=${product.productNo}&bSum=${sum}&bAmount=${amount}" class="button purple large" id="btn_store_pay_adapter">결제</a>
                </div>
            </div>
        </div>
    </div>

    <script>
        function div_OnOff(v, id) {
            // 라디오 버튼 value 값 조건 비교
            if (v == "1") {
                document.getElementById(id).style.display = ""; // 보여줌
            } else {
                document.getElementById(id).style.display = "none"; // 숨김
            }
        }
    </script>

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
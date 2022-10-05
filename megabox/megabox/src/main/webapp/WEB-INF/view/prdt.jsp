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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/store/prdt.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/font-awesome.css">
    <title>메가박스</title>
    <style>
        div {
            display: block;
        }
    </style>
</head>

<body onload="init();">
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
	
    <div id="content">
        <div class="inner-wrap">
            <div class="store-info">
                <h2 class="tit">${product.PName}</h2>
                <div class="sub-info">
                    <p class="sub">${product.PContent}</p>
                </div>
                <div class="store-info-box">
                    <div class="left">
                        <div class="img">
                            <p>
                                <img src="${pageContext.request.contextPath}/assets/img/${product.productNo}.png" alt="${product.PName}">
                            </p>
                        </div>
                    </div>
                    <div class="right">
                        <div class="prdt-info">
                            <div class="line">
                                <p class="tit">유효기간</p>
                                <div class="cont">
                                    <p class="txt">
                                        구매일로부터 2년 이내 사용 가능
                                    </p>
                                    <p class="txt min">
                                        예매 가능 유효기간은 구매일로부터 2년입니다.
                                    </p>
                                    <p></p>
                                </div>
                            </div>
                            <div class="line">
                                <p class="tit">판매수량</p>
                                <div class="cont">
                                    <div class="count">
                                        <span>1회 99개 구매가능</span>
                                    </div>
                                </div>
                            </div>
                            <div class="line">
                                <p class="tit">구매 후 취소</p>
                                <div class="cont">
                                    <p class="txt">
                                        구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.
                                    </p>
                                    <p class="txt min">
                                        구매일로부터 10일 이내 취소 가능하며, 부분취소는 불가능합니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- // prdt-info -->

                        <div class="type">
                            <div class="receipt">
                                <div class="line">
                                    <p class="tit">
                                        <span class="line02">수량/금액</span>
                                    </p>
                                    <div class="cont">
                                        <form name="form" method="get">
                                        	<input type="hidden" name="productNo" id="productNo" value="${product.productNo}">
                                            <div class="money">
                                                <input type="hidden" name="sell_price" id="price" value="${product.PPrice }">
                                                <input type="text" name="sum" size="4" readonly>
                                                <span>원</span>
                                            </div>

                                            <button type="button" onclick="del();" class="btn minus">
                                                <i class="iconset ico-minus"></i>
                                            </button>

                                            <input type="text" name="amount" class="input-text" readonly="readonly"
                                                value="1" id="amount" onchange="change();">

                                            <button type="button" onclick="add();" class="btn plus">
                                                <i class="iconset ico-plus"></i>
                                            </button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- // type -->

                        <div class="btn-group">
                        	<c:choose>
								<c:when test="${empty memberInfo.memberId }">
                            		<a href="javascript:void(0);" onclick = "goBack();" class="btn large">선물</a>
                            		<a href="javascript:void(0);" onclick = "goBack();" class="btn purple large">구매</a>
                            	</c:when>                         	
                            	<c:otherwise>
                            		<a href="javascript:void(0);" onclick = "gift();" class="btn large">선물</a>
                            		<a href="javascript:void(0);" onclick = "get();" class="btn purple large">구매</a>
                            	</c:otherwise>
                            </c:choose>
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

    <script>
        var sell_price;
        var amount;

        function init() {
            sell_price = document.form.sell_price.value;
            amount = document.form.amount.value;
            document.form.sum.value = sell_price;
            change();
        }

        function add() {
            hm = document.form.amount;
            sum = document.form.sum;
            hm.value++;

            sum.value = parseInt(hm.value) * sell_price;
        }

        function del() {
            hm = document.form.amount;
            sum = document.form.sum;
            if (hm.value > 1) {
                hm.value--;
                sum.value = parseInt(hm.value) * sell_price;
            }
        }

        function change() {
            hm = document.form.amount;
            sum = document.form.sum;

            if (hm.value < 0) {
                hm.value = 0;
            }
            sum.value = parseInt(hm.value) * sell_price;
        }
        
        function gift(){
        	/* if(${memberInfo.memberId} == "") {
        		console.log(${memberInfo.memberId});
        		alert("로그인이 필요합니다!");
        		location.href="/member/login";
        	} */
        	document.form.action="/store/payment_gift";
            document.form.submit();        	
        }        
        function get(){       	  
        	document.form.action="/store/payment";
        	document.form.submit();	
        }
        
        function goBack(){
        	alert("로그인이 필요한 서비스입니다!");
        	location.href="/member/login";
        }
    </script>
    
</body>
</html>
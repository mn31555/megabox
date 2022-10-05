<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="author" content="webstoryboy">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script>


<!-- CSS -->
<link href="${pageContext.request.contextPath}/assets/css/reset.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/member/mypage.css"
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
	<!-- my page -->
	<div class="mypage_con" align="center">
		<div class="col-lg-6" align="center" style="width: 600px;">

			<div class="title">MyPage</div>
			<b style="font-size: 20px;">회원정보수정</b> </br> </br>
			<form action="" method="post" name="form">
				<div class="table_join">
					<table>
						<colgroup>
							<col width="170px">
							<col width="auto">
						</colgroup>
						<tbody>
							<tr>
								<th>아이디</th>
								<td>${mem.memberId}<input type="hidden" name="memberId" id="memberId"
									value="${mem.memberId}" class="type01">
								</td>
							</tr>
							<tr>
								<th>이름</th>
								<td>${mem.MName}</td>
							</tr>
							<tr>
								<th>패스워드</th>
								<td><input type="password" name="mPassword" id="mPassword"
									value="" class="type01"></td>
							</tr>
							<tr>
								<th>패스워드 재확인</th>
								<td><input type="password" name="mPassword2"
									id="mPassword2" value="" class="type01"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="text" name="mEmail" id="mEmail"
									value="${mem.MEmail}" class="type01"></td>
							</tr>

							<tr>
								<th>주소</th>
								<td></br> <input type="text" id="mAddress" name="mAddress"
									value="${mem.MAddress}" size="60" />
									<button type="button" class="button2" onClick="goPopup();">주소검색</button>
									</br> </br></td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td class="txt_color"><select name="mYear" id="mYear"
									class="type01">
										<option value="1922">1922</option>
										<option value="1923">1923</option>
										<option value="1924">1924</option>
										<option value="1925">1925</option>
										<option value="1926">1926</option>
										<option value="1927">1927</option>
										<option value="1928">1928</option>
										<option value="1929">1929</option>
										<option value="1930">1930</option>
										<option value="1931">1931</option>
										<option value="1932">1932</option>
										<option value="1933">1933</option>
										<option value="1934">1934</option>
										<option value="1935">1935</option>
										<option value="1936">1936</option>
										<option value="1937">1937</option>
										<option value="1938">1938</option>
										<option value="1939">1939</option>
										<option value="1940">1940</option>
										<option value="1941">1941</option>
										<option value="1942">1942</option>
										<option value="1943">1943</option>
										<option value="1944">1944</option>
										<option value="1945">1945</option>
										<option value="1946">1946</option>
										<option value="1947">1947</option>
										<option value="1948">1948</option>
										<option value="1949">1949</option>
										<option value="1950">1950</option>
										<option value="1951">1951</option>
										<option value="1952">1952</option>
										<option value="1953">1953</option>
										<option value="1954">1954</option>
										<option value="1955">1955</option>
										<option value="1956">1956</option>
										<option value="1957">1957</option>
										<option value="1958">1958</option>
										<option value="1959">1959</option>
										<option value="1960">1960</option>
										<option value="1961">1961</option>
										<option value="1962">1962</option>
										<option value="1963">1963</option>
										<option value="1964">1964</option>
										<option value="1965">1965</option>
										<option value="1966">1966</option>
										<option value="1967">1967</option>
										<option value="1968">1968</option>
										<option value="1969">1969</option>
										<option value="1970">1970</option>
										<option value="1971">1971</option>
										<option value="1972">1972</option>
										<option value="1973">1973</option>
										<option value="1974">1974</option>
										<option value="1975">1975</option>
										<option value="1976">1976</option>
										<option value="1977">1977</option>
										<option value="1978">1978</option>
										<option value="1979">1979</option>
										<option value="1980">1980</option>
										<option value="1981">1981</option>
										<option value="1982">1982</option>
										<option value="1983">1983</option>
										<option value="1984">1984</option>
										<option value="1985">1985</option>
										<option value="1986">1986</option>
										<option value="1987">1987</option>
										<option value="1988">1988</option>
										<option value="1989">1989</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										<option value="2006">2006</option>
										<option value="2007">2007</option>
										<option value="2008">2008</option>
										<option value="2009">2009</option>
										<option value="2010">2010</option>
										<option value="2011">2011</option>
										<option value="2012">2012</option>
										<option value="2013">2013</option>
										<option value="2014">2014</option>
										<option value="2015">2015</option>
										<option value="2016">2016</option>
										<option value="2017">2017</option>
										<option value="2018">2018</option>
										<option value="2019">2019</option>
										<option value="2020">2020</option>
										<option value="2021">2021</option>
										<option value="2022">2022</option>
								</select> 년 <select name="mMonth" id="mMonth" class="type01">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
								</select> 월 <select name="mDay" id="mDay" class="type01">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
								</select> 일</td>
							</tr>

							<tr>
								<th>번호</th>
								<td><input type="text" name="mPhone" id="mPhone"
									value="${mem.MPhone}" class="type01"></td>
							</tr>

						</tbody>
					</table>
				</div>
				</br>
				<button type="button" class="button1" onclick="change();">수정완료</button>
				<button type="button" onclick="javascript:history.back();"
					class="button1">취소</button>
				<button type="button" onclick="bye();" class="button1">회원탈퇴</button>
			</form>
		</div>
	</div>
	<!-- my page -->
	
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
	<script
		src="${pageContext.request.contextPath}/assets/js/modernizr-custom.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/ie-checker.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
	<script>
			//배너 이미지 슬라이드
			var swiper = new Swiper('.swiper-container', {
				pagination: {
					el: '.swiper-pagination',
				},
				navigation: {
					nextEl: '.swiper-button-next',
					prevEl: '.swiper-button-prev',
				},
				autoplay: {
					delay: 5000,
				},
			});

			//영화차트 이미지 슬라이드
			var mySwiper = new Swiper('.swiper-container2', {
				slidesPerView: 4,
				spaceBetween: 24,
				//            mousewheel: {
				//                invert: true,
				//            },
				keyboard: {
					enabled: true,
					onlyInViewport: false,
				},
				autoplay: {
					delay: 6000,
				},
				breakpoints: {
					600: {
						slidesPerView: 1.4,
						spaceBetween: 24
					},
					768: {
						slidesPerView: 2,
						spaceBetween: 24
					},
					960: {
						slidesPerView: 3,
						spaceBetween: 24
					}
				}
			});

			//영화차트 탭 메뉴
			var movBtn = $(".movie_title > ul > li");
			var movCont = $(".movie_chart > div");

			movCont.hide().eq(0).show();

			movBtn.click(function (e) {
				e.preventDefault();
				var target = $(this);
				var index = target.index();
				movBtn.removeClass("active");
				target.addClass("active");
				movCont.css("display", "none");
				movCont.eq(index).css("display", "block");
			});
		</script>

	<!-- value 값 설정 -->
	<script>
$(document).ready(function(){
    	$('#mYear').val(${mem.MYear}).prop("selected",true);
    	$('#mMonth').val(${mem.MMonth}).prop("selected",true);
    	$('#mDay').val(${mem.MDay}).prop("selected",true);
})

</script>

	<script type="text/javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. 
// (＂팝업 API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";
function goPopup(){
//경로는 시스템에 맞게 수정하여 사용
//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
//호출하게 됩니다.
var pop = window.open("jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
function jusoCallBack(mAddress){
 // 2017년 2월 제공항목이 추가되었습니다. 원하시는 항목을 추가하여 사용하시면 됩니다.
 document.form.mAddress.value = mAddress;

}
</script>
	<!-- end 주소API -->

	<!-- form check  -->
	<script type="text/javascript">   
    function change() {
		
    	var f = document.form;
    	
		//비밀번호
		if(!f.mPassword.value) {
		
			alert("비밀번호를 입력하세요!");
			f.mPassword.focus();
			return;
		}
		
		//비밀번호 길이
		if(f.mPassword.value.length < 6 || f.mPassword.value.length > 12) {
		
			alert("비밀번호는 6~12자 사이로 입력가능합니다!");
			f.mPassword.focus();
			return;
		}
		//비밀번호
		if(!f.mPassword2.value) {
		
			alert("비밀번호 재확인을 해주세요!");
			f.mPassword.focus();
			return;
		}
		
		//비밀번호 길이
		if(f.mPassword2.value.length < 6 || f.mPassword.value.length > 12) {
		
			alert("비밀번호 재확인은 6~12자 사이로 입력가능합니다.!");
			f.mPassword.focus();
			return;
		}
		
		if(f.mPassword.value != f.mPassword2.value) {
			
			alert("비밀번호가 일치하지 않습니다. 다시 확인해주세요");
			f.mPassword2.focus();
			return;
		}
		
    	
		//이메일 입력
		if(!f.mEmail.value) {
			
			alert("이메일을 입력하세요!");
			document.form.mEmail.focus();
			return;
		}
		
		//전화번호 입력
		if(!f.mPhone.value) {
			
			alert("전화번호를 입력하세요!");
			document.form.mEmail.focus();
			return;
		}
		
		
		//생년월일
		if(!f.mYear.value) {
			
			alert("생년월일(년도)를 제대로 선택하세요!");
			document.form.mYear.focus();
			return;
		}
		
		//생년월일
		if(!f.mMonth.value) {
			
			alert("생년월일(월)을 제대로 선택하세요!");
			document.form.mMonth.focus();
			return;
		}
		
		//생년월일
		if(!f.mDay.value) {
			
			alert("생년월일(일)을 제대로 선택하세요!");
			document.form.mDay.focus();
			return;
		}
		
		
		alert("회원정보 수정 완료!");
		
		f.action="/member/mypage_ok";
		f.submit();

			}
		</script>

	<script type="text/javascript">
//	var idck = 0;
	var f = document.form;

	function bye() {
		var mPassword = $.trim($("#mPassword").val());
		if (mPassword == "") {
			alert("비밀번호를 먼저 입력해주세요!");
			$("#mPassword").focus();
			return 0;
		}
		else { 
			$.ajax({
				type : 'POST',
				data : {
					memberId : $("#memberId").val(),
					mPassword : $("#mPassword").val()
				},
				url : "/member/loginAjax",
				dataType : "text",
				success : function(data) {
					if(data == 1){
						var result = confirm("회원탈퇴 하시겠습니까?");
						if(result){
							alert("회원탈퇴 완료!");
							f.action = "/member/delete";
							f.submit();			
						}
						else {
							return 0;
						}
					}else{
						alert("비밀번호가 맞지 않습니다! 다시 입력해주세요");
						return 0;
					}
					
				},
				error : function(error) {
					alert("error : " + error);
				}
			});
		}
	}

</script>


	<!-- <!-- ID 중복처리(현우) -->
	<!-- <script type="text/javascript">
			//아이디의 유효성 검사
			var regExp1 = /^[A-Za-z0-9+]{4,12}$/;

			//아이디 체크여부 확인 (아이디 중복일 경우 = 0 , 중복이 아닐경우 = 1 )
			$(function() {
				$("#memberId")
						.keyup(
								function() {
									//userid 를 param.
									var id = $("#memberId").val();

									$
											.ajax({
												async : true,
												type : 'POST',
												data : memberId,
												url : "idcheck",
												dataType : "json",
												contentType : "application/json; charset=UTF-8",
												success : function(data) {
													//입력창이 비었을경우 html 지워줌
													if (memberId == "") {
														var newDiv = document
																.getElementById("result");
														newDiv.innerHTML = "";
														newDiv.innerHTML = html;
														idck = 0;
													} else if (!regExp1
															.test(memberId)) {
														var html = "<p class=\"text\" style=\"color:red;\">"
														html += "형식에 맞게 ID를 입력해주세요.</p>"
														var newDiv = document
																.getElementById("result");
														newDiv.innerHTML = html;
														idck = 0;
													} else if (data.cnt > 0) {

														$("#memberId").focus();
														var html = "<p class=\"text\" style=\"color:red;\">"
														html += "사용할 수 없는 ID입니다.</p>"
														var newDiv = document
																.getElementById("result");
														newDiv.innerHTML = html;

														idck = 0;

													} else {
														var html = "<p class=\"text\" style=\"color:blue;\">"
														html += "사용 가능한 ID입니다.</p>"
														var newDiv = document
																.getElementById("result");
														newDiv.innerHTML = html;

														//아이디가 중복하지 않으면  idck = 1 
														idck = 1;
													}

												},
												error : function(error) {
													//alert("error : " + error);
													var html = "<p class=\"text\" style=\"color:red;\">"
													html += "ID를 입력해주세요.</p>"
													var newDiv = document
															.getElementById("result");
													newDiv.innerHTML = html;
													idck = 0;
												}
											});

								});
			});
		</script> -->
</body>

</html>
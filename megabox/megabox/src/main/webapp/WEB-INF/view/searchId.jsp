<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/member/searchId.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery-3.6.0.min.js"></script>
<title>아이디 찾기</title>
</head>

<body>
	<form name="form">
		<div class="logo">
			<div class="img-top">
				<img src="${pageContext.request.contextPath}/assets/img/logo.png"
					alt="메인 로고">
			</div>
			<div class="img-bot">
				<img
					src="${pageContext.request.contextPath}/assets/img/logo-sub.png"
					alt="서브 로고">
			</div>
		</div>
		<section class="input-area">
			<p>본인 인증으로 아이디를 찾으실 수 있습니다.</p>
			<div class="int-area">
				<input type="text" name="mName" id="mName"
					placeholder="이름(실명으로 입력해주세요)" autocomplete="off" required />
			</div>
			<div class="int-area">
				<input type="email" name="mEmail" id="mEmail" placeholder="이메일"
					autocomplete="off" required>
			</div>
		</section>
		<div class="btn">
			<button type="button" onclick="findId();">아이디 찾기</button>
		</div>
	</form>

	<script type="text/javascript">
		// var idck = 0;
		var f = document.form;

		function findId() {

			//	var obj = new Object();
			//	obj.mName = $("#mName").val();
			//	obj.mEmail = $("#mEmail").val();

			//	var json_data = JSON.stringify(obj); // form의 값을 넣은 오브젝트를 JSON형식으로 변환

			$.ajax({
				type : 'POST',
				data : {
					mName : $("#mName").val(),
					mEmail : $("#mEmail").val()
				},
				url : "/member/idAjax",
				dataType : "text",
				success : function(data) {

					if (data == '' || data == null) {
						alert("아이디가 조회되지 않습니다.");
						$("#mName").focus();

					} else {
						//alert("아이디 조회 성공");
						//아이디가 중복하지 않으면  idck = 1 
						//idck = 1;
						f.action = "/member/searchId_ok";
						f.submit();
					}
				},
				beforeSend : showRequest,
				error : function(error) {
					alert("error : " + error);
				}
			});
		}

		function showRequest() {

			var mName = $.trim($("#mName").val());
			var mEmail = $.trim($("#mEmail").val());

			if (mName == "") {
				alert("이름을 입력해주세요.");
				$("#mName").focus();
				return 0;
			}

			if (mEmail == "") {
				alert("이메일을 입력해주세요.");
				$("mEmail").focus();
				return 0;
			}

		}
	</script>
</body>

</html>
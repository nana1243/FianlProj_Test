<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />

<title>Register TEST</title>
<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no'
	name='viewport' />
<link rel="icon" href="assets/img/icon.ico" type="image/x-icon" />

<!-- Fonts and icons -->
<script src="assets/js/plugin/webfont/webfont.min.js"></script>
<script>

	WebFont.load({
		google : {
			"families" : [ "Open+Sans:300,400,600,700" ]
		},
		custom : {
			"families" : [ "Flaticon", "Font Awesome 5 Solid",
					"Font Awesome 5 Regular", "Font Awesome 5 Brands" ],
			urls : [ 'assets/css/fonts.css' ]
		},
		active : function() {
			sessionStorage.fonts = false;
		}
	});

	var count = 1;

	function addForm() {
		var addedFormDiv = document.getElementById("inputarea");
		var str = "";
		str += '<input type="text"  class="form-control" name="address' + count+ '" ' +
		' id="address' + count + '" ' + 'placeholder="주소를 입력하기 위해 클릭하세요" ';
		str += 'onclick="goPopup(';
		str += count;
		str += ')" / >';
		alert(str);
		// 추가할 폼(에 들어갈 HTML)
		var addedDiv = document.createElement("div"); // 폼 생성
		addedDiv.id = "added_" + count; // 폼 Div에 ID 부 여 (삭제를 위해)
		addedDiv.innerHTML = str; // 폼 Div안에 HTML삽입
		addedFormDiv.appendChild(addedDiv); // 삽입할 DIV에 생성한 폼 삽입
		count++;
		document.baseForm.count.value = count;
	
	}
	function delForm() {
		var addedFormDiv = document.getElementById("inputarea");
		if (count > 1) { // 현재 폼이 두개 이상이면
			var addedDiv = document.getElementById("added_" + (--count));
			addedFormDiv.removeChild(addedDiv); // 폼 삭제
		} else { // 마 지막 폼만 남아있다면
			document.baseForm.reset(); // 폼 내용 삭제
		}

	}
	document.domain = "127.0.0.1";

	function goPopup(num) {
		var pop = window.open("view/address/jusoPopup.jsp", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

	}

	function jusoCallBack(roadFullAddr, addrDetail) {
		var number = 0;
		var inputid = "address" + number + "";
		while (true) {
			var inputid = "address" + number + "";
			if (document.getElementById(inputid).value.length > 0) {
				number += 1;
			} else {
				document.getElementById(inputid).value = roadFullAddr;
				break;
			}
		}
	}
	
	
	
	
	
</script>


<!-- CSS Files -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/azzara.min.css">
</head>


<body class="login">
	<div class="wrapper wrapper-login">
		<div class="container container-login animated fadeIn">
			<h3 class="text-center">Sign Up</h3>
			<div class="login-form">

  		<form class="signupform" action="signupimpl.top" method="post" accept-charset="utf-8"
					novalidate="novalidate"> 


					<!--  이름  START -->
					<div class="form-group">
						<label for="name" class="placeholder"><b>Fullname</b></label> <input
							id="name" name="name" type="text" class="form-control"
							required>
					</div>
					<!--  이름  END -->

					<!--  ID  START-->
					<div class="form-group">
						<label for="ID" class="placeholder"><b>ID</b></label> <a href="#"
							class="link float-right">id중복확인
						</a> <input id="ID" name="ID" type="text" class="form-control"
							required>

					</div>
					<!--  ID  END-->

					<!--  PWD START -->
					<div class="form-group">
						<label for="password" class="placeholder"><b>Password</b></label>
						<a href="#" class="link float-right">Forget Password ?</a>
						<div class="position-relative">
							<input id="passwordsignin" name="passwordsignin" type="password"
								class="form-control" required>
							<div class="show-password">
								<i class="flaticon-interface"></i>
							</div>
						</div>
					</div>
					<!--  PWD END -->

					<!--  PWD_CONFRIM START -->
					<div class="form-group">
						<label for="confirmpassword" class="placeholder"><b>Confirm
								Password</b></label>
						<div class="position-relative">
							<input id="confirmpassword" name="confirmpassword"
								type="password" class="form-control" required>
							<div class="show-password">
								<i class="flaticon-interface"></i>
							</div>
						</div>
					</div>

					<!--  PWD_CONFRIM END -->

					<!--  전화번호 START -->
					<div class="form-group">
						<label for="phonenumber" class="placeholder"><b>전화번호</b></label> <input
							id="phonenumber" name="phonenumber" type="text"
							class="form-control" required>
					</div>
					<!--  전화번호  END -->

					<!--  주소입력 START -->
					<div class="">
						<label for="addr" class="placeholder"><b>address</b></label> <a
							href="#" class="link float-right">
							<span class="btn" onclick="addForm()">+</span>
							<span class="btn" onclick="delForm()">ㅡ</span>
						</a>

						<div id="addressarea">
							<input type="text" id="address0" name="address0"
								placeholder="주소를 입력하기 위해 클릭하세요" class="form-control"
								onclick="goPopup(0)">
							<div id="inputarea"></div>
						</div>

					</div>
					<!--  주소입력  END -->

					<!--  마지막 취소 및 SUBMIT 버튼 START  -->
					<div class="row form-action">
						<div class="col-md-6">
							<a href="main.top" id="show-signin"
								class="btn btn-danger btn-link w-100 fw-bold">Cancel</a>
						</div>


						<div class="col-md-6">
							<button class="btn btn-primary" type="submit" value="submit"
								class="btn_3">submit</button>
						</div>
					</div>

					<!--  마지막 취소 및 SUBMIT 버튼 END  -->
			  	</form> 
			</div>
		</div>
	</div>

	<script src="assets/js/core/jquery.3.2.1.min.js"></script>
	<script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
	<script src="assets/js/core/popper.min.js"></script>
	<script src="assets/js/core/bootstrap.min.js"></script>
	<script src="assets/js/ready.js"></script>
</body>
</html>



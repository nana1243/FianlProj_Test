
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<script>
<<<<<<< HEAD

   // ajax를 통해 userapplycnt를 받는다
	var myJSON = [];
	function readAjax() {
=======
	var myJSON = [];
	function readAjax() {
		alert("check ajax input data");
>>>>>>> 40f9fadf40938334de6bf4230644184efe8f4633
		$.ajax({
			type : "post",
			dataType : "json",
			url : "read.top",
			async : false,
			cache : false,
			success : function(data) {
<<<<<<< HEAD
				showNoti(data);
			},
=======
				alert("success");
				showNoti(data);
		
			},
			error : function(data) {
				alert("error occured")
			}
>>>>>>> 40f9fadf40938334de6bf4230644184efe8f4633

		});
	}

<<<<<<< HEAD
	// 받은 데이터가 존재한다면 noti창에 뜨게한다
	function showNoti(data) {
		for (i = 0; i < data.length; i++) {
			var txt = '<a href="#"><div class="notif-icon notif-success"><i class="fa fa-comment"></i></div><div class="notif-content"><span class="block">';
			var chainid = data[i].chainid;
			var applycnt = data[i].applycnt;
			txt += chainid;
			txt += '</span> <span class="time">12minutes ago</span></div></a>';
			$('div.notif-center').append(txt);
		}
		;

	}
	
	// 10초에 한번씩 ajax를 통해  데이터를 받는다
	$(document).ready(function() {
=======
	function showNoti(data) {
		
		
		for (i = 0; i < data.length; i++) {
		var txt = '<a href="#"><div class="notif-icon notif-success"><i class="fa fa-comment"></i></div><div class="notif-content"><span class="block">';
			
			var chainid = data[i].chainid;
			var applycnt = data[i].applycnt;
			
			
			txt += chainid;
			txt += '</span> <span class="time">12minutes ago</span></div></a>';
			$('div.notif-center').append(txt);
		};
		
	}

	$(document).ready(function() {

>>>>>>> 40f9fadf40938334de6bf4230644184efe8f4633
		setInterval(readAjax, 10000);

	});
</script>



<div class="main-header" data-background-color="red">
	<!-- Logo Header -->
	<div class="logo-header">

		<a href="index.html" class="logo">
			<h3 class="navbar-brand">WATCHER</h3>
		</a>
		<button class="navbar-toggler sidenav-toggler ml-auto" type="button"
			data-toggle="collapse" data-target="collapse" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"> <i class="fa fa-bars"></i>
			</span>
		</button>
		<button class="topbar-toggler more">
			<i class="fa fa-ellipsis-v"></i>
		</button>
		<div class="navbar-minimize">
			<button class="btn btn-minimize btn-rounded">
				<i class="fa fa-bars"></i>
			</button>
		</div>
	</div>
	<!-- End Logo Header -->

	<!-- Navbar Header -->
	<nav class="navbar navbar-header navbar-expand-lg">

		<div class="container-fluid">
			<div class="collapse" id="search-nav">
				<form class="navbar-left navbar-form nav-search mr-md-3">
					<div class="input-group">
						<div class="input-group-prepend">
							<button type="submit" class="btn btn-search pr-1">
								<i class="fa fa-search search-icon"></i>
							</button>
						</div>
						<input type="text" placeholder="Search ..." class="form-control">
					</div>
				</form>
			</div>
			<ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
				<li class="nav-item toggle-nav-search hidden-caret"><a
					class="nav-link" data-toggle="collapse" href="#search-nav"
					role="button" aria-expanded="false" aria-controls="search-nav">
						<i class="fa fa-search"></i>
				</a></li>



				<!-- Notification -->
				<li class="nav-item dropdown hidden-caret"><a
					class="nav-link dropdown-toggle" href="#" id="notifDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fa fa-bell"></i> <span
						class="notification">4</span>
				</a>
					<ul class="dropdown-menu messages-notif-box animated fadeIn"
						aria-labelledby="messageDropdown">
						<li>
							<div class="dropdown-title">You have 4 new notification</div>
						</li>
						<li>
							<div class="message-notif-scroll scrollbar-outer">
								<div class="notif-center">
<<<<<<< HEAD
								
=======
									<!-- a tag영역을 for each만큼 돌린다 -->
									
									<!-- 
									<c:forEach var="myJSON" items="${myJSON}">

										<a href="#">
											<div class="notif-icon notif-success">
												<i class="fa fa-comment"></i>
											</div>
											<div class="notif-content">
												<span class="block"> ${myJSON.chainid}</span> <span class="time">12
													minutes ago</span>
											</div>
										</a>
									</c:forEach>

>>>>>>> 40f9fadf40938334de6bf4230644184efe8f4633
-->

								</div>
							</div>
						</li>
						<li><a class="see-all" href="javascript:void(0);">See all
								notifications<i class="fa fa-angle-right"></i>
						</a></li>
					</ul></li>


				<!-- MyPage -->
				<li class="nav-item dropdown hidden-caret"><a
					class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#"
					aria-expanded="false">
						<div class="avatar-sm">
							<img src="assets/img/profile.jpg" alt="..."
								class="avatar-img rounded-circle">
						</div>
				</a>
					<ul class="dropdown-menu dropdown-user animated fadeIn">
						<li>
							<div class="user-box">
								<div class="avatar-lg">
									<img src="assets/img/profile.jpg" alt="image profile"
										class="avatar-img rounded">
								</div>
								<div class="u-text">
									<h4>Hizrian</h4>
									<p class="text-muted">hello@example.com</p>
									<a href="profile.html"
										class="btn btn-rounded btn-danger btn-sm">View Profile</a>
								</div>
							</div>
						</li>
						<li>
							<div class="dropdown-divider"></div> <a class="dropdown-item"
							href="#">My Profile</a> <a class="dropdown-item" href="#">My
								Balance</a> <a class="dropdown-item" href="#">Inbox</a>

							<div class="dropdown-divider"></div> <a class="dropdown-item"
							href="apply.top">UserApply</a>

							<div class="dropdown-divider"></div> <a class="dropdown-item"
							href="logout.top">Logout</a>
						</li>
					</ul></li>
				<li><a href="#" class="logo">
						<h3 class="navbar-brand">TOP</h3>
				</a></li>



			</ul>
		</div>
	</nav>
	<!-- End Navbar -->
</div>







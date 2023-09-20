<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>

<!-- Swiper JS -->
<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
<style>
.maker-wrap {
	margin: 0 auto;
	box-sizing: border-box;
	padding: 0 10%;
	text-align: center;
}

.sec1 {
	margin-bottom: 15%;
}

.swiper {
	width: 100%;
	height: 100%;
}

.swiper-wrapper {
	display: flex;
}

.swiper-slide {
	text-align: center;
	font-size: 18px;
	background: #fff;
	display: flex;
	justify-content: center;
	align-items: center;
}

.swiper-slide img {
	display: block;
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.sec1-btn {
	background-color: #00c4c4;
	color: #fff;
	border: none;
	width: 300px;
	height: 40px;
}

.sec2 {
	margin-bottom: 10%;
}

.sec2-cardwrap {
	display: flex;
	gap: 10px;
}

.sec2-card {
	background-color: darkgray;
}

.sec3 {
	margin-bottom: 10%;
	background-color: azure;
}

.sec3-cardwrap {
	display: flex;
	gap: 10px;
	padding: 10px;
}

.sec3-card {
	background-color: darkgray;
}
</style>
</head>
<body>
	<div class="maker-wrap">
		<div class="sec1">
			<p>와디즈 메이커 셀릭 입니다.</p>
			<h4>560만 회원이 있어 출시 초기부터 높은 매출을 달성할 수 있었어요</h4>
			<!-- Swiper -->
			<div class="swiper mySwiper">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<img
							src="https://image.ajunews.com/content/image/2020/07/24/20200724141534513835.jpg">
					</div>
					<div class="swiper-slide">
						<img
							src="https://image.ajunews.com/content/image/2020/07/24/20200724141534513835.jpg">
					</div>
					<div class="swiper-slide">
						<img
							src="https://image.ajunews.com/content/image/2020/07/24/20200724141534513835.jpg">
					</div>
					<div class="swiper-slide">
						<img
							src="https://image.ajunews.com/content/image/2020/07/24/20200724141534513835.jpg">
					</div>
				</div>
				<div class="swiper-pagination"></div>
			</div>
			<!-- Initialize Swiper -->
			<script>
				var swiper = new Swiper(".mySwiper", {
					slidesPerView : 3,
					spaceBetween : 30,
					pagination : {
						el : ".swiper-pagination",
						clickable : true,
					},
				});
			</script>
			<h2>와디즈에서234,434번째 메이커가 되어보세요</h2>
			<!-- 로그인 전  -->
			<c:choose>
				<c:when test="${sessionScope.sessionID == null}">
					<div class="col-12 col-sm-4">
						<div class="top_login">
							<form action="loginForm" method="GET">
								<button type="submit" class="sec1-btn">프로젝트 만들기</button>
							</form>
						</div>
					</div>
				</c:when>
			</c:choose>
			<!-- 로그인 후  -->
			<c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<div class="col-12 col-sm-4">
						<div class="top_login">
							<form action="pagetwo" method="GET">
								<button type="submit" class="sec1-btn">프로젝트 만들기</button>
							</form>
						</div>
					</div>
				</c:when>
			</c:choose>
		</div>

		<div class="sec2">
			<h3>와디즈에서 시작과 성장을 함께 하세요</h3>
			<p>이미 많은 메이커가 와디즈를 경험했어요</p>
			<div class="sec2-cardwrap">
				<div class="sec2-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec2-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec2-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec2-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec2-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
			</div>
		</div>

		<div class="sec3">
			<h3>와디즈가 도와드릴게요</h3>
			<p>와디즈에서는 콘텐츠 제작부터 광고까지 프로젝트 성공을 위한 메이커 서비스를 제공하고 있어요</p>
			<div class="sec3-cardwrap">
				<div class="sec3-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec3-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec3-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec3-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
				<div class="sec3-card">
					<p>성공하면 제품 발송 전 정산돼요</p>
				</div>
			</div>
		</div>
	</div>


	<%@include file="../temp/footer.jsp"%>
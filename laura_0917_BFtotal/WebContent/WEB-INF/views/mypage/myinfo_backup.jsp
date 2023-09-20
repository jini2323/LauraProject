<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/myInfo.css">

<div class="content-body">
	<div class="container-fluid mt-3">
		<!-- 0712_마이페이지_버튼 -->
		<div class="row">
			<!-- 0703 카드1 -->
			<button class="col-lg-3 col-sm-6">
				<a href="<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}">
					<div class="card gradient-1">
						<div class="card-body">
							<h3 class="card-title">정보 확인 / 수정</h3>
							
							<div class="d-inline-block">
								<h2 class="info1">내 정보</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
			<!-- 0703 카드2 -->
			<button class="col-lg-3 col-sm-6">
				<a href="fpAllList?fpmemnum=${sessionScope.sessionNO }">
					<div class="card gradient-2">
						<div class="card-body">
							<h3 class="card-title">펀딩내역 / 현황</h3>
							<div class="d-inline-block">
								<h2 class="info2">펀딩</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
			<!-- 0703 카드3 -->
			<button class="col-lg-3 col-sm-6">
				<a href="#">
					<div class="card gradient-3">
						<div class="card-body">
							<h3 class="card-title">투표내역 / 현황</h3>
							<div class="d-inline-block">
								<h2 class="info3">배우</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
			<!-- 0703 카드4 -->
			<button class="col-lg-3 col-sm-6">
				<a href="#">
					<div class="card gradient-4">
						<div class="card-body">
							<h3 class="card-title">내가 쓴 글 / 댓글</h3>
							<div class="d-inline-block">
								<h2 class="info4">내 활동</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
		</div>
		<!-- 0712_마이페이지_내정보 -->
		<!-- 내정보 카드 -->
		<div class="row">
			<div class="col-lg-6 col-lg-6">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<!-- 추후 멤버테이블에 이미지네임 추가하여 받아올 예정 -->
							<img src="${rPath }/img/mypage_img/shark.png"
								class="rounded-circle" alt="">
							<h3 style="text-align: center;">반갑습니다. ${vo.name} 님</h3>
							<p>등급: ${vo.grade}</p>
							<p>이메일: ${vo.email}</p>
							<p>이름: ${vo.name}</p>
							<p>닉네임: ${vo.nickname}</p>
							<p>전화번호: ${vo.tel}</p>
							<p>성별: ${vo.memgender}</p>
							<p>생년월일: ${vo.birthday}</p>
							<p>가입일: ${vo.mdate}</p>
							<p class="m-0"></p>
							<p>
							<a href="<%=application.getContextPath()%>/pwdchkf?email=${sessionScope.sessionID}" class="btn btn-sm btn-warning">회원 수정</a>
							<a href="<%=application.getContextPath()%>/delete?email=${sessionScope.sessionID}" class="btn btn-sm btn-danger">회원 탈퇴</a>
							</p>
							<!-- 0819_박형지 : 예술인 인증 버튼,폼 추가 -->
							<p><a href="artistform" class="btn btn-sm btn-info">예술인 인증</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-lg-6">
				<!-- <div class="card">
					<div class="card-body">
						<div class="text-center">
							<img src="./images/users/8.jpg" class="rounded-circle" alt="">
							<h5 class="mt-3 mb-1">Ana Liem</h5>
							<p class="m-0">Senior Manager</p>
							<a href="javascript:void()" class="btn btn-sm btn-warning">Send Message</a>
						</div>
					</div>
				</div> -->
				<swiper-container class="mySwiper" pagination="true"
					pagination-clickable="true" navigation="true" space-between="30"
					loop="true"> <swiper-slide>
				<div id="chart"></div>
				<script>
					var chart = c3.generate({
						data : {
							//x축에 데이터를 추가하기 위해서 API에서 data.x를 검색해서 추가 - 샘플 참고해서 응용하기 쉬움
							//step1) x축을 추가한다. 이름:x
							x : 'x',
							columns : [
							//step2) x축에 들어갈 데이터를 첫번째 요소가 x이름으로 지정
							[ 'x', '2013-01-01', '2013-01-02', '2013-01-03' ],
									[ 'data1', 30, 200, 100 ],
									[ 'data2', 130, 100, 140 ] ],
							type : 'bar'
						},
						//step3) axis.type으로 x축의 날짜관련 format을 지정
						axis : {
							x : {
								type : 'timeseries',
								tick : {
									format : '%Y-%m-%d'
								}
							}
						},
						bar : {
							width : {
								ratio : 0.2
							// this makes bar width 50% of length between ticks
							}
						// or
						//width: 100 // this makes bar width 100px
						}
					});

					setTimeout(function() {
						chart.load({
							columns : [ [ 'data3', 400, 500, 450 ] ]
						});
					}, 3000);
					
					
				</script></swiper-slide> <swiper-slide> 2 </swiper-slide> <swiper-slide>Slide
				3</swiper-slide> <swiper-slide>Slide 4</swiper-slide></swiper-container>
			</div>
		</div>
	</div>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-element-bundle.min.js"></script>
<%@include file="../temp/footer.jsp"%>
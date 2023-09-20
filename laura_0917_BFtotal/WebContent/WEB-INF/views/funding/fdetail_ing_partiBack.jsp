<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/css/fdetail_ing.css">


<!-- 컨테이너 시작 -->
<div id="contents">

	<!-- 펀딩하기 -->
	<div class="main-banner wow fadeIn" id="top" data-wow-duration="1s"
		data-wow-delay="0.5s" style="padding-top: 50px;">
		<div class="container" id="container">
			<div class="row">
				<div class="col-lg-12">
					<input type="hidden" id="funnum" name="funnum"
						value="${vo.funnum }">
					<div class="row">
						<div class="col-lg-6" style="text-align: center;">
							<div class="right-image wow fadeInRight" data-wow-duration="1s"
								data-wow-delay="0.5s">
								<img class="sum-img" src="${rPath }/img/fboard/${vo.postimgn }"
									id="imgn" alt="">
							</div>
						</div>
						<div class="col-lg-6" style="padding-top: 10px;">
							<div class="left-content header-text wow fadeInLeft"
								data-wow-duration="1s" data-wow-delay="1s">
								<div class="row">
									<div class="col-lg-12">
										<h2 style="font-weight: bold;">${vo.funtitle }</h2>
										<p>${vo.funpreview }</p>
										<h4
											style="color: #23d0f5; margin-top: 10px; margin-bottom: 10px;">
											1000% 달성 <span
												style="font-family: 'Jua', sans-serif; background-color: #cff1fc; color: #23d0f5; padding: 2px 4px; font-size: 14px; margin-bottom: 6px; border-radius: 5px; font-size: 16px;">23일
												남음</span>
										</h4>

										<h4 style="margin-top: 10px;">
											2억5000만원 달성 <span
												style="background-color: #ececec; padding: 2px 4px; margin-left: 6px; font-size: 16px; border-radius: 5px;">107명
												참여</span>
										</h4>
										<div class="aim">
											<h6>
												<strong>목표금액</strong> ${vo.targetprice }원 달성
											</h6>
											<h6>
												<strong>펀딩기간</strong> ${vo.sdate }~${vo.fdate }
											</h6>
											<h6>
												<strong>결제</strong> ${vo.fdate }로 부터 3일 후 결제 진행
											</h6>
										</div>
									</div>

									<!-- 0826_박형지 : 펀딩참여여부 확인을 위한 vo값 받기 -->
									<div>
										<input type="hidden" id="funstatus" name="funstatus" value="${pvo.funstatus }">
										<input type="hidden" id="fmem_num" name="fmem_num" value="${sessionScope.sessionNO }">
										<input type="hidden" id="funnum_num" name="funnum_num" value="${vo.funnum }">
									</div>

									<form action="addFCoin">
										<label for=funmoney>금액입력 : </label> <input type="number"
											id="funmoney" name="funmoney" min="10000" max="1000000"
											step="10000"> <label>펀딩할 금액(10,000 ~
											1,000,000)</label> <input type="hidden" id="fmem_num" name="fmem_num"
											value="${sessionScope.sessionNO }"> <input
											type="hidden" id="funstatus" name="funstatus" value="P">
										<input type="hidden" id="funnum_num" name="funnum_num"
											value="${vo.funnum }"> <input type="hidden"
											id="joindate" name="joindate">
										<div class="wrap">
											<input class="fBtn" type="submit" value="펀딩하기" id="fBtn">
											<!-- <select name="cost" id="cost">
												<option value="choose">펀딩할 금액을 선택해주세요</option>
												<option value="choose">10000원</option>
												<option value="choose">30000원</option>
												<option value="choose">50000원</option>
												<option value="free_choose">자유롭게 펀딩하기</option>
												</select> -->
											<a class="like-btn" href="#">
												<div
													style="border: 1px solid #d0d0d0; border-color: #d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width: 70px;">
													<p style="margin: 0" class="material-symbols-outlined">favorite</p>
													<p style="margin: 0">좋아요</p>
												</div>
											</a> <a class="share-btn" href="#">
												<div
													style="border: 1px solid #d0d0d0; border-color: #d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width: 70px;">
													<p style="margin: 0" class="material-symbols-outlined">share</p>
													<p style="margin: 0">공유</p>
												</div>
											</a>
										</div>
									</form>
									<!-- <p style="border-radius: 5px; border: 1.8px solid; height: 50px;">
												<span class="material-symbols-outlined" style="align-items: center;"> favorite </span>
												좋아요
											</p> -->


									<!-- 드롭다운 바 -->
									<!--  <div class="dropdown1">
											<button class="dropbtn1">
												<span class="dropbtn_icon">more_horiz</span> 펀딩할 금액을 선택해주세요
											</button>
											<div class="dropdown-content1">
												<a href="#">10000원</a> 
												<a href="#">30000원</a> 
												<a href="#">50000원</a>
												<a href="#">100000원</a> 
												<a href="#">자유롭게 펀딩하기</a>
											</div>
										</div> -->


									<!-- <div class="wrap">
											<button class="button">펀딩하기</button>
											<a class="like-btn" href="#">
												<div style="border: 1px solid #d0d0d0; border-color:#d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width:70px;">
													<p style="margin: 0" class="material-symbols-outlined">favorite</p>
													<p style="margin: 0">좋아요</p>
												</div>
											</a>
											<a class="share-btn" href="#">
												<div style= "border: 1px solid #d0d0d0; border-color:#d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width:70px;">
													<p style="margin: 0" class="material-symbols-outlined">share</p>
													<p style="margin: 0">공유</p>
												</div>
											</a>
										</div> -->


								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- 시놉시스 -->
	<div class="container" style="clear: both;">
		<div class="row">
			<div class="col-12">
				<hr>
				<div class="single-blog-area blog-style-2 mb-50">
					<div class="single-blog-content">
						<div class="line"></div>
						<a href="#" class="post-tag">영화 소개</a>
						<h4>
							<a href="#" class="post-headline mb-0">${vo.funtitle }</a>
						</h4>

						${vo.content }
					</div>
				</div>

				<!-- 감독 소개 -->
				<div class="blog-post-author mt-100 d-flex"
					style="margin-top: 30px;">
					<div class="box">
						<img class="profile" src="${rPath }/img/funding/director.jpg"
							alt="">
					</div>
					<div class="author-info">
						<div class="line"></div>
						<span class="author-role">감독</span>
						<h4>
							<a href="#" class="author-name">〈오케이 마담>을 연출한 이철하 감독</a>
						</h4>
						<p>중앙대학교 일어일문학과를 졸업했으며, 광고회사 코래드 프로듀서와 《시월애》 조감독을 거쳐 미국 유학시절
							우연한 기회에 공동 연출한 god의 뮤직비디오가 플래티넘 히트를[1] 기록하면서 여러 편의 뮤직비디오와 CF에서
							연출력과 비주얼리스트로써의 역량을 입증했다. 《사랑따윈 필요없어》로 데뷔했다.</p>
					</div>
				</div>
				<!-- 배우 소개 -->
				<div class="single-blog-area blog-style-2 mb-50">
					<!-- Blog Content -->
					<div class="single-blog-content">
						<div class="line"></div>
						<a href="#" class="post-tag">배우 소개</a>
						<h6>〈오케이 마담>에 출연한 배우들</h6>
						<div class="actor-profile" style="display: flex;">
							<img class="actor-photo"
								src="${rPath }/img/funding_detail/actor1.jpg" alt=""
								style="margin-right: 50px;"> <img class="actor-photo"
								src="${rPath }/img/funding_detail/actor2.jpg" alt=""
								style="margin-right: 50px;"> <img class="actor-photo"
								src="${rPath }/img/funding_detail/actor3.jpg" alt=""
								style="margin-right: 50px;"> <img class="actor-photo"
								src="${rPath }/img/funding_detail/actor4.jpg" alt="">
						</div>
					</div>
				</div>

				<!-- 펀딩목적 -->
				<div class="blog-post-author mt-100 d-flex">
					<div class="author-info">
						<div class="line"></div>
						<span class="author-role">펀딩 목적</span>
						<h6>펀딩 목적</h6>
						<p>${vo.funpurpose }</p>
					</div>
				</div>

				<!-- 펀딩예산안 -->
				<div class="single-blog-area blog-style-2 mb-50">
					<div class="single-blog-content">
						<div class="line"></div>
						<a href="#" class="post-tag">프로젝트 예산</a>
						<h5>
							<strong>프로젝트 예산</strong>
						</h5>
						<div>
							<br>${vo.funbudget }
						</div>
					</div>
				</div>
				<!--  -->
				<div class="blog-post-author mt-100 d-flex"
					style="margin-top: 30px;">
					<div class="box">
						<img class="profile" src="${rPath }/img/funding/director.jpg"
							alt="">
					</div>
					<div class="author-info">
						<div class="line"></div>
						<span class="author-role">감독</span>
						<h4>
							<a href="#" class="author-name">〈오케이 마담>을 연출한 이철하 감독</a>
						</h4>
						<p>중앙대학교 일어일문학과를 졸업했으며, 광고회사 코래드 프로듀서와 《시월애》 조감독을 거쳐 미국 유학시절
							우연한 기회에 공동 연출한 god의 뮤직비디오가 플래티넘 히트를[1] 기록하면서 여러 편의 뮤직비디오와 CF에서
							연출력과 비주얼리스트로써의 역량을 입증했다. 《사랑따윈 필요없어》로 데뷔했다.</p>
					</div>
				</div>


				<div style="text-align: center;">
					<object width="800" height="515"
						data="https://www.youtube.com/embed/Cpzns_3BWII" type="text/html"
						style="align-items: center; padding-top: 50px;"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
						allowfullscreen></object>
				</div>
			</div>
		</div>
	</div>

	<!-- 데이터 넣기 -->


	<div id="footer">
		<button class="button1">펀딩하기</button>
		<a style="display: inline-block; margin-left: 220px;" href="#">
			<div
				style="border: 1px solid #d0d0d0; border-color: #d0d0d0; text-align: center; border-radius: 4px; padding: 4px 4px;">
				<i class="material-symbols-outlined">share</i><br>공유하기
			</div>
		</a>
	</div>

	<!-- div id="footer" style="display: flex; align-items: center;">
          	<button class="button1">펀딩하기</button>
         	<div class = "share1" style="padding: 4px 12px; text-align: center; margin-left: 400px;">
				<button style=" border:1px solid black; border-radius: 7px; background-color: #fff;" >
					<p class="material-symbols-outlined">share</p>
					<p style="margin: 0">공유하기</p>
				</button>
			</div>
         </div-->



	<div class="dropdown">
		<button class="dropbtn">
			<span class="dropbtn_icon">more_horiz</span> 펀딩할 금액을 선택해주세요
		</button>
		<div class="dropdown-content">
			<a href="#">${vo.cost }원</a> <a href="#">30000원</a> <a href="#">50000원</a>
			<a href="#">100000원</a> <a href="#">자유롭게 펀딩하기</a>
		</div>
	</div>

</div>
<!-- 컨테이너 끝 -->


<script>
	$(function() {
		$('#fBtn').click(function(e) {
			alert($('#funmoney').val() + "원 펀딩확인");
			//e.preventDefault();
		});
	});
</script>
</html>
<%@include file="../temp/footer.jsp"%>
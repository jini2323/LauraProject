<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fdetail_ing.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
</head>
<body>
	<!-- 컨테이너 시작 -->
	<div id="contents">
		<!-- 펀딩하기 -->
		<div class="main-banner wow fadeIn" id="top" data-wow-duration="1s"
			data-wow-delay="0.5s" style="padding-top: 50px;">
			<div class="container" id="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-6" style="text-align: center;">
								<div class="right-image wow fadeInRight" data-wow-duration="1s"
									data-wow-delay="0.5s">
									<img class="sum-img" src="${rPath }/img/funding/1.gif" alt="">
								</div>
							</div>
							<div class="col-lg-6" style="padding-top: 10px;">
								<div class="left-content header-text wow fadeInLeft"
									data-wow-duration="1s" data-wow-delay="1s">
									<div class="row">
										<div class="col-lg-12">
											<h2 style="font-weight: bold;">오케이마담</h2>
											<p>난데없는 비행기 납치 사건의 유일한 해결사가 되어버린 부부. 평범했던 과거는 접어두고, 숨겨왔던
												내공을 펼치며 인질이 된 승객을 구하기 시작한다! 휴가 끝 ;; 작전 시작 ^^ 구하자 비행기! 가자
												하와이로!</p>
											<h4 style="color: #23d0f5; margin-top: 10px; margin-bottom: 10px;">1000% 달성
												<span style="font-family: 'Jua', sans-serif; background-color: #cff1fc; color: #23d0f5; padding: 2px 4px; font-size: 14px; margin-bottom: 6px; border-radius: 5px; font-size: 16px;">23일 남음</span>
											</h4>
											
											<h4 style="margin-top: 10px;">2억5000만원 달성
												<span style="background-color: #ececec; padding: 2px 4px; margin-left: 6px; font-size: 16px; border-radius: 5px;">107명 참여</span>
											</h4>
											<div class="aim">
												<h6>
													<strong>목표금액</strong> 30,000,000원 달성
												</h6>
												<h6>
													<strong>펀딩기간</strong> 2023.04.10~2024.04.12
												</h6>
												<h6>
													<strong>결제</strong> 2023.04.20 결제 진행
												</h6>
											</div>
										</div>

										<form action="#">
											<label for="money"></label> <select name="cost" id="cost">
												<option value="choose">펀딩할 금액을 선택해주세요</option>
												<option value="choose">10000원</option>
												<option value="choose">30000원</option>
												<option value="choose">50000원</option>
												<option value="choose">100000원</option>
												<option value="choose">150000원</option>
												<option value="choose">200000원</option>
												<option value="free_choose">자유롭게 펀딩하기</option>
											</select>
											<div class="wrap">
												<input class="button" type="submit" value="펀딩하기"> 
												<a class="like-btn" href="#">
													<div style="border: 1px solid #d0d0d0; border-color: #d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width: 70px;">
														<p style="margin: 0" class="material-symbols-outlined">favorite</p>
														<p style="margin: 0">좋아요</p>
													</div>
												</a> 
												<a class="share-btn" href="#">
													<div style="border: 1px solid #d0d0d0; border-color: #d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width: 70px;">
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
								<a href="#" class="post-headline mb-0">오케이 마담</a>
							</h4>
							
							극강의 쫄깃함으로 빠른 완판을 기록하는 꽈배기 맛집 사장 '미영'은 컴퓨터 수리 전문가 '석환'의 남다른 외조로
							하와이 여행에 당첨되고, 난생처음 해외 여행을 떠나게 된다. 하지만 비밀 요원을 쫓는 테러리스트들도 같은 비행기에
							오르고 꿈만 같았던 여행은 아수라장이 된다. 난데없는 비행기 납치 사건의 유일한 해결사가 되어버린 부부. 평범했던
							과거는 접어두고, 숨겨왔던 내공을 펼치며 인질이 된 승객을 구하기 시작한다! 휴가 끝 ;; 작전 시작 ^^ 구하자
							비행기! 가자 하와이로!
						</div>
					</div>

					<!-- 감독 소개 -->
					<div class="blog-post-author mt-100 d-flex" style = "margin-top: 30px;">
						<div class="box">
							<img class="profile" src="${rPath }/img/funding/director.jpg" alt="">
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
							<p>영화 [오케이마담]은 어려운 상황을 딛고 제작을 완성했고, 자체 시사회 진행 결과 작품의 가능성을
								확인하였습니다. 좋은 영화를 함께 나누고자 코로나 펜데믹 상황으로 더욱 어려운 극장 환경 속에서 텀블벅을 통해 극장
								대관 행사를 개최하여 새로운 성공 케이스를 보여주려 합니다. 상업영화들은 개봉 1~2주전부터 예매가 열리는 반면,
								다큐멘터리를 비롯한 독립예술영화들은 개봉 주 월요일이 되어서야 예매가 열리는 상황입니다. 대형 멀티플렉스에
								[오케이마담]에 대한 관객들의 지지와 기대를 증명하여 상영관을 확보하고 더 많은 관객들이 극장에서 볼 수 있는
								기회를 만들기 위해 펀딩을 진행하게 되었습니다.</p>
						</div>
					</div>
					
					<!-- 펀딩목적 -->
					<div class="single-blog-area blog-style-2 mb-50">
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">프로젝트 예산</a>
							<h5><strong>프로젝트 예산</strong></h5>
							<div>
							<br>
							시사회 개최비용 등 총 5,000만원 
								<br>
								●대관비 : 3,000만원 
								<br>
								●포토북 : 500만원
								<br> 
								●DVD제작비 : 1,500만원
								<br>
							최종 발주수량에 따라 세부 비용은 변동될 수 있습니다.
							</div>
						</div>
					</div>
					<!--  -->
					<div class="blog-post-author mt-100 d-flex" style = "margin-top: 30px;">
						<div class="box">
							<img class="profile" src="${rPath }/img/funding/director.jpg" alt="">
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
          		<div style="border: 1px solid #d0d0d0; border-color:#d0d0d0; text-align: center; border-radius: 4px; padding: 4px 4px;">
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
				<a href="#">10000원</a> 
				<a href="#">30000원</a> 
				<a href="#">50000원</a>
				<a href="#">100000원</a> 
				<a href="#">자유롭게 펀딩하기</a>
			</div>
		</div>

	</div> <!-- 컨테이너 끝 -->
	
	<!-- 푸터 시작 -->
    <div class="instagram-feed-area">
        <div class="container">
            <div class="row">
                <div class="col-12-col-9">
                    <div class="insta-title">
                        <h5>Follow us @ Instagram</h5>
                    </div>
                </div>
            </div>
        </div>
        <!-- Instagram Slides -->
        <div class="instagram-slides owl-carousel" style="height: 300px">
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/200.jpeg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/funding.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/pp.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/sky.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/IMG_5month1.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/IMG_6month.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
            <!-- Single Insta Feed -->
            <div class="single-insta-feed">
                <img src="${rPath }/img/instagram-img/IMG_bong1.jpg" alt="">
                <!-- Hover Effects -->
                <div class="hover-effects">
                    <a href="#" class="d-flex align-items-center justify-content-center"><i class="fa fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Instagram Feed Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area text-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                   
                    <!-- Footer Nav Area -->
                    <div class="classy-nav-container breakpoint-off">
                        <!-- Classy Menu -->
                        <nav class="classy-navbar justify-content-center">

                            <!-- Navbar Toggler -->
                            <div class="classy-navbar-toggler">
                                <span class="navbarToggler"><span></span><span></span><span></span></span>
                            </div>

                            <!-- Menu -->
                            <div class="classy-menu">

                                <!-- close btn -->
                                <div class="classycloseIcon">
                                    <div class="cross-wrap">
	                                    <span class="top"></span>
	                                    <span class="bottom"></span>
                                    </div>
                                </div>

                                <!-- Nav Start -->
                                <div class="classynav">
                                    <ul>
                                        <li><a href="#">Home</a></li>
                                        <li><a href="#">About Us</a></li>
                                        <li><a href="#">Lifestyle</a></li>
                                        <li><a href="#">travel</a></li>
                                        <li><a href="#">Music</a></li>
                                        <li><a href="#">Contact</a></li>
                                    </ul>
                                </div>
                                <!-- Nav End -->
                            </div>
                        </nav>
                    </div>
                    
                    <!-- Footer Social Area -->
                    <div class="footer-social-area mt-30">
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest">
                        	<i class="fa fa-pinterest" aria-hidden="true"></i>
                        </a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook">
                        	<i class="fa fa-facebook" aria-hidden="true"></i>
                        </a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter">
                        	<i class="fa fa-twitter" aria-hidden="true"></i>
                        </a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Dribbble">
                        	<i class="fa fa-dribbble" aria-hidden="true"></i>
                        </a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Behance">
                        	<i class="fa fa-behance" aria-hidden="true"></i>
                        </a>
                        <a href="#" data-toggle="tooltip" data-placement="top" title="Linkedin">
                        	<i class="fa fa-linkedin" aria-hidden="true"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>

   <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->

    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- jQuery (Necessary for All JavaScript Plugins) -->
    <script src="<%=application.getContextPath()%>/resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="<%=application.getContextPath()%>/resources/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="<%=application.getContextPath()%>/resources/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="<%=application.getContextPath()%>/resources/js/plugins.js"></script>
    <!-- Active js -->
    <script src="<%=application.getContextPath()%>/resources/js/active.js"></script>

</body>

</html>
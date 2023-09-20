<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="${rPath}/css/index.css">


    <!-- ##### Hero Area Start ##### -->
     <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <!-- 0711_메인이미지_펀딩리스트로 연결_phj -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath }/img/mainPage/background.png); height:370px;" onclick="location='fboardList'">
                <div class="container">
                    <div class="row align-items-left">
                        <div class="col-12">
                            <div class="slide-content text-left wow fadeInUp" data-wow-delay="0.2s">
                            	<h2 data-animation="fadeInUp" data-delay="200ms"><strong>영화 펀딩 1위 라우라</strong>와 함께 펀딩하세요</h2>
                            	<p data-animation="fadeInUp" data-delay="200ms">펀딩을 처음 하시는 분도 쉽게 이용할 수 있어요<p>
                               <!--  <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">민주당 후보 자리를 놓고 빌 클린턴이 펼쳤던 캠페인 재현 현장속으로!</a>
                                </div> -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath}/img/mainPage/mainMovieFunImg.jpg); height:370px;"  onclick="location='fboardList'">
                <div class="container">
                    <div class="row align-items-left">
                        <div class="col-12">
                            <div class="slide-content text-left wow fadeInUp" data-wow-delay="0.2s">
                            	<strong data-animation="fadeInUp" data-delay="200ms">익스펜더블2</strong><br>
                            	<strong data-animation="fadeInUp" data-delay="200ms">할리우드 영화 투자</strong>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath}/img/mainPage/storeCart.jpg); height:370px;"  onclick="location='fboardList'">
                <div class="container">
                    <div class="row align-items-left">
                        <div class="col-12">
                            <div class="slide-content text-left wow fadeInUp" data-wow-delay="0.2s">
                                <h3 data-animation="fadeInUp" data-delay="200ms">포인트 스토어에서 굿즈를 구경해보세요</h3>
                            	<h4 data-animation="fadeInUp" data-delay="200ms">고민하는 순간 품절!</h4>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper">
        <div class="container" style = "max-width:1300px;">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-7" style = "border-right:1px solid #eee;">
                    <div class="popularContent_title">
                        <h4 style = "">주목할 만한 프로젝트</h4>
                    </div>
                    <div class= "mainContentBox">
                    	<div class = "firstRowBox" style = "">
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster1.jpg" style = "">
	                    			<div class = "contentWapper_text" style = "">
		                    			<div class = "movieType"> 
		                    				<span>Alice in the cities</span>
		                    				<span>모험</span>
		                    			</div>
		                    			<div style = "display:flex;"><span style = "color:#00c4c4;font-weight:bold;">28,749%</span></div>
	                    			</div>
	                    		</div><!-- contentWapper_content -->
	                    	</div><!-- contentWapper -->
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster2.jpg">
	                    			<div class = "contentWapper_text" style = "display:grid;">
		                    			<div class = "movieType"> 
		                    				<span>인터스텔라</span>
		                    				<span>공상과학</span>
		                    			</div>
		                    			<div style = "display:flex;"><span style = "color:#00c4c4;font-weight:bold;">28,749%</span></div>
	                    			</div>
	                    		</div>
	                    	</div><!-- contentWapper -->
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster3.jpg">
	                    			<div class = "contentWapper_text" style = "display:grid;">
		                    			<div class = "movieType"> 
		                    				<span>밀정</span>
		                    				<span>액션</span>
		                    			</div>
		                    			<div style = "display:flex;"><span style = "color:#00c4c4;font-weight:bold;">28,749%</span></div>
	                    			</div>
	                    		</div>
	                    	</div><!-- contentWapper -->
                    	</div><!-- firstRowBox -->
                    	<div class = "secondeRowBox" style = "">
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster4.jpg">
	                    			<div class = "contentWapper_text" style = "display:grid;">
		                    			<div class = "movieType"> 
		                    				<span>해리포터</span>
		                    				<span>판타지</span>
		                    			</div>
		                    			<div style = "display:flex;"><span style = "color:#00c4c4;font-weight:bold;">28,749%</span></div>
	                    			</div>
	                    		</div>
	                    	</div><!-- contentWapper -->
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster8.jpg">
	                    			<div class = "contentWapper_text" style = "display:grid;">
		                    			<div class = "movieType"> 
		                    				<span>서울역</span>
		                    				<span>애니메이션</span>
		                    			</div>
		                    			<div style = "display:flex;"><span style = "color:#00c4c4;font-weight:bold;">28,749%</span></div>
	                    			</div>
	                    		</div>
	                    	</div><!-- contentWapper -->
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster9.jpg">
	                    			<div class = "contentWapper_text" style = "display:grid;">
		                    			<div class = "movieType"> 
		                    				<span>시동</span>
		                    				<span>코미디</span>
		                    			</div>
		                    			<div style = "display:flex;"><span style = "color:#00c4c4;font-weight:bold;">28,749%</span></div>
	                    			</div>
	                    		</div>
	                    	</div><!-- contentWapper -->
                    	</div><!-- secondeRowBox -->
                    </div><!-- mainContentBox -->
                </div><!-- col-12 col-lg-7 -->
                <div class="col-12 col-lg-4" style = "height:550px;padding:40px 0 40px 50px;">
                    <div class="fundingRanking">
                        <div class="fundingRanking_title">
                           <h4>실시간 랭킹</h4>
                        </div><!-- fundingRanking_title -->
						<div class = "fundingRanking_page">
							<div class = "page-header">
							    <div class="nav_tab">
							       <ul>
							            <li><a href="#" data-floor="1" class="active">펀딩/프리오더</a></li>
							            <li><a href="#" data-floor="2">스토어</a></li>
							       </ul>
							    </div>
        					</div> <!-- page-header 끝!!-->
						</div><!-- fundingRanking_page -->
					<div class = "page-body">
						<div class = "floor" id = "f1">
							<div class = "fundingRanking_contents wow fadeInUp" data-wow-delay="0.5s">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>1</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>Alice in the cities</span>&nbsp;<span>모험</span></div>
										<div class = "finding_percents">
											<span>1,400</span><span>%</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster1.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents wow fadeInUp" data-wow-delay="1.5s">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>2</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>더문</span>&nbsp;<span>공상과학</span></div>
										<div class = "finding_percents">
											<span>3,645</span><span>%</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster6.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents wow fadeInUp" data-wow-delay="2.5s">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>3</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>밀정</span>&nbsp;<span>액션</span></div>
										<div class = "finding_percents">
											<span>13,390</span><span>%</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster3.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents wow fadeInUp" data-wow-delay="3.5s">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>4</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>시동</span>&nbsp;<span>코미디</span></div>
										<div class = "finding_percents">
											<span>34,890</span><span>%</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster9.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents wow fadeInUp" data-wow-delay="4.5s">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>5</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>오펜하이머</span>&nbsp;<span>스릴러</span></div>
										<div class = "finding_percents">
											<span>340</span><span>%</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster7.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
						</div><!-- floor -->






						<div class = "floor" id = "f2">
							<div class = "fundingRanking_contents">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>1</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>테스트테스트테스트2222222</span></div>
										<div>
											<span>테스트 2번째 줄</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster6.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>2</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>테스트테스트테스트2222222</span></div>
										<div>
											<span>테스트 2번째 줄</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster4.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>3</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>테스트테스트테스트2222222</span></div>
										<div>
											<span>테스트 2번째 줄</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster4.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>4</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>테스트테스트테스트2222222</span></div>
										<div>
											<span>테스트 2번째 줄</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster4.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
							<div class = "fundingRanking_contents">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>5</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>테스트테스트테스트2222222</span></div>
										<div>
											<span>테스트 2번째 줄</span>
										</div>
									</div><!-- fundingRanking_mainText -->
								</div><!-- fundingRanking_text -->
								<div class = "fundingRanking_img">
									<img src = "${rPath }/img/mainPage/mainPagePoster4.jpg">
								</div><!-- fundingRanking_img -->
							</div><!-- fundingRanking_contents -->
						</div><!-- floor -->
					</div><!-- page-body -->
                  </div><!-- fundingRanking -->
                </div><!-- col-12 col-lg-5 -->
              </div><!-- row align-items-end -->
           </div><!-- container -->
        </div><!-- blog-wrapper -->

		
        		<div class="container" style = "max-width: 1300px;">
					<div class = "TrendApp_wrapper wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
						<div class = "DebutFundingList_container">
							<div class = "title_contentWrapper">
									<h4>주목하세요! 오늘 오픈한 프로젝트</h4>
							</div>
						</div>
							<div class = "DebutFundingList_inner">
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster1.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>영화1</span>&nbsp;<span>스릴러</span></div>
											<div class = "DebutFunding_percent"><span>50</span><span>%</span></div>
										</div>
									</div><!-- DebutFundingDesktop_card -->
								</div><!-- DebutFundingList_content -->
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster2.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>영화1</span>&nbsp;<span>스릴러</span></div>
											<div class = "DebutFunding_percent"><span>50</span><span>%</span></div>
										</div>
									</div><!-- DebutFundingDesktop_card -->
								</div><!-- DebutFundingList_content -->
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster3.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>영화1</span>&nbsp;<span>스릴러</span></div>
											<div class = "DebutFunding_percent"><span>50</span><span>%</span></div>
										</div>
									</div><!-- DebutFundingDesktop_card -->
								</div><!-- DebutFundingList_content -->
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster4.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>영화1</span>&nbsp;<span>스릴러</span></div>
											<div class = "DebutFunding_percent"><span>50</span><span>%</span></div>
										</div>
									</div><!-- DebutFundingDesktop_card -->
								</div><!-- DebutFundingList_content -->
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster8.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>영화1</span>&nbsp;<span>스릴러</span></div>
											<div class = "DebutFunding_percent"><span>50</span><span>%</span></div>
										</div>
									</div><!-- DebutFundingDesktop_card -->
								</div><!-- DebutFundingList_content -->
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster9.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>영화1</span>&nbsp;<span>스릴러</span></div>
											<div class = "DebutFunding_percent"><span>50</span><span>%</span></div>
										</div>
									</div><!-- DebutFundingDesktop_card -->
								</div><!-- DebutFundingList_content -->
							</div><!-- DebutFundingList_inner -->
						</div><!-- TrendApp_wrapper -->

				 
			<div class="row">
                <div class="col-12 col-lg-12">
                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1000ms" style = "margin-top: 40px;">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-4">
                                <div class="single-blog-thumbnail">
                                    <a class = "eventList" href="eventMain"><img src="${rPath }/img/mainPage/check.png" alt=""></a>
                                    <div class = "eventBox">
	                                    <div class = "eventList_text">
	                                    	<span>9월 출석체크 이벤트</span>
	                                    	<p>최대 5천원 할인 쿠폰 받기</p>
	                                    </div>
	                                    <a href = "eventMain">
		                                    <div class = "eventList_Btn">
		                                    	<button type = "button"><span>바로가기</span></button>
		                                    </div>
		                                </a>
	                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="single-blog-thumbnail">
                                    <a class = "eventList" href="eventMain"><img src="${rPath }/img/mainPage/welcomeCoupon.jpg" alt=""></a>
                                    <div class = "eventBox">
	                                    <div class = "eventList_text">
	                                    	<span>9월 출석체크 이벤트</span>
	                                    	<p>최대 5천원 할인 쿠폰 받기</p>
	                                    </div>
	                                    <a href = "eventMain">
		                                    <div class = "eventList_Btn">
		                                    	<button type = "button"><span>바로가기</span></button>
		                                    </div>
		                                </a>
	                                </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-4">
                                <div class="single-blog-thumbnail">
                                    <a class = "eventList" href="eventMain"><img src="${rPath }/img/mainPage/storeGift.jpg" alt=""></a>
                                    <div class = "eventBox">
	                                    <div class = "eventList_text">
	                                    	<span>9월 출석체크 이벤트</span>
	                                    	<p>최대 5천원 할인 쿠폰 받기</p>
	                                    </div>
	                                    <a href = "eventMain">
		                                    <div class = "eventList_Btn">
		                                    	<button type = "button"><span>바로가기</span></button>
		                                    </div>
		                                </a>
	                                </div>
                                </div>
                            </div>
                        </div><!-- row align-items-center -->
                     </div><!-- single-blog-area -->
                  </div><!-- col-12 col-lg-12 -->
               </div><!-- row -->
				
				
				<div class = "enterArticle">
					<h4 style = "font-weight:bold;font-family:'NanumSquareNeo-Variable';margin-top:35px">급상승 기사</h4>
					<a href = "newsList">
						<div class = "enterArticleSpanTag">
							<span>더보기</span>
							<span class="material-symbols-outlined">chevron_right</span>
						</div>
					</a>
				</div>
					<div  class = "article-wrap wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1000ms">
						<div class = "article-mainBox" style = "width: 1270px">
							<div class= "article-img">
								<img src = "${rPath }/img/mainPage/articlePoster.jpg">
							</div>
							<div class = "article-content">
								<a href = "http://localhost:8005/laura_0816_total_ing/newsDetail?nnum=28">
									<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/articlePoster.jpg">
										<div class= "article-title">
											<span>봉준호·박찬욱 키드…칸·아카데미 사로잡는다</span>
										</div>
										<div class = "article-text">
											<span>아카데미 국제 장편영화 부문 한국 출품작으로 뽑힌 ‘콘크리트 유토피아’.</span>
										</div>
									</div>
								</a>
								<a href = "http://localhost:8005/laura_0816_total_ing/newsDetail?nnum=27">
									<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/crimecity.jpg">
										<div class= "article-title">
											<span>2023년 첫 천만 영화 탄생… '범죄도시3' 뒤를 이을 여름 대목의 승자는?</span>
										</div>
										<div class = "article-text">
											<span>2023년에 개봉한 영화 중 첫 천만 관객 영화가 탄생했다. 영화진흥위원회 영화관입장권에 따...</span>
										</div>
									</div>
								</a>
								<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/mainPagePoster6.jpg">
									<div class= "article-title">
										<span>“2023년 한국 여름 영화에는 ‘지금’,‘여기’,‘현재’가 없다.”, 한국 여름영화 ‘BIG4’</span>
									</div>
									<div class = "article-text">
										<span><더 문>과 <비공식작전>의 경우, 신파조차 남기지 못한</span>
									</div>
								</div>
								<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/mainPagePoster7.jpg">
									<div class= "article-title">
										<span> ‘차이와 대조를 인식하라’, <오펜하이머>의 사운드 디자인에 관하여</span>
									</div>
									<div class = "article-text">
										<span><오펜하이머>는 사운드 디자인이 독특한 영화다. 누군가 ‘이미지로 설명된 사운드트랙을 보았...</span>
									</div>
								</div>
							</div><!-- article-content -->
						</div><!-- article-mainBox -->
						<!-- <div class= "subArticle">
								<div class = "subArticle_title">
									<h5>최신기사</h5>
								</div>
								<div class = "subArticle_content">
									<div class = "subArticle_title">
										<span></span>
									</div>
									<div class = "subArticle_title">
										<span></span>
									</div>
									<div class = "subArticle_title">
										<span></span>
									</div>
									<div class = "subArticle_title">
										<span></span>
									</div>
									<div class = "subArticle_title">
										<span></span>
									</div>
								</div>
							</div> -->
					</div><!-- article-wrap -->
				
					
					
					<div class="breadcumb-area bg-img wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1000ms" style="background-image: url(${rPath }/img/bg-img/project.jpg);">
				        <div class="h-100" style = "padding:0 14px;">
				            <div class="row align-items-center h-100" style = "">
				                <div class="col-12">
				                    <div class="imgText" style = "">
				                        <span>라우라에서 지금 바로 프로젝트를 시작하세요</span>
				                        <p style = "">이미 많은 메이커가 라우라를 경험했어요</p>
				                        <div>
				                        	 <a href = "pageone"><button aria-label="프로젝트 만들기" class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_md__46Ai- funding-open-button" type="submit">
												<span>프로젝트 만들기</span>
											</button></a>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
				</div>





    <script>
<!-- 페이지 이동 없이 내용 변경하는 텝 -->
        $(function() {
            $('.floor:first').show(); // 첫번째 tab을 보여준다고 선언
            $('.nav_tab a').click(function(){ // nav_tab이라는 클래스 안에 a태그를 클릭하면 작동한다고 선언
                $('.nav_tab a').removeClass('active'); // nav_tab이라는 클래스 안에 a태그를 클릭하면 기존 active라는 클래스 삭제
                $(this).addClass('active'); // nav_tab이라는 클래스 안에 a태그를 클릭하면 클릭한곳에 active라는 클래스 생성
                $('.floor').hide(); // 다른 floor라는 클래스를 가진 요소들을 hide(감춘다)
                $('#f' + $(this).data('floor')).show(); // 클릭한 f + this에 floor만 보여준다
            });
        });
        
        
      //--------------------------클릭시 글씨 색상 변하는 기능--------------------------------------
    	// 모든 링크와 해당 li 요소들을 가져옵니다.
        const tabLinks = document.querySelectorAll('.nav_tab a');
        const tabListItems = document.querySelectorAll('.nav_tab li');

        // 링크를 클릭할 때 실행될 함수
        tabLinks.forEach((link, index) => {
            link.addEventListener('click', function(event) {
                // 모든 li 요소의 border-bottom 스타일을 초기화합니다.
            	tabLinks.forEach(link => {
                    link.classList.remove('active');
                });

                
                link.classList.add('active');
            });
        });
        
     // 링크를 클릭할 때 실행될 함수
        tabListItems.forEach((link, index) => {
            link.addEventListener('click', function(event) {
            	tabListItems.forEach(link => {
                    link.classList.remove('active');
                });

                
                link.classList.add('active');
            });
        });
        

//-----------------------------------article hover event------------------------------------------------
        const titleTextBoxes = document.querySelectorAll('.article-TitleTextBox');

        function handleHover() {
            const dataImage = this.getAttribute('data-image'); 
            const imgElement = this.closest('.article-mainBox').querySelector('.article-img img'); 

            imgElement.src = dataImage;

            this.style.backgroundColor = '#fff';
            this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.2)';
            this.style.borderRadius = '7px';
            this.style.color = '#00c4c4';
        }

        titleTextBoxes.forEach(function (titleTextBox) {
            titleTextBox.addEventListener('mouseover', handleHover);
            titleTextBox.addEventListener('mouseout', function () {
                this.style.backgroundColor = '#fff';
                this.style.boxShadow = '';
                this.style.color = 'black';
            });
        });
        
        
    </script>
    
    <script>
        new WOW().init();
    </script>
    
    
    
    
<%@include file="../temp/footer.jsp" %>
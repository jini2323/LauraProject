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
            <!-- 0711_�����̹���_�ݵ�����Ʈ�� ����_phj -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath }/img/mainPage/background.png); height:370px;" onclick="location='fboardList'">
                <div class="container">
                    <div class="row align-items-left">
                        <div class="col-12">
                            <div class="slide-content text-left wow fadeInUp" data-wow-delay="0.2s">
                            	<h2 data-animation="fadeInUp" data-delay="200ms"><strong>��ȭ �ݵ� 1�� ����</strong>�� �Բ� �ݵ��ϼ���</h2>
                            	<p data-animation="fadeInUp" data-delay="200ms">�ݵ��� ó�� �Ͻô� �е� ���� �̿��� �� �־��<p>
                               <!--  <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">���ִ� �ĺ� �ڸ��� ���� �� Ŭ������ ���ƴ� ķ���� ���� ���������!</a>
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
                            	<strong data-animation="fadeInUp" data-delay="200ms">�ͽ������2</strong><br>
                            	<strong data-animation="fadeInUp" data-delay="200ms">�Ҹ���� ��ȭ ����</strong>
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
                                <h3 data-animation="fadeInUp" data-delay="200ms">����Ʈ ������ ��� �����غ�����</h3>
                            	<h4 data-animation="fadeInUp" data-delay="200ms">����ϴ� ���� ǰ��!</h4>
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
                        <h4 style = "">�ָ��� ���� ������Ʈ</h4>
                    </div>
                    <div class= "mainContentBox">
                    	<div class = "firstRowBox" style = "">
	                    	<div class = "contentWapper">
	                    		<div class = "contentWapper_content">
	                    			<img src = "${rPath }/img/mainPage/mainPagePoster1.jpg" style = "">
	                    			<div class = "contentWapper_text" style = "">
		                    			<div class = "movieType"> 
		                    				<span>Alice in the cities</span>
		                    				<span>����</span>
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
		                    				<span>���ͽ��ڶ�</span>
		                    				<span>�������</span>
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
		                    				<span>����</span>
		                    				<span>�׼�</span>
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
		                    				<span>�ظ�����</span>
		                    				<span>��Ÿ��</span>
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
		                    				<span>���￪</span>
		                    				<span>�ִϸ��̼�</span>
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
		                    				<span>�õ�</span>
		                    				<span>�ڹ̵�</span>
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
                           <h4>�ǽð� ��ŷ</h4>
                        </div><!-- fundingRanking_title -->
						<div class = "fundingRanking_page">
							<div class = "page-header">
							    <div class="nav_tab">
							       <ul>
							            <li><a href="#" data-floor="1" class="active">�ݵ�/��������</a></li>
							            <li><a href="#" data-floor="2">�����</a></li>
							       </ul>
							    </div>
        					</div> <!-- page-header ��!!-->
						</div><!-- fundingRanking_page -->
					<div class = "page-body">
						<div class = "floor" id = "f1">
							<div class = "fundingRanking_contents wow fadeInUp" data-wow-delay="0.5s">
								<div class = "fundingRanking_text">
									<div class = "fundingRanking_num"><span>1</span></div>
									<div class = "fundingRanking_mainText">
										<div><span>Alice in the cities</span>&nbsp;<span>����</span></div>
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
										<div><span>����</span>&nbsp;<span>�������</span></div>
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
										<div><span>����</span>&nbsp;<span>�׼�</span></div>
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
										<div><span>�õ�</span>&nbsp;<span>�ڹ̵�</span></div>
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
										<div><span>�������̸�</span>&nbsp;<span>������</span></div>
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
										<div><span>�׽�Ʈ�׽�Ʈ�׽�Ʈ2222222</span></div>
										<div>
											<span>�׽�Ʈ 2��° ��</span>
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
										<div><span>�׽�Ʈ�׽�Ʈ�׽�Ʈ2222222</span></div>
										<div>
											<span>�׽�Ʈ 2��° ��</span>
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
										<div><span>�׽�Ʈ�׽�Ʈ�׽�Ʈ2222222</span></div>
										<div>
											<span>�׽�Ʈ 2��° ��</span>
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
										<div><span>�׽�Ʈ�׽�Ʈ�׽�Ʈ2222222</span></div>
										<div>
											<span>�׽�Ʈ 2��° ��</span>
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
										<div><span>�׽�Ʈ�׽�Ʈ�׽�Ʈ2222222</span></div>
										<div>
											<span>�׽�Ʈ 2��° ��</span>
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
									<h4>�ָ��ϼ���! ���� ������ ������Ʈ</h4>
							</div>
						</div>
							<div class = "DebutFundingList_inner">
								<div class = "DebutFundingList_content">
									<div class ="DebutFundingDesktop_card">
										<div class = "DebutFundingCotnent_img">
											<img src = "${rPath }/img/mainPage/mainPagePoster1.jpg">
										</div>
										<div class = "DebutFundingContent_text">
											<div class = "DebutFunding_MovieTitle"><span>��ȭ1</span>&nbsp;<span>������</span></div>
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
											<div class = "DebutFunding_MovieTitle"><span>��ȭ1</span>&nbsp;<span>������</span></div>
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
											<div class = "DebutFunding_MovieTitle"><span>��ȭ1</span>&nbsp;<span>������</span></div>
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
											<div class = "DebutFunding_MovieTitle"><span>��ȭ1</span>&nbsp;<span>������</span></div>
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
											<div class = "DebutFunding_MovieTitle"><span>��ȭ1</span>&nbsp;<span>������</span></div>
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
											<div class = "DebutFunding_MovieTitle"><span>��ȭ1</span>&nbsp;<span>������</span></div>
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
	                                    	<span>9�� �⼮üũ �̺�Ʈ</span>
	                                    	<p>�ִ� 5õ�� ���� ���� �ޱ�</p>
	                                    </div>
	                                    <a href = "eventMain">
		                                    <div class = "eventList_Btn">
		                                    	<button type = "button"><span>�ٷΰ���</span></button>
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
	                                    	<span>9�� �⼮üũ �̺�Ʈ</span>
	                                    	<p>�ִ� 5õ�� ���� ���� �ޱ�</p>
	                                    </div>
	                                    <a href = "eventMain">
		                                    <div class = "eventList_Btn">
		                                    	<button type = "button"><span>�ٷΰ���</span></button>
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
	                                    	<span>9�� �⼮üũ �̺�Ʈ</span>
	                                    	<p>�ִ� 5õ�� ���� ���� �ޱ�</p>
	                                    </div>
	                                    <a href = "eventMain">
		                                    <div class = "eventList_Btn">
		                                    	<button type = "button"><span>�ٷΰ���</span></button>
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
					<h4 style = "font-weight:bold;font-family:'NanumSquareNeo-Variable';margin-top:35px">�޻�� ���</h4>
					<a href = "newsList">
						<div class = "enterArticleSpanTag">
							<span>������</span>
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
											<span>����ȣ�������� Ű�塦ĭ����ī���� �����´�</span>
										</div>
										<div class = "article-text">
											<span>��ī���� ���� ����ȭ �ι� �ѱ� ��ǰ������ ���� ����ũ��Ʈ �����Ǿơ�.</span>
										</div>
									</div>
								</a>
								<a href = "http://localhost:8005/laura_0816_total_ing/newsDetail?nnum=27">
									<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/crimecity.jpg">
										<div class= "article-title">
											<span>2023�� ù õ�� ��ȭ ź���� '���˵���3' �ڸ� ���� ���� ����� ���ڴ�?</span>
										</div>
										<div class = "article-text">
											<span>2023�⿡ ������ ��ȭ �� ù õ�� ���� ��ȭ�� ź���ߴ�. ��ȭ��������ȸ ��ȭ������ǿ� ��...</span>
										</div>
									</div>
								</a>
								<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/mainPagePoster6.jpg">
									<div class= "article-title">
										<span>��2023�� �ѱ� ���� ��ȭ���� �����ݡ�,�����⡯,�����硯�� ����.��, �ѱ� ������ȭ ��BIG4��</span>
									</div>
									<div class = "article-text">
										<span><�� ��>�� <���������>�� ���, �������� ������ ����</span>
									</div>
								</div>
								<div class = "article-TitleTextBox" data-image="${rPath }/img/mainPage/mainPagePoster7.jpg">
									<div class= "article-title">
										<span> �����̿� ������ �ν��϶�, <�������̸�>�� ���� �����ο� ���Ͽ�</span>
									</div>
									<div class = "article-text">
										<span><�������̸�>�� ���� �������� ��Ư�� ��ȭ��. ������ ���̹����� ����� ����Ʈ���� ����...</span>
									</div>
								</div>
							</div><!-- article-content -->
						</div><!-- article-mainBox -->
						<!-- <div class= "subArticle">
								<div class = "subArticle_title">
									<h5>�ֽű��</h5>
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
				                        <span>���󿡼� ���� �ٷ� ������Ʈ�� �����ϼ���</span>
				                        <p style = "">�̹� ���� ����Ŀ�� ���� �����߾��</p>
				                        <div>
				                        	 <a href = "pageone"><button aria-label="������Ʈ �����" class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_md__46Ai- funding-open-button" type="submit">
												<span>������Ʈ �����</span>
											</button></a>
				                        </div>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
				</div>





    <script>
<!-- ������ �̵� ���� ���� �����ϴ� �� -->
        $(function() {
            $('.floor:first').show(); // ù��° tab�� �����شٰ� ����
            $('.nav_tab a').click(function(){ // nav_tab�̶�� Ŭ���� �ȿ� a�±׸� Ŭ���ϸ� �۵��Ѵٰ� ����
                $('.nav_tab a').removeClass('active'); // nav_tab�̶�� Ŭ���� �ȿ� a�±׸� Ŭ���ϸ� ���� active��� Ŭ���� ����
                $(this).addClass('active'); // nav_tab�̶�� Ŭ���� �ȿ� a�±׸� Ŭ���ϸ� Ŭ���Ѱ��� active��� Ŭ���� ����
                $('.floor').hide(); // �ٸ� floor��� Ŭ������ ���� ��ҵ��� hide(�����)
                $('#f' + $(this).data('floor')).show(); // Ŭ���� f + this�� floor�� �����ش�
            });
        });
        
        
      //--------------------------Ŭ���� �۾� ���� ���ϴ� ���--------------------------------------
    	// ��� ��ũ�� �ش� li ��ҵ��� �����ɴϴ�.
        const tabLinks = document.querySelectorAll('.nav_tab a');
        const tabListItems = document.querySelectorAll('.nav_tab li');

        // ��ũ�� Ŭ���� �� ����� �Լ�
        tabLinks.forEach((link, index) => {
            link.addEventListener('click', function(event) {
                // ��� li ����� border-bottom ��Ÿ���� �ʱ�ȭ�մϴ�.
            	tabLinks.forEach(link => {
                    link.classList.remove('active');
                });

                
                link.classList.add('active');
            });
        });
        
     // ��ũ�� Ŭ���� �� ����� �Լ�
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
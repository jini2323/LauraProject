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
	<!-- �����̳� ���� -->
	<div id="contents">
		<!-- �ݵ��ϱ� -->
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
											<h2 style="font-weight: bold;">�����̸���</h2>
											<p>�������� ����� ��ġ ����� ������ �ذ�簡 �Ǿ���� �κ�. ����ߴ� ���Ŵ� ����ΰ�, ���ܿԴ�
												������ ��ġ�� ������ �� �°��� ���ϱ� �����Ѵ�! �ް� �� ;; ���� ���� ^^ ������ �����! ����
												�Ͽ��̷�!</p>
											<h4 style="color: #23d0f5; margin-top: 10px; margin-bottom: 10px;">1000% �޼�
												<span style="font-family: 'Jua', sans-serif; background-color: #cff1fc; color: #23d0f5; padding: 2px 4px; font-size: 14px; margin-bottom: 6px; border-radius: 5px; font-size: 16px;">23�� ����</span>
											</h4>
											
											<h4 style="margin-top: 10px;">2��5000���� �޼�
												<span style="background-color: #ececec; padding: 2px 4px; margin-left: 6px; font-size: 16px; border-radius: 5px;">107�� ����</span>
											</h4>
											<div class="aim">
												<h6>
													<strong>��ǥ�ݾ�</strong> 30,000,000�� �޼�
												</h6>
												<h6>
													<strong>�ݵ��Ⱓ</strong> 2023.04.10~2024.04.12
												</h6>
												<h6>
													<strong>����</strong> 2023.04.20 ���� ����
												</h6>
											</div>
										</div>

										<form action="#">
											<label for="money"></label> <select name="cost" id="cost">
												<option value="choose">�ݵ��� �ݾ��� �������ּ���</option>
												<option value="choose">10000��</option>
												<option value="choose">30000��</option>
												<option value="choose">50000��</option>
												<option value="choose">100000��</option>
												<option value="choose">150000��</option>
												<option value="choose">200000��</option>
												<option value="free_choose">�����Ӱ� �ݵ��ϱ�</option>
											</select>
											<div class="wrap">
												<input class="button" type="submit" value="�ݵ��ϱ�"> 
												<a class="like-btn" href="#">
													<div style="border: 1px solid #d0d0d0; border-color: #d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width: 70px;">
														<p style="margin: 0" class="material-symbols-outlined">favorite</p>
														<p style="margin: 0">���ƿ�</p>
													</div>
												</a> 
												<a class="share-btn" href="#">
													<div style="border: 1px solid #d0d0d0; border-color: #d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width: 70px;">
														<p style="margin: 0" class="material-symbols-outlined">share</p>
														<p style="margin: 0">����</p>
													</div>
												</a>
											</div>
										</form>
												<!-- <p style="border-radius: 5px; border: 1.8px solid; height: 50px;">
												<span class="material-symbols-outlined" style="align-items: center;"> favorite </span>
												���ƿ�
											</p> -->
										

										<!-- ��Ӵٿ� �� -->
										<!--  <div class="dropdown1">
											<button class="dropbtn1">
												<span class="dropbtn_icon">more_horiz</span> �ݵ��� �ݾ��� �������ּ���
											</button>
											<div class="dropdown-content1">
												<a href="#">10000��</a> 
												<a href="#">30000��</a> 
												<a href="#">50000��</a>
												<a href="#">100000��</a> 
												<a href="#">�����Ӱ� �ݵ��ϱ�</a>
											</div>
										</div> -->
										
										
										<!-- <div class="wrap">
											<button class="button">�ݵ��ϱ�</button>
											<a class="like-btn" href="#">
												<div style="border: 1px solid #d0d0d0; border-color:#d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width:70px;">
													<p style="margin: 0" class="material-symbols-outlined">favorite</p>
													<p style="margin: 0">���ƿ�</p>
												</div>
											</a>
											<a class="share-btn" href="#">
												<div style= "border: 1px solid #d0d0d0; border-color:#d0d0d0; border-radius: 4px; padding: 4px 12px; text-align: center; margin-left: 20px; width:70px;">
													<p style="margin: 0" class="material-symbols-outlined">share</p>
													<p style="margin: 0">����</p>
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
		
		<!-- �ó�ý� -->
		<div class="container" style="clear: both;">
			<div class="row">
				<div class="col-12">
				<hr>
					<div class="single-blog-area blog-style-2 mb-50">
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">��ȭ �Ұ�</a>
							<h4>
								<a href="#" class="post-headline mb-0">������ ����</a>
							</h4>
							
							�ذ��� �̱������� ���� ������ ����ϴ� �ʹ�� ���� ���� '�̿�'�� ��ǻ�� ���� ������ '��ȯ'�� ���ٸ� ������
							�Ͽ��� ���࿡ ��÷�ǰ�, ����ó�� �ؿ� ������ ������ �ȴ�. ������ ��� ����� �Ѵ� �׷�����Ʈ�鵵 ���� ����⿡
							������ �޸� ���Ҵ� ������ �Ƽ������� �ȴ�. �������� ����� ��ġ ����� ������ �ذ�簡 �Ǿ���� �κ�. ����ߴ�
							���Ŵ� ����ΰ�, ���ܿԴ� ������ ��ġ�� ������ �� �°��� ���ϱ� �����Ѵ�! �ް� �� ;; ���� ���� ^^ ������
							�����! ���� �Ͽ��̷�!
						</div>
					</div>

					<!-- ���� �Ұ� -->
					<div class="blog-post-author mt-100 d-flex" style = "margin-top: 30px;">
						<div class="box">
							<img class="profile" src="${rPath }/img/funding/director.jpg" alt="">
						</div>
						<div class="author-info">
							<div class="line"></div>
							<span class="author-role">����</span>
							<h4>
								<a href="#" class="author-name">�������� ����>�� ������ ��ö�� ����</a>
							</h4>
							<p>�߾Ӵ��б� �Ͼ��Ϲ��а��� ����������, ����ȸ�� �ڷ��� ���ε༭�� ���ÿ��֡� �������� ���� �̱� ���н���
								�쿬�� ��ȸ�� ���� ������ god�� ���������� �÷�Ƽ�� ��Ʈ��[1] ����ϸ鼭 ���� ���� ���������� CF����
								����°� ���־󸮽�Ʈ�ν��� ������ �����ߴ�. ��������� �ʿ����� �����ߴ�.</p>
						</div>
					</div>
					<!-- ��� �Ұ� -->
					<div class="single-blog-area blog-style-2 mb-50">
						<!-- Blog Content -->
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">��� �Ұ�</a>
							<h6>�������� ����>�� �⿬�� ����</h6>
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

					<!-- �ݵ����� -->
					<div class="blog-post-author mt-100 d-flex">
						<div class="author-info">
							<div class="line"></div>
							<span class="author-role">�ݵ� ����</span>
							<h6>�ݵ� ����</h6>
							<p>��ȭ [�����̸���]�� ����� ��Ȳ�� ��� ������ �ϼ��߰�, ��ü �û�ȸ ���� ��� ��ǰ�� ���ɼ���
								Ȯ���Ͽ����ϴ�. ���� ��ȭ�� �Բ� �������� �ڷγ� �浥�� ��Ȳ���� ���� ����� ���� ȯ�� �ӿ��� �Һ���� ���� ����
								��� ��縦 �����Ͽ� ���ο� ���� ���̽��� �����ַ� �մϴ�. �����ȭ���� ���� 1~2�������� ���Ű� ������ �ݸ�,
								��ť���͸��� ����� ����������ȭ���� ���� �� �������� �Ǿ�� ���Ű� ������ ��Ȳ�Դϴ�. ���� ��Ƽ�÷�����
								[�����̸���]�� ���� �������� ������ ��븦 �����Ͽ� �󿵰��� Ȯ���ϰ� �� ���� �������� ���忡�� �� �� �ִ�
								��ȸ�� ����� ���� �ݵ��� �����ϰ� �Ǿ����ϴ�.</p>
						</div>
					</div>
					
					<!-- �ݵ����� -->
					<div class="single-blog-area blog-style-2 mb-50">
						<div class="single-blog-content">
							<div class="line"></div>
							<a href="#" class="post-tag">������Ʈ ����</a>
							<h5><strong>������Ʈ ����</strong></h5>
							<div>
							<br>
							�û�ȸ ���ֺ�� �� �� 5,000���� 
								<br>
								�ܴ���� : 3,000���� 
								<br>
								������� : 500����
								<br> 
								��DVD���ۺ� : 1,500����
								<br>
							���� ���ּ����� ���� ���� ����� ������ �� �ֽ��ϴ�.
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
							<span class="author-role">����</span>
							<h4>
								<a href="#" class="author-name">�������� ����>�� ������ ��ö�� ����</a>
							</h4>
							<p>�߾Ӵ��б� �Ͼ��Ϲ��а��� ����������, ����ȸ�� �ڷ��� ���ε༭�� ���ÿ��֡� �������� ���� �̱� ���н���
								�쿬�� ��ȸ�� ���� ������ god�� ���������� �÷�Ƽ�� ��Ʈ��[1] ����ϸ鼭 ���� ���� ���������� CF����
								����°� ���־󸮽�Ʈ�ν��� ������ �����ߴ�. ��������� �ʿ����� �����ߴ�.</p>
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
		
		<!-- ������ �ֱ� -->
		
		
		 <div id="footer">
          	<button class="button1">�ݵ��ϱ�</button>
          	<a style="display: inline-block; margin-left: 220px;" href="#">
          		<div style="border: 1px solid #d0d0d0; border-color:#d0d0d0; text-align: center; border-radius: 4px; padding: 4px 4px;">
          			<i class="material-symbols-outlined">share</i><br>�����ϱ�
          		</div>
          	</a>
         </div>
         
         <!-- div id="footer" style="display: flex; align-items: center;">
          	<button class="button1">�ݵ��ϱ�</button>
         	<div class = "share1" style="padding: 4px 12px; text-align: center; margin-left: 400px;">
				<button style=" border:1px solid black; border-radius: 7px; background-color: #fff;" >
					<p class="material-symbols-outlined">share</p>
					<p style="margin: 0">�����ϱ�</p>
				</button>
			</div>
         </div-->



		<div class="dropdown">
			<button class="dropbtn">
				<span class="dropbtn_icon">more_horiz</span> �ݵ��� �ݾ��� �������ּ��� 
			</button>
			<div class="dropdown-content">
				<a href="#">10000��</a> 
				<a href="#">30000��</a> 
				<a href="#">50000��</a>
				<a href="#">100000��</a> 
				<a href="#">�����Ӱ� �ݵ��ϱ�</a>
			</div>
		</div>

	</div> <!-- �����̳� �� -->
	
	<!-- Ǫ�� ���� -->
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
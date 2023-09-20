<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<!-- Header (�ڿ��� ����) -->
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="���� ������">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>LAURA - ���� ������</title>

    <!-- Favicon -->
    <link rel="icon" href="${rPath}/img/core-img/favicon.ico">

    <!-- Style CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700";">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/style.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/style_2.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/classy-nav.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/animate.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/owl.carousel.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/event_slide.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/party.css">
    <link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/trade.css">	
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
   	<!-- Link Swiper's CSS -->
  	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.css" />
    <!-- ������  -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
	<script src="https://kit.fontawesome.com/4484f085b1.js" crossorigin="anonymous"></script>
	<!-- ������  end-->
	<!-- font style -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Jua&family=Nanum+Pen+Script&display=swap" rel="stylesheet">
	<!-- swiper CDN -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.css">
	<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bundle.min.js"></script>
	<!-- swiper CDN end-->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
	<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
	<script src ="${rPath}/js/ajaxDemo.js"></script>
	
<style>
@font-face {
    font-family: 'NanumSquareNeo-Variable';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}</style>
	
</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="preload-content">
            <div id="original-load"></div>
        </div>
    </div>

    <!-- Subscribe Modal 
    <div class="subscribe-newsletter-area">
        <div class="modal fade" id="subsModal" tabindex="-1" role="dialog" aria-labelledby="subsModal" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <div class="modal-body">
                        <h5 class="title">Subscribe to my newsletter</h5>
                        <form action="#" class="newsletterForm" method="post">
                            <input type="email" name="email" id="subscribesForm2" placeholder="Your e-mail here">
                            <button type="submit" class="btn original-btn">Subscribe</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>-->

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Top Header Area -->
        <div class="top-header" style = "height: 50px;">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <!-- Breaking News Area -->
                    <div class="col-12 col-sm-6">
                        <div class="breaking-news-area">
                            <div id="breakingNewsTicker" class="ticker">
                                <ul>
                                    <li><a href="#">�ȳ��ϼ���!</a></li>
                                    <li><a href="#">ũ���� �ݵ�!</a></li>
                                    <li><a href="#">�̺�Ʈ!</a></li>
                                </ul>
                            </div>
                        </div>
                    </div> 
                    <!-- ���� �ΰ� ���� -->
			        <!-- <!-- Logo Area -->
			         <!-- <div class="">
			            <div class="container h-50">
			                <div class="row h-50 align-items-center">
			                    <div class="col-12">
			                        <a href="index.html" class="original-logo"><img src="img/core-img/logo.png" alt=""></a>
			                        <a href="index.html" class="original-logo"><img src="img/core-img/LAURA.png" alt=""></a>
			                        <a href="main" class="original-logo" style="font-size: 3rem;">LAURA</a>
			                    </div>
			                </div>
			            </div>
			        </div>  -->
                    <!-- Top Login Bar -->
                    <!-- �α�����  -->
                    <c:choose>
                      <c:when test="${sessionScope.sessionID == null}">
                      	      <div class="col-12 col-sm-4">
                        <div class="top_login">
                        	<a href="loginForm" class="login" >�α���</a>
                        	<a>/</a>
                        	<a href="memForm" class="join" >ȸ������</a>
                           <!-- <a href="#" data-toggle="tooltip" data-placement="bottom" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Dribbble"><i class="fa fa-dribbble" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Behance"><i class="fa fa-behance" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="bottom" title="Linkedin"><i class="fa fa-linkedin" aria-hidden="true"></i></a>-->
                        </div>
                    </div>
                 </c:when>
             </c:choose>
                     <!-- �α��� ��  -->
                    <c:choose>
                      <c:when test="${sessionScope.sessionID != null}">
                      <div class="col-12 col-sm-4">
                        <div class="top_login">
                        	<a href="<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}" class="mypage" id="mypage" style = "font-family: 'NanumSquareNeo-Variable';border: 1px solid rgb(223, 223, 223);border-radius: 5px;padding: 5px 20px;font-weight: bold;"><img src="${rPath}/img/making_funding/my.svg" style = "width:25px;height:25px;border-radius: 50%;margin-right: 7px;">${sessionScope.sessionName}</a>
                        	
                        	<a href="logout" class="logout" style = "font-family: 'NanumSquareNeo-Variable';font-weight: bold;">�α׾ƿ�</a>
                        </div>
                    </div>
			 </c:when>
         </c:choose>
                    <!-- 0824_������_��������: �ݵ�������Ʈ��ư �߰� -->
					
					 <div class="col-12 col-sm-2">
					 <!-- 0917_������: form�±׷� �صθ� �ڿ� �Ķ���� ���޾Ƽ� a�±׷� ������ -->
						<a href="<%=application.getContextPath()%>/pageone?email=${sessionScope.sessionID}">
	    					<button aria-label="������Ʈ �����"
								class="Button_button__2FuOU Button_primary__2mZni Button_contained__2SIAT Button_md__46Ai- funding-open-button"
								type="submit">
								<span>������Ʈ �����</span>
							</button>
						</a>
					</div> 
					<!-- 0824_������_��������: �ݵ�������Ʈ��ư �߰� -->
                </div>
            </div>
        </div>
        <!-- �ڿ��� ���� �Ϸ� -->

        <!-- ���� �ΰ� ���� -->
        <!-- Logo Area -->
        <div class="logo-area text-center">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- <a href="index.html" class="original-logo"><img src="img/core-img/logo.png" alt=""></a>
                        <a href="index.html" class="original-logo"><img src="img/core-img/LAURA.png" alt=""></a> -->
                        <a href="main" class="original-logo" style="font-size: 5.0rem;">LAURA</a>
                    </div>
                </div>
            </div>
        </div> 

        <!-- Nav Area -->
        <div class="original-nav-area" id="stickyNav">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Classy Menu -->
                    <!-- <nav class="classy-navbar justify-content-between"> -->
                    <nav class="classy-navbar justify-content-end">
                        <!-- Subscribe ��ư �ּ� ó�� - �ٸ� ������ ��� ���� -->
                        <!-- Subscribe btn
                        <div class="subscribe-btn">
                            <a href="#" class="btn subscribe-btn" data-toggle="modal" data-target="#subsModal">Subscribe</a>
                        </div>
                        -->
                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu" id="originalNav">
                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <!-- Ȩ ������ �ؽ�Ʈ �� ��ũ ���� -->
                                    <li><a href="main">Home</a></li>
                                    <!-- ũ���� �ݵ� �ؽ�Ʈ �� ��ũ ���� -->
                                    <li><a href="fboardList">ũ���� �ݵ�</a>
                                        <!-- <li><a href="index.html">Home</a></li> -->
                                        <!-- <li><a href="about-us.html">About Us</a></li> -->
                                        <!-- <li><a href="single-post.html">Single Post</a></li> -->
                                        <!-- <li><a href="contact.html">Contact</a></li> -->
                                        <!-- <li><a href="coming-soon.html">Coming Soon</a></li> -->
                                         <ul class="dropdown">
                                            <li><a href="fmain_ing">���� ���� ���� �ݵ�</a></li>
                                            <li><a href="fmain_fin">����� �ݵ�</a></li>
                                        </ul>

                                    </li>
                                    <li><a href="pointstore">����Ʈ Shop</a>
                                        <!-- <ul class="dropdown">
                                            <li><a href="vote">��ǥ�ϱ�</a></li>
                                        </ul> -->
                                    </li>
                                    <li><a href="partyList">Ŀ�´�Ƽ</a>
                                        <ul class="dropdown">
                                            <li><a href="partyList">��Ƽ����</a></li>
                                            <li><a href="trboardList">����絵</a></li>
                                            <li><a href="newsList">����</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="eventMain">�̺�Ʈ</a>
                                        <!-- <ul class="dropdown">
                                            <li><a href="eventMain">���� ���� �̺�Ʈ</a></li>
                                            <li><a href="eventEnd">����� �̺�Ʈ</a></li>
                                            <li><a href="eventPaticipate">�̺�Ʈ ����</a></li>
                                        </ul> -->
                                    </li>
                                 
                                        <!-- <li><a href="index.html">Home</a></li> -->
                                        <!-- <li><a href="about-us.html">About Us</a></li> -->
                                        <!-- <li><a href="single-post.html">Single Post</a></li> -->
                                        <!-- <li><a href="contact.html">Contact</a></li> -->
                                        <!-- <li><a href="coming-soon.html">Coming Soon</a></li> -->
                                    </li>
                                </ul>
                                    <!--
                                    <li><a href="#">Catagory</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a>
                                                <ul class="dropdown">
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a>
                                                        <ul class="dropdown">
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                            <li><a href="#">Catagory 3</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                    <li><a href="#">Catagory 2</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="#">Catagory 1</a></li>
                                            <li><a href="#">Catagory 1</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about-us.html">About Us</a></li>
                                    <li><a href="#">Megamenu</a>
                                        <div class="megamenu">
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 1</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 2</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 3</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                            <ul class="single-mega cn-col-4">
                                                <li class="title">Headline 4</li>
                                                <li><a href="#">Mega Menu Item 1</a></li>
                                                <li><a href="#">Mega Menu Item 2</a></li>
                                                <li><a href="#">Mega Menu Item 3</a></li>
                                                <li><a href="#">Mega Menu Item 4</a></li>
                                                <li><a href="#">Mega Menu Item 5</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                                -->

                                <!-- Search Form  -->
                                <div id="search-wrapper">
                                    <form action="searchList" method="get">
										<input type="text" id="search"
											placeholder="Search something..." name="searchValue">
                                        <div id="close-icon"></div>
                                        <input class="d-none" type="submit" value="">
                                    </form>
                                </div>
                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->
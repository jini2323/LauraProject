<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
    <!-- ���� ũ�����ݵ� (�ڿ��� ����) -->
    <!-- ##### Hero Area Start ##### -->
     <div class="hero-area">
        <!-- Hero Slides Area -->
        <div class="hero-slides owl-carousel">
            <!-- Single Slide -->
            <!-- 0711_�����̹���_�ݵ�����Ʈ�� ����_phj -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath }/img/bg-img/movie_n.png);" onclick="location='fboardList'">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                            	<h2 data-animation="fadeInUp" data-delay="250ms">
                     			<a href="#">�� Ŭ���� �Ҽ� ����</a>
                     			<!-- <hr class="cp_line"> -->
                                </h2>
                                <div class="post-tag">
                                    <a href="#" data-animation="fadeInUp">���ִ� �ĺ� �ڸ��� ���� �� Ŭ������ ���ƴ� ķ���� ���� ���������!</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath}/img/bg-img/movie_l.png);"  onclick="location='fboardList'">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                <!-- <div class="post-tag">
                                     <a href="#" data-animation="fadeInUp">�̴��� ��õ �ݵ�!</a>
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                	<a href="single-post.html">���� �ӹ�!!<br>��ǥ�ݾ� �޼��� 2000%!</a>
                                </h2> -->
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(${rPath}/img/bg-img/movie_v.png);"  onclick="location='fboardList'">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                        <div class="col-12">
                            <div class="slide-content text-center">
                                 <div class="post-tag">
                                    <!--<a href="#" data-animation="fadeInUp">���� Ȯ��</a>-->
                                </div>
                                <h2 data-animation="fadeInUp" data-delay="250ms">
                                	<!--<a href="single-post-fund1.html">��ȭ�� �� �����˴ϴ�</a>-->
                                </h2>
                            </div> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ���� ũ�����ݵ� (�ڿ��� ���� �Ϸ�) -->
    <!-- ##### Hero Area End ##### -->
	
	<!-- A101 ����ȭ�� ������ ����(�ڿ��� ����) -->
    <!-- ##### Blog Wrapper Start ##### -->
    <div class="blog-wrapper">
        <div class="container">
            <div class="row align-items-end">
                <!-- Single Blog Area -->
                <div class="col-12 col-lg-4">
                    <div class="single-blog-area clearfix mb-100">
                        <!-- Blog Content -->
                        <div class="single-blog-content">
                            <div class="line"></div>
                            <a href="#" class="post-tag">Actor 101</a>
                            <h4>
                            	<a href="#" class="post-headline">'�������ε༭���� ��ٸ��ϴ�'</a>
                            </h4>
                            <p>������ ��� ��ΰ� ������ <br>�����̵� â�� �������� ��������,<br> ��ǰ�� ���߼��� ��� ���� <br>'��¼�� ���ǿ���'�� �⿬�� ��츦 �̾��ּ���! <br>��ǰ �������� �⿬�� ������,<br> ���� ������ ��ȭ������<br> ���� �ٷ� �������ּ���!</p>
                            <a href="#" class="btn original-btn"><span style = "position: relative;top: 10px;">��ǥ�ϱ�</span></a>
                        </div>
                    </div>
                </div>
                <!-- A101 ������ �̹���(�ڿ��� ����) -->
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${rPath }/img/blog-img/mhe.png" alt="">
                        <!-- Catagory Title -->
                        <!--<div class="catagory-title">
                            <a href="#">Lifestyle posts</a> 
                        </div> -->
                    </div>
                </div>
                <!-- Single Blog Area -->
                <div class="col-12 col-md-6 col-lg-4">
                    <div class="single-catagory-area clearfix mb-100">
                        <img src="${rPath }/img/blog-img/A101.png" alt="">
                        <!-- Catagory Title
                        <div class="catagory-title">
                            <!-- <a href="#">latest posts</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- A101 ����ȭ�� ������ ����(�ڿ��� ���� �Ϸ�) -->

		<!-- ���� ����ȭ�� ������ ����(������ ����) -->
        <div class="container">
            <div class="row">
                <div class="col-12 col-lg-9">

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.2s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <a href="newsList"><img src="${rPath }/img/articles/moive_poster.png" alt=""></a>
                                    <!-- <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div>  -->
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="newsList" class="post-tag">News</a>
                                    <h4><a href="newsList" class="post-headline">��õ! ������ȭ</a></h4>
                                    <p>������ �� ������ȭ�� �Ұ��մϴ�</p>
                                    <div class="post-meta">
                                        <p>2023/07/07</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.3s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <a href="newsList"><img src="${rPath }/img/articles/news_m4.png" alt=""></a>
                                    <!-- <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div> -->
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="newsList" class="post-tag">News</a>
                                    <h4><a href="newsList" class="post-headline">���˵���3..900�� ����!</a></h4>
                                    <p>���� ��� ��� �� ���� ���� ���� ����</p>
                                    <div class="post-meta">
                                        <p>2023/07/07</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ���� ����ȭ�� ������ ����(������ ���� �Ϸ�) -->
					
					
					<!-- ��������(�ڿ��� ����) -->
                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.4s" data-wow-duration="1000ms">
                        <div class="row">
                            <div class="col-12">
                                <div class="single-blog-thumbnail">
                                    <img src="${rPath }/img/blog-img/schedule01.png" alt="">
                                    <div class="post-date">
                                        <a href="#">10 <span>march</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <!-- Blog Content -->
                                <div class="single-blog-content mt-50">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Notice</a>
                                    <h4><a href="#" class="post-headline">��������</a></h4>
                                    <p>�ȳ��ϼ���. ��ȭ ũ���� �ݵ� ����Ʈ LAURA�Դϴ�.<br>LAURA�� ������ ���� ���ο� ��ġ�� �����ϰ� �츮 �ϻ��� ��ȭ�� �������� �����ε��� �����մϴ�.
                                    <br>�������� ������ ������ ������ ���� �������� â�� �� ��ȹ ������ ���̰�, ���� Ȯ��� ���̵�� ���� ������<br>�����ϰ��� ũ���� �ݵ��� ���Ͽ�
                                    	�پ��� ������ ������ �����ϰ� ������ �����մϴ�.<p>
                                    <div class="post-meta">
                                        <p>By <a href="#">������</a></p>
                                        <p>2023/07/07</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- ��������(�ڿ��� ���� �Ϸ�) -->

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.5s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-12">
                                <div class="single-blog-thumbnail">
                                     <img src="${rPath }/img/bg-img/project.jpg" alt="">
                                    <!-- <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div> -->
                                </div>
                            </div>
                            <!-- <div class="col-12 col-md-6">
                                Blog Content
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Lifestyle</a>
                                    <h4><a href="#" class="post-headline">Party people in the house</a></h4>
                                    <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt.</p>
                                    <div class="post-meta">
                                        <p>By <a href="#">james smith</a></p>
                                        <p>3 comments</p>
                                    </div>
                                </div>
                            </div> -->
                        </div>
                    </div>

                    <!-- Single Blog Area  -->
                    <div class="single-blog-area blog-style-2 mb-50 wow fadeInUp" data-wow-delay="0.6s" data-wow-duration="1000ms">
                        <div class="row align-items-center">
                            <div class="col-12 col-md-6">
                                <div class="single-blog-thumbnail">
                                    <img src="${rPath }/img/blog-img/6.jpg" alt="">
                                    <div class="post-date">
                                        <a href="#">12 <span>march</span></a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-md-6">
                                <!-- Blog Content -->
                                <div class="single-blog-content">
                                    <div class="line"></div>
                                    <a href="#" class="post-tag">Lifestyle</a>
                                    <h4><a href="#" class="post-headline">We love colors in 2018</a></h4>
                                    <p>Curabitur venenatis efficitur lorem sed tempor. Integer aliquet tempor cursus. Nullam vestibulum convallis risus vel condimentum. Nullam auctor lorem in libero luctus, vel volutpat quam tincidunt.</p>
                                    <div class="post-meta">
                                        <p>By <a href="#">james smith</a></p>
                                        <p>3 comments</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- ##### Sidebar Area ##### -->
                <div class="col-12 col-md-4 col-lg-3">
                    <div class="post-sidebar-area">

                        <!-- Widget Area -->
                       <!--  <div class="sidebar-widget-area">
                            <form action="#" class="search-form">
                                <input type="search" name="search" id="searchForm" placeholder="Search">
                                <input type="submit" value="submit">
                            </form>
                        </div> -->

                        <!-- Widget Area -->
                       <!--  <div class="sidebar-widget-area">
                            <h5 class="title subscribe-title">Subscribe to my newsletter</h5>
                            <div class="widget-content">
                                <form action="#" class="newsletterForm">
                                    <input type="email" name="email" id="subscribesForm" placeholder="Your e-mail here">
                                    <button type="submit" class="btn original-btn">Subscribe</button>
                                </form>
                            </div>
                        </div> -->
						
						<!-- �̺�Ʈ ���� -->
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <a href="#"><img src="${rPath }/img/bg-img/event.gif" alt=""></a>
                        </div>
                        <!-- �̺�Ʈ �� -->
						
						<!-- ���̵� ���� (�ڿ��� ����) -->
                        <!-- Widget Area -->
                        <div class="sidebar-widget-area">
                            <!-- <h5 class="title">Latest Posts</h5> -->

                            <div class="widget-content">

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_01.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://isplus.com/article/view/isp202306220154"
                                        class="post-headline">��������������ȭ���� 8�� ���� Ȯ��</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/06/23</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_02.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://enews.imbc.com/News/RetrieveNewsInfo/387357" class="post-headline">��27ȸ ��õ������Ÿ��ƽ��ȭ�� ��ǰ��</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/07/08</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_03.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://star.ohmynews.com/NWS_Web/OhmyStar/at_pg.aspx?CNTN_CD=A0002943220&CMPT_CD=P0010&utm_source=naver&utm_medium=newsearch&utm_campaign=naver_news"
                                        class="post-headline">����ȣ '����'�� ž���� �Ҹ���� ����</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/07/09</a></p>
                                        </div>
                                    </div>
                                </div>

                                <!-- Single Blog Post -->
                                <div class="single-blog-post d-flex align-items-center widget-post">
                                    <!-- Post Thumbnail -->
                                    <div class="post-thumbnail">
                                        <img src="${rPath }/img/blog-img/snews_04.png" alt="">
                                    </div>
                                    <!-- Post Content -->
                                    <div class="post-content">
                                        <a href="#" class="post-tag">News</a>
                                        <h4><a href="https://news.kmib.co.kr/article/view.asp?arcid=0018444511&code=61121111&cp=nv"
                                        class="post-headline">�λ걹�����û�ҳ⿵ȭ�� 10�� ����</a></h4>
                                        <div class="post-meta">
                                            <p><a href="#">2023/07/09</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- ���̵� ���� (�ڿ��� ���� �Ϸ�) -->

                        <!-- Widget Area -->
                         <div class="sidebar-widget-area">
                            <h5 class="title">Tags</h5>
                            <div class="widget-content">
                                <ul class="tags">
                                    <li><a href="#">��ȭ��</a></li>
                                    <li><a href="#">�ݵ�</a></li>
                                    <li><a href="#">���</a></li>
                                    <li><a href="#">News</a></li>
                                    <li><a href="#">����ȣ</a></li>
                                    <li><a href="#">��ȭ</a></li>
                                    <li><a href="#">���</a></li>
                                    <li><a href="#">����</a></li>
                                </ul>
                            </div>
                        </div> 
                    </div>
                </div>
            </div>
        </div>
    <!-- ##### Blog Wrapper End ##### -->
<%@include file="../temp/footer.jsp" %>
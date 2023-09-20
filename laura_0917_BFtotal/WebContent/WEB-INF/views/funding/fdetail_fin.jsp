<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<c:set var="rPath" value="${pageContext.request.contextPath }/resources" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fdetail_fin.css">

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
									<img class="sum-img" src="${rPath }/img/funding/poster1.jpg" alt="">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="left-content header-text wow fadeInLeft"
									data-wow-duration="1s" data-wow-delay="1s">
									<div class="row">
										<div class="col-lg-12">
											<h2 style="font-weight: bold;">���� ������ ������</h2>
											<p>�ƺ��� ���� �� ����ġ�� ����(��ҹ�)�� �Բ� �ƹ��� �𸣴� ������ �̻� �� ���� �� �ҳ� ����(������) 
											�Ƿ����� ���� ö������ ������ �������� �ڽ��� ������ �Ҿ����� �ռ���. 
											���� ù��, �������� ����(�ַο�)�̴� ��ġ�� ���� ���� ���� �ɵ��� ������ ����� ������ ����� ���ݾ� ������ ��ã�� ���µ��� 
											���츮 ���̽�ũ�� ������ ����!�� ������ �� ����� ������ ���� �� ������?</p>
											<h4 style="color: #23d0f5; margin-top: 10px; margin-bottom: 10px;">1000% �޼�
												<span style="font-family: 'Jua', sans-serif; background-color: #cff1fc; color: #23d0f5; padding: 2px 4px; font-size: 14px; margin-bottom: 6px; border-radius: 5px; font-size: 16px;">�ݵ� ����</span>
											</h4>
											
											<h4 style="margin-top: 10px;">2��5000���� �޼�
												<span style="font-family: 'Jua', sans-serif; background-color: #ececec; padding: 2px 4px; margin-left: 6px; font-size: 16px; border-radius: 5px;">107�� ����</span>
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
												<input class="button" type="submit" value="�ݵ�����"> 
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
	</div> <!-- �����̳� �� -->
</html>

<%@include file="../temp/footer.jsp"%>
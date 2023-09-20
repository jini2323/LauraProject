<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/fdetail_ing.css">


<!-- �����̳� ���� -->
<div id="contents">
	<!-- �ݵ��ϱ� -->
	<div class="main-banner wow fadeIn" id="top" data-wow-duration="1s"data-wow-delay="0.5s">
		<div class="container" id="container">
			<div class="row">
				<div class="col-lg-12">
					<input type="hidden" id="funnum" name="funnum" value="${vo.funnum }">
					<div class="row">
						<div class="col-lg-6">
							<div class="moviePoster wow fadeInRight" data-wow-duration="1s" data-wow-delay="0.5s">
								<img class="sum-img" src="${rPath }/img/fboard/${vo.postimgn }" id="imgn">
							</div>
						</div>
						<div class="col-lg-6">
							<div class="left-content header-text wow fadeInLeft" data-wow-duration="1s" data-wow-delay="1s">
								<div class="row">
									<div class="col-lg-12">
										<div class = "fundingMovie_type"><p>��ȭ �帣</p><span class="material-symbols-outlined">chevron_right</span><p>�ڹ̵�</p></div>
										<h2>${vo.funtitle }</h2>
										<p>${vo.funpreview }</p>
										<div class = "funding_all">
										<div class = "funding_status">
											<div class = "funding_status_1st">
												<div>
													<h4>13,000</h4><h5>% �޼�</h5>
												</div>
												<span>23�ϳ���</span>
											</div>
											<div class = "funding_status_2ed">
												<div>
													<h4>2,500,5000</h4><h5>�� �޼�</h5>
												</div>
												<span>107�� ����</span>
											</div>
										</div>
										<div class="funding_detailInfo">
											<!-- ��ǥ�ݾ��� ������ ȭ�鿡 �����ִ� �ɷ� !!! -->
											<div class = "funding_detailAim"><p>��ǥ�ݾ�</p><span>${vo.targetprice }�� �޼�</span></div>
											<div class = "funding_detailPeriod"><p>�ݵ��Ⱓ</p><span>${vo.sdate }~${vo.fdate }</span></div>
											<div class = "funding_detailPay"><p>������</p><span>${vo.fdate }�� ���� 3�� �� ���� ����</span></div>
											
										</div>
										</div>
									

									<!-- 0826_������ : �ݵ��������� Ȯ���� ���� vo�� �ޱ� -->
									<div>
										<input type="hidden" id="funstatus" name="funstatus" value="${pvo.funstatus }">
										<input type="hidden" id="fmem_num" name="fmem_num" value="${sessionScope.sessionNO }">
										<input type="hidden" id="funnum_num" name="funnum_num" value="${vo.funnum }">
									</div>

									<form action="addFCoin" class = "gotoFunding">
										
											<select id="fundingAmountSelect">
											    <option value="" style="display:none;">�ݵ��� �ݾ� ����</option>
											    <option value="10000">10,000��</option>
											    <option value="30000">30,000��</option>
											    <option value="50000">50,000��</option>
											    <option value="0">�����Ӱ� �ݵ��ϱ�</option>
											</select>
											<input type="number" id="funmoney" name="funmoney" min="10000" max="1000000" step="10000" placeholder="�ݵ��� �ݾ��� �Է����ּ���"> 
										
											<input type="hidden" id="fmem_num" name="fmem_num" value="${sessionScope.sessionNO }"> 
											<input type="hidden" id="funstatus" name="funstatus" value="P">
											<input type="hidden" id="funnum_num" name="funnum_num" value="${vo.funnum }"> 
											<input type="hidden" id="joindate" name="joindate">
										<div class="funding_Btnetc">
											<button class="fBtn" type="submit" id="fBtn">�ݵ��ϱ�</button>
											<div class = "likeShareBtn">
												<a class="like-btn" href="#">
													<div>
														<span class="material-symbols-outlined">favorite</span>
														<p style="margin: 0">���ƿ�</p>
													</div>
												</a> 
												<a class="share-btn" href="#">
													<div>
														<span class="material-symbols-outlined">share</span>
														<p style="margin: 0">����</p>
													</div>
												</a>
											</div>
										</div>
									</form>
								</div><!-- col-lg-12 -->
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
				<div class="single-blog-area blog-style-2">
					<div class="single-blog-content">
						<div class="line"></div>
						<span class="post-tag">��ȭ �Ұ�</span>
						<h4>${vo.funtitle }</h4>
						<span>${vo.content }</span>
					</div>
				</div>
				<!-- ������ �� -->
				<div class="blog-post-author d-flex" style = "border-bottom:none;margin:20px 0 80px;padding:20px 10px;">
					<div class="author-info" style = "width:1100px;">
						<div class="line"></div>
						<span class="author-role">������ ��</span>
						<div class="swiper mySwiper">
						    <div class="swiper-wrapper">
						      <div class="swiper-slide"><img src = "${rPath }/img/funding/barbi.png"></div>
						      <div class="swiper-slide"><img src = "${rPath }/img/funding/her.jpg"></div>
						      <div class="swiper-slide"><img src = "${rPath }/img/funding/mini.jpg"></div>
						      <div class="swiper-slide"><img src = "${rPath }/img/mainPage/mainPagePoster1.jpg"></div>
						      <div class="swiper-slide"><img src = "${rPath }/img/mainPage/mainPagePoster2.jpg"></div>
						      <div class="swiper-slide"><img src = "${rPath }/img/mainPage/mainPagePoster3.jpg"></div>
						      <div class="swiper-slide"><img src = "${rPath }/img/mainPage/mainPagePoster4.jpg"></div>
						    </div>
						    <div class="swiper-button-next"></div>
						    <div class="swiper-button-prev"></div>
						    <div class="swiper-pagination"></div>
						</div>
					</div>
				</div>
				
				<!-- ���� �Ұ� -->
				<div class="blog-post-author mt-0 d-flex">
					<div class="director_img">
						<img src="${rPath }/img/funding/director.jpg">
					</div>
					<div class="author-info">
						<div class="line"></div>
						<span class="author-role">����</span>
						<h5>��ö�� ����</h5>
						<p>�߾Ӵ��б� �Ͼ��Ϲ��а��� ����������, ����ȸ�� �ڷ��� ���ε༭�� ���ÿ��֡� �������� ���� �̱� ���н���
							�쿬�� ��ȸ�� ���� ������ god�� ���������� �÷�Ƽ�� ��Ʈ��[1] ����ϸ鼭 ���� ���� ���������� CF����
							����°� ���־󸮽�Ʈ�ν��� ������ �����ߴ�. ��������� �ʿ����� �����ߴ�.</p>
					</div>
				</div>
				<!-- ��� �Ұ� -->
				<div class="single-blog-area blog-style-2 mb-50">
					<div class="single-blog-content">
						<div class="line"></div>
						<span class="post-tag">��� �Ұ�</span>
						<div class="actor-profile">
							<img class="actor-photo" src="${rPath }/img/funding_detail/actor1.jpg"> 
							<img class="actor-photo" src="${rPath }/img/funding_detail/actor2.jpg"> 
							<img class="actor-photo" src="${rPath }/img/funding_detail/actor3.jpg"> 
							<img class="actor-photo" src="${rPath }/img/funding_detail/actor4.jpg">
						</div>
					</div>
				</div>

				<!-- �ݵ����� -->
				<div class="blog-post-author mt-100 d-flex">
					<div class="author-info">
						<div class="line"></div>
						<span class="author-role">�ݵ� ����</span>
						
						<p>${vo.funpurpose }</p>
					</div>
				</div>

				<!-- �ݵ������ -->
				<div class="single-blog-area blog-style-2 mb-50">
					<div class="single-blog-content">
						<div class="line"></div>
						<a href="#" class="post-tag">������Ʈ ����</a>
						<div>
							<br>${vo.funbudget }
						</div>
					</div>
				</div>
				<!--  -->
				<div class="blog-post-author mt-100 d-flex">
					<div class="author-info">
						<div class="line"></div>
						<span class="author-role">����</span>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- ������ �ֱ� -->


	<!-- <div id="footer">
		<button class="button1">�ݵ��ϱ�</button>
		<a style="display: inline-block; margin-left: 220px;" href="#">
			<div
				style="border: 1px solid #d0d0d0; border-color: #d0d0d0; text-align: center; border-radius: 4px; padding: 4px 4px;">
				<i class="material-symbols-outlined">share</i><br>�����ϱ�
			</div>
		</a>
	</div> -->

	<!-- div id="footer" style="display: flex; align-items: center;">
          	<button class="button1">�ݵ��ϱ�</button>
         	<div class = "share1" style="padding: 4px 12px; text-align: center; margin-left: 400px;">
				<button style=" border:1px solid black; border-radius: 7px; background-color: #fff;" >
					<p class="material-symbols-outlined">share</p>
					<p style="margin: 0">�����ϱ�</p>
				</button>
			</div>
         </div-->


<%-- 
	<div class="dropdown">
		<button class="dropbtn">
			<span class="dropbtn_icon">more_horiz</span> �ݵ��� �ݾ��� �������ּ���
		</button>
		<div class="dropdown-content">
			<a href="#">${vo.cost }��</a> <a href="#">30000��</a> <a href="#">50000��</a>
			<a href="#">100000��</a> <a href="#">�����Ӱ� �ݵ��ϱ�</a>
		</div>
	</div> --%>

</div>
<!-- �����̳� �� -->


<script>
	$(function() {
		$('#fBtn').click(function(e) {
			alert($('#funmoney').val() + "�� �ݵ�Ȯ��");
			//e.preventDefault();
		});
	});
	
	
	// <select> ��ҿ� �̺�Ʈ ������ �߰�
	document.getElementById('fundingAmountSelect').addEventListener('change', function() {
	    var inputElement = document.getElementById('funmoney');
	    var selectedOption = this.options[this.selectedIndex];
	    
	    if (selectedOption.value === '0') {
	        inputElement.style.display = 'block'; // "�����Ӱ� �ݵ��ϱ�"�� ���õǸ� <input> ��Ҹ� ǥ��
	    } else {
	        inputElement.style.display = 'none'; // �ٸ� �ɼ��� ���õǸ� <input> ��Ҹ� ����
	    }
	});
	
	
	
	document.getElementById('fundingAmountSelect').addEventListener('focus', function(e) {
		this.style.borderColor='#00c4c4';
		this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
	});

	document.getElementById('fundingAmountSelect').addEventListener('blur', function(e) {
		this.style.borderColor='';
		this.style.boxShadow ='';
	});
	
	
	document.getElementById('funmoney').addEventListener('focus', function(e) {
		this.style.borderColor='#00c4c4';
		this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
	});

	document.getElementById('funmoney').addEventListener('blur', function(e) {
		this.style.borderColor='';
		this.style.boxShadow ='';
	});
	
	
	
	var swiper = new Swiper(".mySwiper", {
	      slidesPerView: 1,
	      spaceBetween: 30,
	      keyboard: {
	        enabled: true,
	      },
	      pagination: {
	        el: ".swiper-pagination",
	        clickable: true,
	      },
	      navigation: {
	        nextEl: ".swiper-button-next",
	        prevEl: ".swiper-button-prev",
	      },
	    });
	
</script>
 <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>
</html>
<%@include file="../temp/footer.jsp"%>
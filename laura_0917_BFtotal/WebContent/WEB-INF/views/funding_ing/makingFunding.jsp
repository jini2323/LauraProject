<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/makingFunding.css">

<div class = "RegistrationProject_container">
	<section class = "KeyVisual_container">
		<div class = "KeyVisual_inner">
			<b class = "KeyVisual_inner_text1">
				<span style = "">���� ����Ŀ</span>
				<span class= "KeyVisual_inner_change_name">ä����</span>
				<span style = "font-weight: 500;">�Դϴ�</span>
			</b>
			<div class = "KeyVisual_textBox">
				<img src = "${rPath }/img/making_funding/upper.svg" class = "img_uppper1">
				<p class= "KeyVisual_makerIntroduce" style = "">
					����� �ǵ���� ������ ģ���� �귣�� �̹����� ������
				</p>
				<img src = "${rPath }/img/making_funding/upper.svg" class = "img_uppper2">
			</div>
			<!-- �����̵� �� -->
			<div class="swiper mySwiper">
			    <div class="swiper-wrapper">
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/barbi.png">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/help_png.jpg">
			      </div>
			      <div class="swiper-slide">
			       	<img src = "${rPath }/img/funding/TOMBOY.jpg">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/jpn.jpg">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/poster9.jpg">
			      </div>
			      <div class="swiper-slide">
			        <img src = "${rPath }/img/funding/2012.jpg">
			      </div>
			    </div>
			   <div class="swiper-pagination"></div>
			 </div>
			 <!-- �����̵� �� �� -->
			<p class = "KeyVisual_inner_info">
				���󿡼�
				<span class = "KeyVisual_inner_info_text">
					<span class="count-num" data-count="530">0</span>
					<span>��°</span>
				</span>
				 <span>����Ŀ�� �Ǿ����</span>
			</p>
			<%-- 0905_������: �α��� ��/�� �̵� �ٸ��� --%>
			<input type="hidden" name="email" id="email" value="${mvo.email }" >
			<!-- �α��� �� -->
			<c:choose>
				<c:when test="${sessionScope.sessionID == null}">
					<a href="loginForm">
						<button class="gotoMakingFunding_Btn" type="button">
							<span class="Btn_text"> <span>������Ʈ �����</span>
							</span>
						</button>
					</a>
				</c:when>
			</c:choose>
			<!-- �α��� �� -->
			<c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<c:choose>
						<c:when test="${mvo.arstatus=='������' }">
							<button class="gotoMakingFunding_Btn" id="openModalBtn"
							type="button">
							<span class="Btn_text"> <span>������Ʈ �����</span>
							</span>
						</button>
						</c:when>
					</c:choose>
					
					<c:choose>
						<c:when test="${mvo.arstatus=='����' }">
							<a href="pagetwo">
								<button class="gotoMakingFunding_Btn" type="button">
									<span class="Btn_text"> <span>������Ʈ �����</span>
									</span>
								</button>
							</a>
						</c:when>
					</c:choose>	
				</c:when>
			</c:choose>
			<%-- <c:choose>
				<c:when test="${sessionScope.sessionID != null}">
					<button class="gotoMakingFunding_Btn" id="openModalBtn"
						type="button">
						<span class="Btn_text"> <span>������Ʈ �����</span>
						</span>
					</button>
				</c:when>
			</c:choose> --%>
			
		</div>
		<!-- KeyVisual_inner -->
	</section>
	<!-- KeyVisual_container -->
	
	<!-- ��� â -->
	<div id="myModal" class="modal">
	    <div class="modal-content" style="height:660px; overflow: auto">
	        <span class="close">&times;</span>
	        <h2>������Ʈ ����Ŀ �����ϱ�</h2>
	        <p>������Ʈ�� �����Ͻ÷��� ����Ŀ ���� ������ ���ľ� �մϴ�.</p>
	        <form action="updateart" method="post" enctype="multipart/form-data" id = "artistForm" name = "artistForm"><!-- artistform �� �κ� [�ݵ�] ��Ʈ�ѷ��� ���� -->
	        	<input type="hidden" name="num" id="num" value="${sessionScope.sessionNO }">
				<input type="hidden" id="arstatus" name="arstatus">
	        	<!-- img üũ -->
		          <div class="uploadImg">
		          	<span>���� ������ ����</span>
		          	<span>*</span>
		             <div class="directorImgUpload">
		                 <img src="${rPath}/img/making_funding/profile_img.jpg" id="imgx">
		             </div>
		             <div class="group-img">
		             	<div class="filebox">
						  <input type="hidden" name="arprofilepic"  id="arprofilepic">
						  <label for="arprfile">���ε�</label> 
						  <input type="file" id="arprfile" name="arprfile" class="upload-hidden">
						</div>
		             </div>
		          </div><!-- uploadImg -->
		          <div class = "director_produce">
		          	<span>���� �Ұ���</span>
		          	<span>*</span>
		          	<div class = "director_textarea">
		          		<textarea name="arprofile"></textarea>
		          	</div>
		          </div>
		          <div class = "director_address">
		          	<span>�ּ�</span>
		          	<span>*</span>
		          	<div>
		          		<input type = "text" id = "director_addr" name="addr">
		          	</div>
		         </div>
		         <div class = "director_account">
			        <span>���� ���¹�ȣ</span>
			        <span>*</span>
			        	<div class = "bankSelect-menu">
							<select id="bankSelectBox">
								<option value="option1">��������</option>
								<option value="option2">�ϳ�����</option>
								<option value="option3">��������</option>
								<option value="option4">�������</option>
								<option value="option5">��������</option>
								<option value="option6">��Ƽ����</option>
								<option value="option7">īī����ũ</option>
								<option value="option8">�佺��ũ</option>
							</select>
						</div>
			          	<div>
			          		<input type = "text" id = "director_account" name="bankaccount" placeholder="���¹�ȣ�� - ���� �Է����ּ���">
			          	</div>
		         	</div>
		         <div class = "artist_certificationImg">
		         	<span>������ ������ ÷�μ���</span>
		         	<span>*</span>
		         	<div class = "artist_document">
		         		<button class = "document-certif">
		         			<span class="material-symbols-outlined">add_circle</span>
		         		</button>
		         		������ ÷�����ּ���
		         	</div>
		         </div>
		         <div class = "formBtn">
		         	<!-- <a href = "pagetwo"> -->
		         		<button type = "submit"> <!-- submit���� �����ؾ���!!!!!!!! -->
		         			<span>����</span>
		         		</button>
		         	<!-- </a> -->
		         	<button type = "button" id = "button_close"><span>�ݱ�</span></button>
		         </div>
	        </form><!-- artistForm -->
	    </div><!-- modal-content -->
	</div><!-- modal -->

	<div>
		<div class= "ServiceInfo_inner">
			<h3 class="ServiceInfo_inner_text">���󿡼� ���۰� ������ �Բ� �ϼ���</h3>
			<p class= "ServiceInfo_description">
				�̹� ���� ����Ŀ�� ���� �����߾��
			</p>
			<ul class="ServiceInfo_list">
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/gift.svg">
						<dt class = "listItem_title">�ݵ�</dt>
						<dd>�����ϸ� ��ǰ �߼� ��<br>����ſ�</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/cart.svg">
						<dt class = "listItem_title" style = "">��������</dt>
						<dd>������ ������ŭ�� ������<br>��� �δ��� �����</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/store.svg">
						<dt class = "listItem_title">�����</dt>
						<dd>��� �Ǹŷ� ������ ������<br>�ø� �� �־��</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/traders.svg">
						<dt class = "listItem_title">Ʈ���̴���</dt>
						<dd>����ä���� Ȯ����<br>�������� ������ ���Ϳ�</dd>
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<img src = "${rPath }/img/making_funding/my.svg">
						<dt class = "listItem_title">����Ŀ������</dt>
						<dd>���� ����� ���ҽ�����<br>������ �����ؿ�</dd>
					</dl>
				</li>
			</ul><!-- ServiceInfo_list -->
		</div><!-- ServiceInfo_inner -->
	</div><!-- class�� ���� div -->
	<div class = "ServiceProvide_container">
		<div class= "ServiceProvide_inner">
			<h3 class = "ServiceProvide_title">���� ���͵帱�Կ�</h3>
			<p class = "ServiceProvide_description">
				���󿡼��� ������ ���ۺ��� ������� ������Ʈ ������ ���� ����Ŀ ���񽺸� �����ϰ� �־��
			</p>
			<ul class="ServiceInfo_list" >
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. ���� ���� ��� �;��</dt>
						<dd style = "font-weight: bold;">���� ����</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">�͵��� �������� �����ϴ� �¿������� ���Ǹ� ���� ���� �� �־��</dd>
						<img src = "${rPath }/img/making_funding/wadiz1.jpg">
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. �������� ���� ����ް� �;��</dt>
						<dd style = "font-weight: bold;">���丮 ���� ����</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">���丮 ���ۺ��� ��ǰ �Կ�����, ������ ���������� �ðܺ�����</dd>
						<img src = "${rPath }/img/making_funding/wadiz2.jpg">
					</dl>
				</li>
				<li class = "ServiceInfo_listItem">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. ���������� ȫ���ϰ� �;��</dt>
						<dd style = "font-weight: bold;">���� ����</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">�پ��� ��ü�� ���� ���ܺ� Ÿ�� ����� �� ���� �˸� �� �־��</dd>
						<img src = "${rPath }/img/making_funding/wadiz3.jpg">
					</dl>
				</li>
				<li class = "ServiceInfo_listItem"
					style = "">
					<div class = "ServiceInfo_inner_img"></div>
					<dl>
						<dt class = "listItem_title">Q. ��ǰ�� ������ ������ �ʿ��ؿ�</dt>
						<dd style = "font-weight: bold;">���� ����</dd>
						<dd style = "text-align: left;padding: 0 25px;font-size: 14px;">������ �������� ���� ���󿡼� �� ���� �ҵ鿡�� ���� �Ұ��غ�����</dd>
						<img src = "${rPath }/img/making_funding/wadiz4.jpg">
					</dl>
				</li>
			</ul>
		</div>
	</div>
</div>



 <!-- Swiper JS -->
  <script src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-bundle.min.js"></script>

  <!-- Initialize Swiper -->
  <script>
    var swiper = new Swiper(".mySwiper", {
      effect: "coverflow",
      grabCursor: true,
      centeredSlides: true,
      slidesPerView: 3,
      loop: true, 
      slidesPerView: "auto",
      coverflowEffect: {
        rotate: 50,
        stretch: 0,
        depth: 100,
        modifier: 1,
        slideShadows: true,
      },
      pagination: {
        el: ".swiper-pagination",
      },
      autoplay: {
        delay: 2000, 
        disableOnInteraction: false,
      },
    });
    
  //ȸ���� ī����
	$('.count-num').each(function() { 
		  var $this = $(this),
		      countTo = $this.attr('data-count');
		       
		  $({ countNum: $this.text()}).animate({
		    countNum: countTo 
		  },
		  {
		    duration: 3000, 
		    easing:'linear',
		    step: function() {
		      $this.text(Math.floor(this.countNum));
		    },
		    complete: function() { 
		      $this.text(this.countNum);
		    }
		  }); 
		});
    
    
 // ������Ʈ ����� ��ư�� ��� ������Ʈ ��������
	const openModalBtn = document.getElementById('openModalBtn');
	const modal = document.getElementById('myModal');

	// ����� ���� ���� �̺�Ʈ �ڵ鷯 �߰�
	openModalBtn.addEventListener('click', function() {
		modal.style.display = 'block';
		// ����� ���� �� body�� ��ũ���� ����
		document.body.style.overflow = 'hidden';
	});

	// ����� x��ư �̺�Ʈ �ڵ鷯 �߰�
	const closeBtn = modal.querySelector('.close');
	closeBtn.addEventListener('click', function() {
		modal.style.display = 'none';
		// ����� ���� �� body�� ��ũ���� ������� ����
		document.body.style.overflow = 'auto';
	});
	
	// ����� �ݱ� ��ư �̺�Ʈ �ڵ鷯 �߰�
	const close = document.getElementById('button_close');
	close.addEventListener('click', function() {
		modal.style.display = 'none';
		// ����� ���� �� body�� ��ũ���� ������� ����
		document.body.style.overflow = 'auto';
	});

	// ��� �ܺ� Ŭ�� �� ��� �ݱ�
	window.addEventListener('click', function(event) {
		if (event.target === modal) {
			modal.style.display = 'none';
			// ����� ���� �� body�� ��ũ���� ������� ����
			document.body.style.overflow = 'auto';
		}
	});
    
  //-----------------------------imgfile check--------------------------------------------	
	// �̹��� �̸����� �Լ� => javascript I/O ����� Ȱ��
	function readURL(input){
	   // 	input type="file" �� �ּҸ� �����´�.
	   if(input.files && input.files[0]){
		// �ڹٽ�ũ��Ʈ I/O 
		   var reader = new FileReader();
		// ������ 
		reader.onload = function(e){
			//console.log("�̺�Ʈ �߻�:"+e.target.result);
			// <img src>������ , attr("�Ӽ���","��") -><img src="">
			$('#imgx').attr('src', e.target.result); // �̹����� ���̳ʸ��� ���� 
		}
		reader.readAsDataURL(input.files[0]);
	   }
	}
	
	//jQuery ���� - ����� 
	$(function () {
		 //jQuery ������
		// ������ڿ��� ��ȭ�� �����ϴ� �̺�Ʈ : change()
		//#prfile : ���Ͼ��ε� �Ӽ��� ������
		//$('������')
		$('#arprfile').change(function() {
			// input type�� value �Ӽ��� �� => C:\fakepath\c11.jpg
			//console.log($(this).val());
			if($(this).val().length > 0){
				readURL(this);
			}else{
				console.log("�̹��� ����");
			}
		})
	})
    
	
  </script>



<%@include file="../temp/footer.jsp"%>
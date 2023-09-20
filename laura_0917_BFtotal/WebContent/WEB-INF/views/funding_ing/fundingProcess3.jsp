<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess3.css">

	<div class = "AppLayout_Container">
		<div class = "fundingProcess_container">
			<div class = "border-line">
				<div class = "fundingSideBar">
					<div class ="fundingSideBar_userInfo">
						<div class = "fundingSideBar_userInfo_flagGroup">
							<span class = "fundingSideBar_userInfo_flag">������Ʈ</span>
							<span class = "fundingSideBar_userInfo_flag">�ۼ� ��</span>
						</div>
						<div class = "fundingSideBar_userName">
							<span>${sessionScope.sessionName}����</span>
							<br>
							<span>���� ������Ʈ</span>
						</div>
					</div><!-- fundingSideBar_userInfo -->
				</div><!-- fundingSideBar -->
				<nav class = "AppSidebarMenuList_container">
					<div class = "sideMenu_title">������Ʈ ����</div>
						<ul class="sideMenu_list">
							<a href = "pagefour"><li>������Ʈ ����</li></a>
							<a href = "pagefive"><li>�⺻ ����</li></a>
							<a href = "pagesix"><li>���丮 �ۼ�</li></a>
							<!-- <li>������ ����</li>
							<li>��å</li>
							<li>����Ŀ ����</li>
							<li>��ǥ�� �� ���� ����</li> -->
						</ul>
						<div class = "sideMenu_service">������Ʈ 1:1����</div>
						<div class = "sideMenu_service">������ ����</div>
				</nav>
			</div><!-- border-line -->
		<div class = "appLayoutContents">
			<div class = "appLayout_container">
				<div class = "FundingLayout_contents">
					<div class = "FundingCatagory">
						<span>������Ʈ ����</span><span class="material-symbols-outlined">chevron_right</span><span>������Ʈ ����</span>
					</div>
					<div class = "fundingIntroContainer">
						<strong class = "fundingIntroContainer_title">������Ʈ ����</strong>
					</div><!-- fundingIntroContainer -->
						<form action="finsert" method="post" enctype="multipart/form-data" id="upform" class = "ProjectTypeFormContainer_form">
							<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
								<div class = "section_catagory">
									<div class = "Section_header">
										<h6>ī�װ�</h6>
									</div>
									<div class = "Section_content">
										<div class = "select-menu">
							      			<select id="selectBox" name="funcategory" required="required">
										        <option value="�׼�">�׼�</option>
										        <option value="�������(SF)">�������(SF)</option>
										        <option value="������">������</option>
										        <option value="�θǽ�/���">�θǽ�/���</option>
										        <option value="�ڹ̵�">�ڹ̵�</option>
										        <option value="�ִϸ��̼�">�ִϸ��̼�</option>
										         <option value="��Ÿ">��Ÿ</option>
										    </select>
										</div>
									</div>
								</div>
								<!-- ������Ʈ ���� -->
								<div class = "section_title">
									<div class= "Section_header">
										<h6>������Ʈ ����</h6>
									</div>
									<div class = "Section_title_cls">
										<input type="text" class="" id="funtitle" placeholder="���� �Է��� �Է����ּ���" name="funtitle" maxlength="100" required="required" pattern=".{2,50}">
									</div>
								</div>
								<!-- ������Ʈ ������ -->
								<div class = "Section_preview" id="Section_preview">
									<div class= "Section_header">
										<h6>������Ʈ ������</h6>&nbsp;&nbsp;<span class="material-symbols-outlined" id="helpIcon">help</span>
									</div>
									<div id="a">������ �ϴܿ� �����ϰ� �� �����並 50�� ���� �ۼ��Ͻø� �˴ϴ�.</div>
									<input type="text" name="funpreview" id="funpreview" placeholder="�����並 �Է����ּ���" pattern=".{2,50}" required="required">
								</div>
								<!-- ������Ʈ ������ -->
								<div class = "Section_poster">
									<input type="hidden" name="postimgn" id="postimgn">
									<div class= "Section_header">
										<h6>������Ʈ ���� ������</h6>
									</div>
									<div class="directorImgUpload">
		                 				<img src="${rPath}/img/making_funding/noImg.jpg" id="imgx">
		            				 </div>
						             <div class="group-img">
						             	<div class="filebox">
										  <label for="ex_filename" id = "uploadImg">���ε�</label> 
										  <input type="file" id="ex_filename" class="upload-hidden"> 
										</div>
						             </div>
								</div>
							</form>
					<div class = "FundingDropdownMenu">
					
					</div>
					

				
					<div class = "fundingIntroContainer_Btn">
						<a href = "pagethree">
							<button type = "button"><span>�����ϱ�</span></button>
						</a>
					</div>
				</div><!-- FundingLayout_contents -->
				
				
				
				<div class = "FundingLayout_guideWrapper">
					<div class = "FundingBanner_Notice">
						<div class = "BannerText">
							<p style = "margin-bottom:0px;">������Ʈ �����ϱ� �����ϴٸ� </p>
							<span>�������� Ȯ���ϱ�</span>	
						</div>
						<img src = "${rPath }/img/making_funding/post-it.png">			
					</div>
					<div class = "FundingBanner_Notice2">
						<div class = "BannerText">
							<p style = "margin-bottom:0px;">������Ʈ �����ϱ� �����ϴٸ� </p>
							<span>�������� Ȯ���ϱ�</span>	
						</div>
						<img src = "${rPath }/img/making_funding/post-it.png">			
					</div>
					<div class = "FundingBanner_Notice3">
						<div class = "BannerText">
							<p style = "margin-bottom:0px;">������Ʈ �����ϱ� �����ϴٸ� </p>
							<span>�������� Ȯ���ϱ�</span>	
						</div>
						<img src = "${rPath }/img/making_funding/post-it.png">			
					</div>
				</div><!-- FundingLayout_guideWrapper -->
			</div><!-- appLayout_container -->
		</div><!-- appLayoutContents -->
	</div><!-- fundingProcess_container -->
</div><!-- AppLayout_Container -->


<script>

const titleList = document.querySelector('.sideMenu_list');

function handleHover(event) {
    if (event.target.tagName === 'LI') {
        event.target.style.backgroundColor = '#fff';
        event.target.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.2)';
        event.target.style.color = '#00b2b2';
        event.target.style.fontWeight='bold';
    }
}

function handleMouseOut(event) {
    if (event.target.tagName === 'LI') {
        event.target.style.backgroundColor = '';
        event.target.style.boxShadow = '';
        event.target.style.color = 'black';
        event.target.style.fontWeight='';
    }
}

titleList.addEventListener('mouseover', handleHover);
titleList.addEventListener('mouseout', handleMouseOut);



//JavaScript�� ����Ͽ� Ŭ�� �̺�Ʈ�� ó���մϴ�.
document.getElementById('helpIcon').addEventListener('click', function() {
    var helpBox = document.getElementById('a');
    helpBox.style.display = (helpBox.style.display === 'block') ? 'none' : 'block';
});

//input Ŭ�� �̺�Ʈ
document.getElementById('selectBox').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
	this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
});

document.getElementById('selectBox').addEventListener('blur', function(e) {
	this.style.borderColor='';
	this.style.boxShadow ='';
});

document.getElementById('funtitle').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
	this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
});

document.getElementById('funtitle').addEventListener('blur', function(e) {
	this.style.borderColor='';
	this.style.boxShadow ='';
});

document.getElementById('funpreview').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
	this.style.boxShadow = '0 0 10px rgba(0, 0, 0, 0.3)';
});

document.getElementById('funpreview').addEventListener('blur', function(e) {
	this.style.borderColor='';
	this.style.boxShadow ='';
});

document.getElementById('uploadImg').addEventListener('click', function(e) {
	this.style.backgroundColor='#00c4c4';
	this.style.color='#fff';
});

document.getElementById('uploadImg').addEventListener('blur', function(e) {
	this.style.backgroundColor='';
	this.style.color='';
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
	$('#ex_filename').change(function() {
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
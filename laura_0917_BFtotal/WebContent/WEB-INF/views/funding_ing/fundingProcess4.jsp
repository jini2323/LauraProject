<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess4.css">

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
						<span>������Ʈ ����</span><span class="material-symbols-outlined">chevron_right</span><span>�⺻ ����</span>
					</div>
					<div class = "fundingIntroContainer">
						<strong class = "fundingIntroContainer_title">�⺻ ����</strong>
					</div><!-- fundingIntroContainer -->
						<form action="finsert" method="post" enctype="multipart/form-data" id="upform" class = "ProjectTypeFormContainer_form">
							<input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
								<div class = "Scection_funStartDate">
									<div class = "funding_startdate_title">
										<h6>�ݵ� ������</h6>
									</div>
									<div class = "Section_funStartContent">
										<input type="date"class="" id="sdate" name="sdate" required="required">
									</div>
								</div>
								<!-- �ݵ� ������ -->
								<div class = "Scection_funFinDate">
									<div class = "funding_findate_title">
										<h6>�ݵ� ������</h6>
									</div>
									<div class = "Section_funFinContent">
										<input type="date" class="" id="fdate" name="fdate" required="required">
									</div>
								</div>
								<!-- �ݵ� ��ǥ�ݾ� ���� -->
								<div class = "Scection_fundingAim">
									<div class = "funding_findingAim_title">
										<h6>�ݵ� ��ǥ�ݾ� ����</h6>
									</div>
									<div class = "Section_fundingAim_cls">
										<input type="number" step="10000" class="" id="targetprice" placeholder="�ݵ� ��ǥ �ݾ��� �����ϼ���" name="targetprice" pattern=".{2,30}" required="required">
									</div>
								</div>
								
								<!-- �ݵ� �ݾ� ���� -->
								<div class = "Scection_funMoneySelect">
									<div class = "funding_funMoneySelect_title">
										<h6>�ݵ� �ݾ� ����</h6>
										<ul>
											<li>�ݵ� �ݾ� ������ �ʼ� �Է�ĭ�� �ƴմϴ�.</li>
											<li>�ݵ� �ݾ� ������ �⺻���� '�����Ӱ� �ݵ��ϱ�'�� �����Ͱ� �ݾ��� �����Ӱ� ���� �� �ֽ��ϴ�.</li>
											<li>�ݵ��ݾ� ������ �ʿ��ϴٸ� �߰���ư�� ���� �ִ� 3���� �ݾױ��� ���� �����մϴ�.</li>
										</ul>
									</div>
									<div class="Scection_funMoneySelect_cls">
    									<input type="number" step="10000" class="" id="cost1" placeholder="�ݵ� �ݾ� ������ �������ּ���" name="cost" pattern=".{2,30}">
									    <img src="${rPath}/img/making_funding/add.png" onclick="toggleHiddenInputs('cost1')">
									
									    <input type="number" step="10000" class="hidden" id="cost2" placeholder="�ݵ� �ݾ� ������ �������ּ���" name="cost" pattern=".{2,30}" style="display: none;">
									    <input type="number" step="10000" class="hidden" id="cost3" placeholder="�ݵ� �ݾ� ������ �������ּ���" name="cost" pattern=".{2,30}" style="display: none;">
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
});

document.getElementById('selectBox').addEventListener('blur', function(e) {
	this.style.borderColor='';
});

document.getElementById('funtitle').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
});

document.getElementById('funtitle').addEventListener('blur', function(e) {
	this.style.borderColor='';
});

document.getElementById('funpreview').addEventListener('focus', function(e) {
	this.style.borderColor='#00c4c4';
});

document.getElementById('funpreview').addEventListener('blur', function(e) {
	this.style.borderColor='';
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

function toggleHiddenInputs(inputId) {
    var inputElement = document.getElementById(inputId);
    var siblingInputs = inputElement.parentNode.querySelectorAll('.hidden');
    
    for (var i = 0; i < siblingInputs.length; i++) {
        var siblingInput = siblingInputs[i];
        siblingInput.style.display = (siblingInput.style.display === 'none') ? 'block' : 'none';
    }
}


</script>











































































<%@include file="../temp/footer.jsp"%>
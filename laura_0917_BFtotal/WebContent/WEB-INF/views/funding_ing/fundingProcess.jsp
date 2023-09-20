<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess.css">


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
				<ul>
					<!-- <li>����� ����</li> -->
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
		<div class ="AppSidebarContainer_layer" style = "position: absolute;top: 50px;background-color: hsla(0,0%,100%,.6);width: 20%;height: 155%;"></div>
	</div>
	<div class = "appLayoutContents">
		<div class = "appLayout_container">
			<div class = "fundingIntroContainer">
				<strong class = "fundingIntroContainer_title">${sessionScope.sessionName}��, �ݰ�����&nbsp;<i class="fa-regular fa-face-smile-wink"></i></strong>
				<p class = "fundingIntroContainer_description">������Ʈ�� ������ �� �ֵ��� ���� �Բ��ҰԿ�.</p>
				<section class = "section_container">
					<!-- <h2 class = "section_title">ī�װ�</h2>
					<div class = "section_description">
						������Ʈ�� ���� �� ��︮�� ī�װ��� ������ �ּ���. <br>
						������Ʈ�� ����� �ٲ� �� �־��
					</div> -->
					<!-- <div class = "section_dropdownBar">
						<div class = "dropdownMenu">
							
						</div>
					</div>section_dropdownBar -->
				</section><!-- section_container -->
			</div><!-- fundingIntroContainer -->
			<section class = "Information_container">
				<h3 class = "Infotmation_title">������Ʈ ���� �� ������ �ּ���</h3>
				<ul class = "Infotmation_infoList">
					<li class = "Infomation_infoListItem">
						<div class = "subTitle">
							1) ������Ʈ ���� ����
						</div>
						<div class = "Infomation_processBox">
							<div class = "Infomation_stepBox" aria-hidden="true">
								<img src = "${rPath }/img/making_funding/running.png">�ɻ� �Ϸ���� ��� 7�� �ҿ�
							</div>
							<ol class = "Infomation_processList">
								<li class = "Infomation_listItem">
									<span class = "Information_text">�ۼ�</span>
									<ul class = "Infomation_detailInfoList">
										<li>[������Ʈ ����] �޴��� ��� �ۼ��ϸ� ������ �� �־��.</li>
										<li>������ ���� �̹����� ���丮�� ���ԵǾ�� �ؿ� (ĳ���͡����� ������� <br>������ �̹����� ��ü ����)</li>
									</ul>
								</li>
								<li class = "Infomation_listItem">
									<span class = "Information_text">�ɻ�</span>
									<ul class = "Infomation_detailInfoList">
										<li>��ǰ�� ������ �� �ִ���, ���丮�� �ۼ��� ������ �������� Ȯ���ؿ�.</li>
										<li>�ɻ� �� ���� ��û �ǵ���� ���� �� �ְ�, ���� ���� �� �ɻ� �Ϸ���� ��� <br>7�� �ɷ���.</li>
									</ul>
								</li>
								<li class = "Infomation_listItem">
									<span class = "Information_text">����</span>
									<ul class = "Infomation_detailInfoList">
										<li>���� ���� �� ����Ŀ�� ���� ������ ������ �� �־��.</li>
										<li>���ϴ� ������ ���� �ٷ� �����ϰų� ������ �����ؿ�.</li>
									</ul>
								</li>
							</ol><!-- Infomation_processList -->
						</div><!-- Infomation_processBox -->
					</li><!-- Infomation_infoListItem -->
					<li class = "Infomation_infoListItem">
						<div class = "Infomation_subTitleBox">
							2) ������Ʈ ����
						</div>
						<p class = "Information_description">������Ʈ ������ ���� ȯ�Ұ� ���� ��å�� �ٸ��� ������ �ּ���.</p>
						<div class = "Infomation_categoryBox">
							<dl class = "Infomation_category">
								<dt class = "Infomation_term">
									�ݵ�
								</dt>
								<dd class = "Infomation_termDescription1">
									���ο� ��ǰ �� ���� �� �������� �Ұ��ؿ�.
									<br>
									������ ��� �� �Ŀ� Ȱ���� ���� �ڱ��� ���� ���� �־��.
								</dd>
							</dl>
							<em>VS</em>
							<dl class = "Infomation_category">
								<dt class = "Infomation_term">
									��������
								</dt>
								<dd class = "Infomation_termDescription2">
									����� ��ǰ�̴��� 
									<br class = "info">
									<span class = "sub_term">�����ܵ�, Ư�� ����, ������</span>
									�̶��
									<br>
									�͵���� �Ұ��� �� ���� �����͸� ������.
								</dd>
							</dl>
						</div>
					</li>
				</ul><!-- Infotmation_infoList -->
			</section><!-- Information_container -->
				<div class = "fundingIntroContainer_Btn">
					<a href = "pagethree"><button type = "button"><span>�����ϱ�</span></button></a>
				</div>
		</div><!-- appLayout_container -->
	</div><!-- appLayoutContents -->
</div><!-- fundingProcess_container -->




<script>




</script>





































































<%@include file="../temp/footer.jsp"%>
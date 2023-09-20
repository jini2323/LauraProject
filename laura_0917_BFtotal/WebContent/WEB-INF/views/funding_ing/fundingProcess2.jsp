<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/makingFunHead.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/fundingProcess2.css">



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
			</div>
		<div class = "appLayoutContents">
			<div class = "appLayout_container">
				<div class = "FundingLayout_contents">
					<div class = "fundingIntroContainer">
						<strong class = "fundingIntroContainer_title">������Ʈ ����</strong>
						<p class = "fundingIntroContainer_description">������Ʈ�� �����ϴ� �� �ʿ��� ������ �ۼ��� �ּ���.</p>
					</div><!-- fundingIntroContainer -->
					<div class = "FundingStatus_container">
						<div class = "FundingStatus_label">
							������Ʈ �غ� ����
						</div>
						<div class = "FundingStatus_statusView">
							<div class = FundingStatus_icon__1Xrqx yellow"></div>
							�ۼ� ��
						</div>
						<div class = "FundingStatus_guide">
							<p style="margin:0px;">�Ʒ��� �ʼ� �׸���� ��� �ۼ� �Ϸ� ���·� �ٲ�� [�����ϱ�]�� ���� �� �־��.</p>
						</div>
					</div>
					<div>
						<div class = "PageMenuList_card">
							<div class = "PageMenuList_container">
								<div class = "PageMenuList">
									<div class = "PageMenuList_name">
										������Ʈ ����
									</div>
									<div class = "PageMenuList_status">
										�ۼ� ��
									</div>
								</div>
								<a class = "PageMenuList_buttonWrapper" href = "pagefour">
									<button type = "button">�ۼ��ϱ�</button>
								</a>
							</div>
						</div><!-- PageMenuList_card -->
						<div class = "PageMenuList_card">
							<div class = "PageMenuList_container">
								<div class = "PageMenuList">
									<div class = "PageMenuList_name">
										�⺻ ����
									</div>
									<div class = "PageMenuList_status">
										�ۼ� ��
									</div>
								</div>
								<a class = "PageMenuList_buttonWrapper" href = "pagefive">
									<button type = "button">�ۼ��ϱ�</button>
								</a>
							</div>
						</div><!-- PageMenuList_card -->
						<div class = "PageMenuList_card">
							<div class = "PageMenuList_container">
								<div class = "PageMenuList">
									<div class = "PageMenuList_name">
										���丮 �ۼ�
									</div>
									<div class = "PageMenuList_status">
										�ۼ� ��
									</div>
								</div>
								<a class = "PageMenuList_buttonWrapper" href = "pagesix">
									<button type = "button">�ۼ��ϱ�</button>
								</a>
							</div>
						</div><!-- PageMenuList_card -->
					</div>
				
					<div class = "fundingIntroContainer_Btn">
						<button type = "button"><span>�����ϱ�</span></button>
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
    }
}

function handleMouseOut(event) {
    if (event.target.tagName === 'LI') {
        event.target.style.backgroundColor = '';
        event.target.style.boxShadow = '';
        event.target.style.color = 'black';
    }
}

titleList.addEventListener('mouseover', handleHover);
titleList.addEventListener('mouseout', handleMouseOut);

</script>











































































<%@include file="../temp/footer.jsp"%>
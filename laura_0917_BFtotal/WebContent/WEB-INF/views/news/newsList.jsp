<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${rPath}/css/board_under.css">



	<!-- ä���� 8/31�� �̹��� & �ؽ�Ʈ ���� -->
<div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/newsUpload/news3.jpg); height:310px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;top:80px;">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);">���󿡼� ���� ���� <br>
						��ȭ�ҽ��� ���ص���� </span>
                    </div>
                </div>
            </div>
        </div>
    </div>





		<div class="container">
			<!-- 0823_������ : �ٸ� �Խ������� �Ѿ�� ��� �� �߰� -->
			<!-- ���� �� �κ� bar -->
			<div>
				<!-- <h3 style = "font-weight: bold; margin-top: 50px;">Ŀ�´�Ƽ</h3> -->
				<div class="ui-tab">
					<ul class="tab">
						<li>
							<a href="partyList">
								<div><span class="material-symbols-outlined">diversity_3</span></div>
								<div><span>��Ƽ����</span></div>
							</a>
						</li>
						<li>
							<a href="trboardList">
								<div><span class="material-symbols-outlined">redeem</span></div>
								<div><span>����絵</span></div>
							</a>
						</li>
						<li>
							<a href="newsList">
								<div><span class="material-symbols-outlined">newsmode</span></div>
								<div><span>����</span></div>
							</a>
						</li>
					</ul>
				</div>
				<!-- ��� ���� ���� select box ����!!!!-->
				<div class="selectBox">
					<select class="select"
						onchange="if(this.value) location.href=(this.value);">
						<option value>��ü</option>
						<option value="#">�ֽż�</option>
						<option value="#">�α��</option>
						<option value="#">��õ��</option>
					</select>
				</div>
				<!-- select box ��!!!!! -->
			</div>
			<!-- ���� �� �κ� bar �� !!! -->
			
			<div class="newslistform">
				<c:forEach var="e" items="${newsList}">
					<div class="single-blog-area blog-style-2 mb-50 wow fadeInUp"
						data-wow-delay="0.2s" data-wow-duration="1000ms">
						<div class="row align-items-center">
							<div class="col-12 col-md-6">
								<div class="single-blog-thumbnail">
									<a href="upNewsHit?nnum=${e.nnum}"><img
										src="${rPath}/img/news/${e.nimgn}"></a>
								</div>
							</div>
							<div class="col-12 col-md-6">
								<!-- Blog Content -->
								<div class="single-blog-content">
									<div class="line"></div>
									<p>��ȸ�� ${e.nhit}</p>
									<h4>
										<a href="upNewsHit?nnum=${e.nnum}" class="post-headline">${e.ntitle }</a>
									</h4>
									<p>${e.npreview}</p>
									<div class="post-meta">
										<p>${e.ncompany}
											/ ${e.nwriter} ����</a>
										</p>
										<p>${e.ndate}</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
		</div>
		<div style = "border-top:1px solid #eee; text-align:right;">
					<button type="button" class="btn btn-outline-secondary"
							onclick="location='news_upload'" style = " margin:30px 20px;">���ۼ�</button>
				</div>
			<!-- ����Ʈ �ϴ� �˻�, ���������̼�, ���ۼ� �κ� -->
			<div class="">

				<%-- �˻����� --%>
				<div class="">
				<%@include file="../temp/pageProcess.jsp"%>
					<%-- ������ ����Ʈ �𵨷� ��û�� ������. --%>
					<form class="d-flex" method="post" action="fboardList" style = "display: flex; justify-content: center; gap:5px;margin-bottom:50px;">
							<select class="form-control btn-mini" name="searchType"
								id="searchType" style="width: 100px; height: 31px;">
								<option value="">�˻�</option>
								<option value="1">����</option>
								<option value="2">�̸�</option>
								<option value="3">����</option>
							</select> <input class="form-control me-2" type="text"
								placeholder="�˻�� �Է����ּ���" name="searchValue" id="searchValue"
								style="width: 200px; height: 31px; color:#c6c6c6;">
							<button class="btn btn-outline-secondary" type="submit" style = "width: 80px; height: 31px;"><span>�˻�</span></button>
						</form>
				</div>
				<!-- n_search �� -->

				

				<!-- ���ۼ� ��ư ���� -->
				
			</div>
			<!-- n_uderbar �� -->
		</div>
		<!-- container -->

<%@include file="../temp/footer.jsp"%>
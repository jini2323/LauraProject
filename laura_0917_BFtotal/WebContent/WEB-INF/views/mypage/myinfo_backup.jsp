<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet" href="<%=application.getContextPath() %>/resources/css/myInfo.css">

<div class="content-body">
	<div class="container-fluid mt-3">
		<!-- 0712_����������_��ư -->
		<div class="row">
			<!-- 0703 ī��1 -->
			<button class="col-lg-3 col-sm-6">
				<a href="<%=application.getContextPath()%>/mypage?email=${sessionScope.sessionID}">
					<div class="card gradient-1">
						<div class="card-body">
							<h3 class="card-title">���� Ȯ�� / ����</h3>
							
							<div class="d-inline-block">
								<h2 class="info1">�� ����</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
			<!-- 0703 ī��2 -->
			<button class="col-lg-3 col-sm-6">
				<a href="fpAllList?fpmemnum=${sessionScope.sessionNO }">
					<div class="card gradient-2">
						<div class="card-body">
							<h3 class="card-title">�ݵ����� / ��Ȳ</h3>
							<div class="d-inline-block">
								<h2 class="info2">�ݵ�</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
			<!-- 0703 ī��3 -->
			<button class="col-lg-3 col-sm-6">
				<a href="#">
					<div class="card gradient-3">
						<div class="card-body">
							<h3 class="card-title">��ǥ���� / ��Ȳ</h3>
							<div class="d-inline-block">
								<h2 class="info3">���</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
			<!-- 0703 ī��4 -->
			<button class="col-lg-3 col-sm-6">
				<a href="#">
					<div class="card gradient-4">
						<div class="card-body">
							<h3 class="card-title">���� �� �� / ���</h3>
							<div class="d-inline-block">
								<h2 class="info4">�� Ȱ��</h2>
							</div>
						</div>
					</div>
				</a>
			</button>
		</div>
		<!-- 0712_����������_������ -->
		<!-- ������ ī�� -->
		<div class="row">
			<div class="col-lg-6 col-lg-6">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<!-- ���� ������̺� �̹������� �߰��Ͽ� �޾ƿ� ���� -->
							<img src="${rPath }/img/mypage_img/shark.png"
								class="rounded-circle" alt="">
							<h3 style="text-align: center;">�ݰ����ϴ�. ${vo.name} ��</h3>
							<p>���: ${vo.grade}</p>
							<p>�̸���: ${vo.email}</p>
							<p>�̸�: ${vo.name}</p>
							<p>�г���: ${vo.nickname}</p>
							<p>��ȭ��ȣ: ${vo.tel}</p>
							<p>����: ${vo.memgender}</p>
							<p>�������: ${vo.birthday}</p>
							<p>������: ${vo.mdate}</p>
							<p class="m-0"></p>
							<p>
							<a href="<%=application.getContextPath()%>/pwdchkf?email=${sessionScope.sessionID}" class="btn btn-sm btn-warning">ȸ�� ����</a>
							<a href="<%=application.getContextPath()%>/delete?email=${sessionScope.sessionID}" class="btn btn-sm btn-danger">ȸ�� Ż��</a>
							</p>
							<!-- 0819_������ : ������ ���� ��ư,�� �߰� -->
							<p><a href="artistform" class="btn btn-sm btn-info">������ ����</a></p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-6 col-lg-6">
				<!-- <div class="card">
					<div class="card-body">
						<div class="text-center">
							<img src="./images/users/8.jpg" class="rounded-circle" alt="">
							<h5 class="mt-3 mb-1">Ana Liem</h5>
							<p class="m-0">Senior Manager</p>
							<a href="javascript:void()" class="btn btn-sm btn-warning">Send Message</a>
						</div>
					</div>
				</div> -->
				<swiper-container class="mySwiper" pagination="true"
					pagination-clickable="true" navigation="true" space-between="30"
					loop="true"> <swiper-slide>
				<div id="chart"></div>
				<script>
					var chart = c3.generate({
						data : {
							//x�࿡ �����͸� �߰��ϱ� ���ؼ� API���� data.x�� �˻��ؼ� �߰� - ���� �����ؼ� �����ϱ� ����
							//step1) x���� �߰��Ѵ�. �̸�:x
							x : 'x',
							columns : [
							//step2) x�࿡ �� �����͸� ù��° ��Ұ� x�̸����� ����
							[ 'x', '2013-01-01', '2013-01-02', '2013-01-03' ],
									[ 'data1', 30, 200, 100 ],
									[ 'data2', 130, 100, 140 ] ],
							type : 'bar'
						},
						//step3) axis.type���� x���� ��¥���� format�� ����
						axis : {
							x : {
								type : 'timeseries',
								tick : {
									format : '%Y-%m-%d'
								}
							}
						},
						bar : {
							width : {
								ratio : 0.2
							// this makes bar width 50% of length between ticks
							}
						// or
						//width: 100 // this makes bar width 100px
						}
					});

					setTimeout(function() {
						chart.load({
							columns : [ [ 'data3', 400, 500, 450 ] ]
						});
					}, 3000);
					
					
				</script></swiper-slide> <swiper-slide> 2 </swiper-slide> <swiper-slide>Slide
				3</swiper-slide> <swiper-slide>Slide 4</swiper-slide></swiper-container>
			</div>
		</div>
	</div>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/swiper@10/swiper-element-bundle.min.js"></script>
<%@include file="../temp/footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>
<link rel="stylesheet"
	href="<%=application.getContextPath()%>/resources/css/partyDetailForm.css">

<!-- ##### Single Blog Area Start ##### -->
<div class="breadcumb-area bg-img"
	style="background-image: url(${rPath }/img/fboard_img/party.jpg); height:310px;">
	<div class="container h-100">
		<div class="row h-100 align-items-center">
			<div class="col-12">
				<div class="imgText"
					style="text-align: right; color: #fff; font-weight: bold; font-size: 38px; position: relative; left: 100px; top: 80px;">
					<span style="background-color: rgba(0, 0, 0, 0.5);"><br>
					</span>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- party content & comm -->
<div class="container">
	<div class="row">
		<div class="col-12 col-lg-12">
			<div class="pagemain">
				<div class="single-blog-area blog-style-2" style="margin-top: 0px;">
					<div class="single-blog-content">
						<div class="line"></div>
						<a href="partyList" class="post-tag">��Ƽ���� �Խñ�</a>
						<h4>
							<a href="#" class="post-headline mb-0">${pvo.partytitle}</a>
						</h4>
						<div class="post-meta mb-50">
							<div class="prwriter">
								<img src="${rPath }/img/making_funding/my.svg"><span>${pvo.pwriter}</span>
								<!-- �ۼ���¥ -->

							</div>
							<span
								style="font-size: 10px; margin-left: 40px; position: absolute;">${pvo.pupdate }</span>
							<span
								style="font-size: 10px; margin-left: 120px; position: absolute;">��ȸ��
								${pvo.phit}</span> <br>
							<!-- �̹��� -->
							<img src="${rPath}/img/fboard/${pvo.pimgn}"
								style="width: 300px; cursor: pointer;" id="imgn">
						</div>
						<!-- ���� -->
						<p>${pvo.partycontent}</p>
					</div>
				</div>

				<div class="buttons" style="text-align: right;">
					<a href="partyList" class="button">���</a> <a
						href="partyModify?partynum=${pvo.partynum}" class="button">����</a> <a
						href="partyDelete?partynum=${pvo.partynum}" class="button"
						onclick="return confirm('�����Ͻðڽ��ϱ�?')">����</a>
				</div>

				<!-- ��� ����Ʈ -->
				<div class="post-a-comment-area">
					<!-- Comment Area Start -->
					<div class="comment_area clearfix">
						<h5 class="title">���</h5>

						<ol>
							<!-- Single Comment Area -->
							<c:forEach var="e" items="${clist}">
								<li class="single_comment_area">
									<!-- Comment Content -->
									<div class="comment-content d-flex">
										<!-- Comment Author -->
										<div class="comment-author" style="margin-right: 20px;">
											<img src="${rPath }/img/making_funding/my.svg" alt="author">
											 <!-- �����ʻ��� -->
											<span>${e.pcwriter }</span>

										</div>
										<!-- Comment Meta -->
										<div class="comment-meta" style="margin-bottom: 0;"
											id="pcDisplayWrapper">
											<span id="pcDisplay">${e.pcomm}</span>
											<p style="margin-bottom: 0">${e.pcdate }</p>
										</div>
										<!-- ��ۼ��� �߰��� -->
										<div id="pcEditWrapper" style="display: none;">
											<div class="group">
												<input type="hidden" id="pcnum" name="pcnum"
													value="${e.pcnum }"> <input type="text"
													name="pcwriter" id="pcwriter"
													value="${sessionScope.sessionNNAME}" readonly> <span
													class="highlight"></span> <span class="bar"></span>
												<textarea name="pcomm" id="pcInputField" required
													style="width: 690px">${e.pcomm}</textarea>
											</div>
											<button id="pcSaveBtn" style="display: inline;">
												<span>����</span>
											</button>
										</div>
										<c:if test="${e.pcwriter == sessionScope.sessionNNAME}">
											<!-- ��ư�� Ŭ���ϸ� ���� ����Ͽ� ���̰ų� ���� -->
											<button id="pcModifyBtn">
												����</button>
											<a href="pcdel?partynum=${pvo.partynum}&pcnum=${e.pcnum}">����</a>
											<!-- <button id="pcdelBtn">����</button> -->
										</c:if>
									</div>
								</li>
							</c:forEach>
						</ol>
					</div>

					<!-- ����Է�Form -->
					<form action="pCommInsert" method="post">
						<div class="partyComm">
							<div class="">
								<div class="">
									<input type="hidden" id="party_partynum" name="party_partynum"
										value="${pvo.partynum}">

								</div>
							</div>
							<div class="mainComm">
								<div class="mainPComm">
									<input type="text" name="pcwriter" id="pcwriter"
										value="${sessionScope.sessionNNAME}" readonly>
									<textarea type="hidden" name="pcomm" id="pcomm"
										placeholder="����� �����ּ���" required></textarea>
								</div>
								
								<!-- ����
								<span class="star"> �ڡڡڡڡ� <span>�ڡڡڡڡ�</span> <input
									type="range" oninput="drawStar(this)" value="1" step="1"
									min="0" max="10">
								</span>
 								-->
 								
								<div class="commBtn">
									<button type="submit" class="button">���</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- <button id="pcdelBtn">����</button> -->
<script>
	var pcModifyBtn = document.getElementById("pcModifyBtn");
	var pcSaveBtn = document.getElementById("pcSaveBtn");
	var pcDisplay = document.getElementById("pcDisplay");
	var pcInputField = document.getElementById("pcInputField");
	var pcDisplayWrapper = document.getElementById("pcDisplayWrapper");
	var pcEditWrapper = document.getElementById("pcEditWrapper");

	var party_partynum = document.getElementById("party_partynum").value;

	pcModifyBtn.addEventListener("click", function() {
		if (pcModifyBtn.textContent === "����") {
			pcModifyBtn.textContent = "���";
			pcSaveBtn.style.display = "inline";
			pcDisplayWrapper.style.display = "none";
			pcEditWrapper.style.display = "block";
		} else {
			pcModifyBtn.textContent = "����";
			pcSaveBtn.style.display = "none";
			pcDisplayWrapper.style.display = "block";
			pcEditWrapper.style.display = "none";
		}
	});

	pcSaveBtn.addEventListener("click", function() {

		// contextPath ������ ������Ʈ�� ���ؽ�Ʈ ��ΰ� �����(�������� �ּҸ� �����ͼ� ó��)
		var contextPath = "${pageContext.request.contextPath}";

		var newPcomm = pcInputField.value; //�����Է��� ���
		// ajax ��û�� ����
		var xhr = new XMLHttpRequest();

		// POST�� �Ѱ��� ������
		var data = {}
		data.pcnum = parseInt(document.getElementById("pcnum").value);
		data.pcomm = newPcomm;
		data.party_partynum = parseInt(party_partynum);
		console.log(party_partynum);
		console.log(typeof data.party_partynum);
		console.log(data.pcnum);
		console.log(typeof data.pcnum);
		console.log(data.pcomm);
		console.log(typeof data.pcomm);
		var JSONdata = JSON.stringify(data);
		console.log(JSONdata);

		// ��û�� ���� URL
		xhr.open("POST", contextPath + "/pcModify", true);

		// "Content-Type" ��� ����
		xhr.setRequestHeader("Content-Type", "application/json");

		xhr.onreadystatechange = function() {
			if (xhr.readyState === 4 && xhr.status === 200) {
				console.log("��ۼ���")
			}
		};

		xhr.send(JSONdata);

		pcDisplay.textContent = newPcomm;
		pcModifyBtn.textContent = "����";
		pcSaveBtn.style.display = "none";
		pcDisplayWrapper.style.display = "block";
		pcEditWrapper.style.display = "none";
	});
	
	
	
	
</script>


<%@include file="../temp/footer.jsp"%>
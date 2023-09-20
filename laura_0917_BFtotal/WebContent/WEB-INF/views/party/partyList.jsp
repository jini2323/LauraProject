<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/partyList1.css">	


	<!-- ä���� 8/30 �̹��� & �ؽ�Ʈ ���� -->
	<div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/fboard_img/party.jpg); height:310px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;top:80px;">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);">���� ��ȭ �� ģ���� �ʿ��ϼ���?<br>
						���󿡼� ���غ�����</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

<div class="container" id = "upboardTable">
    <!-- background ���� �� -->
		<table class="test-tbl">
			<thead>
				<!-- <h3 style="text-align: center; margin-top: 50px; font-weight: bold;">��Ƽ����</h3> -->
				<div class="ui-tab">
					<ul class="tab">
						<li>
							<a href="partyList">
								<div><span class="material-symbols-outlined">diversity_3</span></div>
								<div><span>��Ƽ����</span></div>
							</a>
						</li>
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="trboardList">
								<div><span class="material-symbols-outlined">redeem</span></div>
								<div><span>����絵</span></div>
							</a>
						</li>
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="newsList">
								<div><span class="material-symbols-outlined">newsmode</span></div>
								<div><span>����</span></div>
							</a>
						</li>
					</ul>
				</div>
				<div class="bar">
						<select class="selectBox" onchange="if(this.value) location.href=(this.value);">
							<option value>��ü</option>
							<option value="#">�ֽż�</option>
							<option value="#">�α��</option>
							<option value="#">��õ��</option>
						</select>
				</div>
			</thead>
				<colgroup>
						<col width = "10%">
						<col width = "45%">
						<col width = "10%">
						<col width = "10%">
						<col width = "15%">
						<col width = "10%">
					</colgroup>
			<tbody>
			<tr class="test-tbl-title" style="border-top: 2px solid black; border-bottom: 1px solid #bcbcbc; height: 35px;" colspan="6">
				<td style = "text-align: center;"><span>No</span></td>
				<td style = "text-align: center;"><span>����</span></td>
				<td style = "text-align: center;"><span>�ۼ���</span></td>
				<td style = "text-align: center;"><span>��ȸ��</span></td>
				<td style = "text-align: center;"><span>�̹���</span></td>
				<td style = "text-align: center;"><span>���</span></td>
			</tr>
				<c:forEach var="e" items="${plist}">
						<tr class="test-tbl-item">
							<td style = "text-align: center;">
							<span>${e.partynum }</span>
							</td>
								<td style = "text-align: left; font-weight: bold;"><span><a href="upPHit?partynum=${e.partynum }">${e.partytitle}</a></span></td>
								<td><p style = "margin: 0; padding-top: 5px; text-align: center;">${e.pwriter }</p></td>
								<td><p style = "margin: 0; text-align: center;">��ȸ ${e.phit}</p></td>
							
							<td style = "text-align: center;"><a href="upPHit?partynum=${e.partynum }"><img src="${rPath}/img/fboard/${e.pimgn}" style="width: 45%; border-radius: 10%;"></a></td>
							<td style = "text-align: center;">
								<span class = "tbl-item-comments">���</span>
								<span></span>
							</td>
						</tr>
					</c:forEach>
					<tr>
					<td colspan="9" style="text-align: right;">
						<button type="button" class="btn btn-outline-secondary"
							onclick="location='upparty'" style = " margin:30px 20px;">���ۼ�</button>
					</td>
				</tr>
				<tr>
				</tbody>

			<%-- page���� --%>
			<tfoot style = "background-color:rgba(249, 250, 251, 1);">
			
				<%-- ���ۼ� ���� --%>
				
				<%@include file="../temp/pageProcess.jsp"%>
					<th colspan="9">
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
					</th>
			</tfoot>
		</table>
	</div>
<script>
const swiper = new Swiper('.sample-slider', {
	autoplay: true,
	loop: true,
    pagination: {                       //pagination(dots)
        el: '.swiper-pagination',
    },
    navigation: {                       //navigation(arrows)
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
})

	
</script>

<%@include file="../temp/footer.jsp"%>
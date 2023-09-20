<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/trboardList1.css">	

	<!-- ä���� 8/31�� �̹��� & �ؽ�Ʈ ���� -->
    <div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/fboard_img/trade.jpg); height:310px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;top:80px">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);">�������� �̿� �� �߰�ŷ�<br>
							���󿡼� ���� �����غ�����
						</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
	<!-- Ŀ�´�Ƽ list �ٵ� (ä����) -->
	<div class="container">
		<table class="test-tbl" id="upboardTable">
			<thead>
				<div class="ui-tab" style = "margin-top:40px">
					<ul class="tab" style = "display:flex;gap: 50px;justify-content: center;">
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="partyList">
								<div><span class="material-symbols-outlined" style = " background-color: #fff;padding: 10px;border-radius: 50%;color: #00c4c4;margin: 10px 0;">diversity_3</span></div>
								<div><span>��Ƽ����</span></div>
							</a>
						</li>
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="trboardList">
								<div><span class="material-symbols-outlined" style = " background-color: #fff;
								    padding: 10px;
								    border-radius: 50%;
								    color: #00c4c4;
								    margin: 10px 0;">redeem</span></div>
									<div><span>����絵</span></div>
							</a>
						</li>
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
							<a href="newsList">
								<div><span class="material-symbols-outlined" style = " background-color: #fff;
							    padding: 10px;
							    border-radius: 50%;
							    color: #00c4c4;
							    margin: 10px 0;">newsmode</span></div>
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
					<col width="5%">
					<col width="10%">
					<col width="30%">
					<col width="10%">
					<col width="10%">
					<col width="10%">
					<col width="15%">
					<col width="10%">
				</colgroup>
				<tbody>
					<tr class="test-tbl-title"
						style="border-top: 2px solid black; border-bottom: 1px solid #bcbcbc; margin-right: 10px;" colspan="6">
						<td style="text-align: center;"><span>No</span></td>
						<td style="text-align: center;"><span>�̹���</span></td>
						<td style="text-align: center;"><span>����</span></td>
						<td style="text-align: center;"><span>�ۼ���</span></td>
						<td style="text-align: center;"><span>����</span></td>
						<td style="text-align: center;"><span>��¥</span></td>
						<td style="text-align: center;"><span>����</span></td>
						<td style="text-align: center;"><span>���</span></td>
					</tr>
					<!-- <tr class="test-tbl-notice" style ="margin: 0 50px;">
						<td style="text-align: left;" colspan="3"> 
							<a href = "#">
								<span>
								   <span class="material-symbols-outlined">done_outline </span>
								        �������� ��¼�� ��¼�� �������� �������� �� ��!
								 </span>
						</a>
						</td>
					</tr> -->
					<c:forEach var="e" items="${trboardList}">
						<tr class="test-tbl-item">
						<!-- ��ȣ -->
							<td style= "text-align: center;">${e.tradenum }</td>
						<!-- �̹��� -->
							<td  style= "text-align: center;">
								<a href="trboardDetail?trnum=${e.tradenum}">
								<img src="${rPath}/img/trboard/${e.trimgn}">
								</a>
							</td>
						<!-- ���� -->
							<td style = "text-align: left;">
								<a href="trboardDetail?trnum=${e.tradenum}">
									<h6 style = "font-weight: bold;">${e.trtitle}</h6>
								</a>
							</td>
						<!-- �ۼ��� -->
							<td style= "text-align: center;">
								<p style="margin: 0; padding-top: 5px;">${e.trwriter}</p>
							</td>
						<!-- ���� -->
							<td style= "text-align: center;">
								<p style="margin: 0;">${e.trloc}</p>
							</td>
						<!-- ��¥ -->
							<td style= "text-align: center;">
								<p>${e.trupdate}</p>
							</td>
						<!-- ���� -->
							<td style= "text-align: center;">
								<h6>${e.trprice}��</h6>
							</td>
						<!-- ������ -->
							<td style = "text-align: center;">
								<div  class = "icon">
									<a href = "trboardDetail?trnum=${e.tradenum }"><span class="material-symbols-outlined"> sms </span></a> 
									<!-- �� ���� �� �� -->
									<span>5</span>&nbsp;
									<a href = "#"><span class="material-symbols-outlined"> favorite </span></a>
									<!-- �� ���� �� �� -->
									<span>8</span>
								</div>
							</td>
						</tr>
					</c:forEach>
					<tr>
					<td colspan="9" style="text-align: right;padding: 30px 10px;">
						<button type="button" class="btn btn-outline-secondary"
							onclick="location='trboardForm2'">���ۼ�</button>
					</td>
				</tr>
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


<style>
	.test-tbl tbody td:nth-child(3) {vertical-align: bottom}
</style>

<script>
const swiper = new Swiper('.sample-slider', {
	autoplay: true,
	loop: true,
    pagination: {                     
        el: '.swiper-pagination',
    },
    navigation: {                       
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
    },
})

	
</script>

<%@include file="../temp/footer.jsp"%>
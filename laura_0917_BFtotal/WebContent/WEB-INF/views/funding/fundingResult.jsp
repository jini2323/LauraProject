<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp"%>
<body>
	<table class="table">
		<thead>
			<tr>
				<th colspan="5">�ݵ� ���� Ȯ��</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<th scope="row">ȸ����ȣ</th>
				<td>${vo.fmem_num }</td>
			</tr>
			<tr>
				<th scope="row">�ݵ��۹�ȣ</th>
				<td>${vo.funnum_num }</td>
			</tr>
			<tr>
				<th scope="row">�ݵ��ݾ�</th>
				<td colspan="2">${vo.funmoney }</td>
			</tr>
			<tr>
				<th scope="row">�ݵ�����</th>
				<td colspan="2">${vo.funstatus }</td>
			</tr>
			<tr>
				<th scope="row">�ݵ���¥</th>
				<td colspan="2">${vo.joindate }</td>
			</tr>
		</tbody>
	</table>
	<div>
		<button id="funlist" name="funlist" onclick="location='fboardList'">����Ʈ</button>
		<button id="myhome" name="myhome"
			onclick="location='mypage?email=${sessionScope.sessionID}'">����������</button>
	</div>
	<%@include file="../temp/footer.jsp"%>
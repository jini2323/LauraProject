<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/join.css">
<script src ="${rPath}/js/ajaxDemo.js"></script>

   <div style="text-align: center;">
   		<h1 style="text-align: center;">My Page �ӽ�   </h1>
	<h3 style="text-align: center;">�ݰ����ϴ�. ${vo.name} �� </h3>
	<p>�ѹ�: ${vo.num}</p>
	<p>�̸���: ${vo.email}</p>
	<p>�̸�: ${vo.name}</p>
	<p>�г���: ${vo.nname}</p>
	<p>��ȭ��ȣ: ${vo.tel}</p>
	<p>������: ${vo.mdate}</p>
	</div>

    <%@include file="../temp/footer.jsp" %>
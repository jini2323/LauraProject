<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="../temp/header.jsp"%>

<c:set var="rPath" value="${pageContext.request.contextPath }/resources"/>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/trboardList.css">

<!-- ä���� ���� 08/31 -->
    <div class="breadcumb-area bg-img" style="background-image: url(${rPath }/img/fboard_img/trade.jpg); height:360px;">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="imgText" style = "text-align: right;color: #fff;font-weight: bold;font-size: 38px;position: relative;left: 100px;">
                        <span style = "background-color:rgba(0, 0, 0, 0.5);">���� ��ȭ �� ģ���� �ʿ��ϼ���?<br>
						���󿡼� ���غ�����</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="topbar">
		<!-- ���� �� �κ� bar -->
		<div>
			<div class="ui-tab">
					<ul class="tab">
						<li style = "background-color: var(--mint-m-100, #E7F9F9);width: 150px;height: 100px;text-align: center;border-radius: 1rem;">
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
							<a href="trboardList">
								<div><span class="material-symbols-outlined">newsmode</span></div>
								<div><span>����</span></div>
							</a>
						</li>
					</ul>
				</div>
			</div><!-- class�� ���� div -->
		</div><!-- topbar -->
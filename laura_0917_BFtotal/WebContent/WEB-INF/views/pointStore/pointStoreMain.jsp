<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@include file="../temp/header.jsp" %>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/pointStoreMain.css">

<div class = "storeDetail">
	<div class = "StorePageDivide">
		<div class = "item_Image">
			<div class = "item_ImageSeparate">
				<div class = "imgSmallBox">
					<img src = "${rPath }/img/pointStore/snoopy1.jpg" onmouseover="showImage(this)">
				</div>
				<div class = "imgSmallBox">
					<img src = "${rPath }/img/pointStore/snoopy2.jpg" onmouseover="showImage(this)">
				</div>
				<div class = "imgSmallBox">
					<img src = "${rPath }/img/pointStore/snoopy3.jpg" onmouseover="showImage(this)">
				</div>
				<div class = "imgSmallBox">
					<img src = "${rPath }/img/pointStore/snoopy4.jpg" onmouseover="showImage(this)">
				</div>
				<div class = "imgSmallBox">
					<img src = "${rPath }/img/pointStore/snoopy.jpg" onmouseover="showImage(this)">
				</div>
				<div class = "imgSmallBox">
					<img src = "${rPath }/img/pointStore/snoopy.jpg" onmouseover="showImage(this)">
				</div>
			</div><!-- item_ImageSeparate -->
			<div class = "item_imageMain">
				<img id="mainImage" src = "${rPath }/img/pointStore/snoopy.jpg">
				<div class = "sideBtn">
					<button><span class="material-symbols-outlined">chevron_left</span></button>
					<button><span class="material-symbols-outlined">chevron_right</span></button>
				</div>
			</div>
		</div><!-- item_Image -->
		<div class = "item_detailDescription">
			<div class = "item_info">
				<div class = "item_title">
					<span class = "title">25cm �ϸ��� ������ ����</span>
					<div class = "item_infoBanner">
						<span>����</span>
						<span>������</span>
					</div>
				</div>
				<div class = "item_price">
					<span>30,000P</span>
					<span>20,000P</span>
				</div>
				<div class = "item_price_line"></div>
			</div>
			<div class = "item_delivery">
				<b>�������</b>
				<div class = "delivery_info">
					<span>�Ϲݹ��</span>
					<span>2,500�� (20,000P �̻� ������)</span>
				</div>
			</div>
			<div class = "shoppingBag">
				<div class = "item_totalcountNprice">
					<div class = "count_Btn">
						<button><span class="material-symbols-outlined">remove</span></button>
						<input type = "text" id = "item_countInput" title = "���ż���" value = "1">
						<button><span class="material-symbols-outlined">add</span></button>
					</div>
					<span>20,000P</span>
				</div>
			</div><!-- shoppingBag -->
			<div class = "item_price_line"></div>
			<div class = "item_amount">
				<span>��ǰ �ݾ� �հ�</span>
				<span>20,000P</span>
			</div>
			<div class = "item_amountLine"></div>
			<div class = "BuyItem">
				<div class = "buyRightnow_Btn">
					<button>�����ϱ�</button>
				</div>
				<div class = "gotoCart_Btn">
					<button>��ٱ���</button>
				</div>
			</div>
		</div><!-- item_detailDescription -->
	</div><!-- StorePageDivide -->
</div><!-- storeDetail -->






<script>
/*�̹��� ȣ������ �� ���� �̹��� �κп� ���� ���ϴ� ���*/
    function showImage(image) {
        var mainImage = document.getElementById('mainImage');
        mainImage.src = image.src;
    }
    
</script>

















































<%@include file="../temp/footer.jsp" %>
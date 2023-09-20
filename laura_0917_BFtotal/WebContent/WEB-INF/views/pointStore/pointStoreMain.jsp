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
					<span class = "title">25cm 하르방 스누피 인형</span>
					<div class = "item_infoBanner">
						<span>세일</span>
						<span>무료배송</span>
					</div>
				</div>
				<div class = "item_price">
					<span>30,000P</span>
					<span>20,000P</span>
				</div>
				<div class = "item_price_line"></div>
			</div>
			<div class = "item_delivery">
				<b>배송정보</b>
				<div class = "delivery_info">
					<span>일반배송</span>
					<span>2,500원 (20,000P 이상 무료배송)</span>
				</div>
			</div>
			<div class = "shoppingBag">
				<div class = "item_totalcountNprice">
					<div class = "count_Btn">
						<button><span class="material-symbols-outlined">remove</span></button>
						<input type = "text" id = "item_countInput" title = "구매수량" value = "1">
						<button><span class="material-symbols-outlined">add</span></button>
					</div>
					<span>20,000P</span>
				</div>
			</div><!-- shoppingBag -->
			<div class = "item_price_line"></div>
			<div class = "item_amount">
				<span>상품 금액 합계</span>
				<span>20,000P</span>
			</div>
			<div class = "item_amountLine"></div>
			<div class = "BuyItem">
				<div class = "buyRightnow_Btn">
					<button>구매하기</button>
				</div>
				<div class = "gotoCart_Btn">
					<button>장바구니</button>
				</div>
			</div>
		</div><!-- item_detailDescription -->
	</div><!-- StorePageDivide -->
</div><!-- storeDetail -->






<script>
/*이미지 호버했을 때 메인 이미지 부분에 사진 변하는 기능*/
    function showImage(image) {
        var mainImage = document.getElementById('mainImage');
        mainImage.src = image.src;
    }
    
</script>

















































<%@include file="../temp/footer.jsp" %>
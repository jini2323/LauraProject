<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- �Խ��Ǵ�� ����¡ó���� -->
<c:set var="pageurl" value="?partynum=${pvo.partynum}&cPage"/> 



<tr>
	<th colspan="9" style="text-align: center;">
		<ul class="pagination" style="margin: 10px auto 20px;justify-content: center;">
			<%-- ���������� --%>
			<c:choose>
				<c:when test="${startPage <= page.pagePerBlock }">
				<li class="page-item disabled"><a class="page-link" href="#" >����</a></li>
				</c:when>
				<c:otherwise>
				
					<li class="page-item active">
					<a class="page-link" href="${pageurl}=${startPage -1}">����</a>
					</li>
				</c:otherwise>
			</c:choose>
			
			<%--nowPage �� �ش��� ���� ������ ��ũ�� �ɾ ������ �޴�  --%>
			<c:forEach varStatus="i" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${i.index == page.nowPage }"><!-- ������������ -->
						<li class="page-item active">
						<a class="page-link" href="#" style = "background-color: #00c4c4; border:1px solid #dee2e6;">
						${i.index }
						</a>
						</li>
					</c:when>
					<c:otherwise>
						<li class="page-item">
						<a class="page-link" id="page_link" href="${pageurl }=${i.index }" data-page="${i.index}">[${i.index }]</a>
						</li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<%-- ���������� --%>
			<c:choose>
				<c:when test="${endPage >= page.totalPage }">
				<li class="page-item"><a class="page-link" href="#" style = "color: #00c4c4">
				����
				</a></li>
				</c:when>
				<c:otherwise>
					<li class="page-item active">
					<a href="${pageurl }=${endPage + 1 }" style = "color: #00c4c4"> ���� </a></li>
				</c:otherwise>
			</c:choose>
		</ul>
	</th>
</tr>

<script>
// �񵿱��ó���� �ȵǴ� ���� �����
    var page_links = document.querySelectorAll("#page_link"); // ��� ������ ��ũ�� ����
	
    page_links.forEach(function (page_link) {
        page_link.addEventListener("click", function (event) {
            event.preventDefault(); // �⺻ ����(��ũ Ŭ��)�� ����
            var xhr = new XMLHttpRequest(); // ��û�� ����
            var data = {};
            console.log(page_link);
            data.partynum = parseInt("<c:out value='${pvo.partynum}'/>");
            data.cPage = parseInt(page_link.getAttribute("data-index")); // data-index �Ӽ��� ������
			console.log(data.partynum);
			console.log(data.cPage);
            var contextPath = "${pageContext.request.contextPath}";
            var url = contextPath + "/partyDetail" + "?partynum=" + data.partynum + "&cPage=" + data.cPage;
			console.log(url)
            xhr.onreadystatechange = function () {
                if (xhr.readyState === 4 && xhr.status === 200) {
                	// �����κ����� ������ ó���ϴ� �ڵ�
                	var response = xhr.responseText;
                    console.log("ajax Ȯ��");
                    //�ּҸ� �Ѱ���
                    window.location.href = url;
                }
            };

            xhr.open("GET", url, true); // ��û�� ����
            xhr.send(); // ��û�� ����
        });
    });
    /*
    var pageLinks = document.querySelectorAll(".page-link");
    pageLinks.forEach(function(pageLink) {
        pageLink.addEventListener("click", function(event) {
            event.preventDefault(); // �⺻ ����(��ũ �̵�) ����

            // ������ ��ȣ�� �����ͼ� URL �Ķ���� ����  id="content"
            var newPage = parseInt(pageLink.getAttribute("data-page"));
            var newURL = window.location.href.replace(/[\?&]cPage=\d+/, "") + "&cPage=" + newPage;
			console.log(typeof newPage);
			console.log(newURL);
            // AJAX ��û ������
            var xhr = new XMLHttpRequest();
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    // ���� ������ ó���Ͽ� ������ ������Ʈ
                    var response = xhr.responseText;
                    document.getElementById("content").innerHTML = response;
                }
            };
            xhr.open("GET", newURL, true);
            xhr.send();
        });
    });
    */
    
</script>
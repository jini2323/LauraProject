<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>


   <div class="wrap">
        <div class="login_in">
            <h2>Log-in</h2>
            <div class="login_simple">
            <ul>
            <li><a href=""><i class="fa-brands fa-google"></i></a></li>
            <li><a href=""><i class="fa-sharp fa-solid fa-n"></i></a></li>
            <li><a href=""><i class="fa-brands fa-kickstarter-k"></i></a></li>
            </ul>
            </div>
            
            <form action="loginProcess" method="post"  id="loginInfo">
            <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
            <div class="login_id">
                <h4>E-mail</h4>
                <input type="email" name="email" id="email" placeholder="이메일을 입력하세요">
            </div>
            <div class="login_pw">
                <h4>Password</h4>
                <input type="password" name="pwd" id="pwd" placeholder="******">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                <input type="checkbox" name="logSession" id="logSession"> 로그인 상태 유지
                </div>
                <div class="forgot_pw">
                <a href="babo">비밀번호를 잊어버렸나요?</a>
            	</div>
            </div>
            <div class="submit">
                <input type="submit" value="submit">
            </div>
            </form>
             <div class="to_join">
                <a href="member/memForm">아직 회원이 아닌가요?</a>
             </div>
        </div>
    </div>

    <%@include file="../temp/footer.jsp" %>
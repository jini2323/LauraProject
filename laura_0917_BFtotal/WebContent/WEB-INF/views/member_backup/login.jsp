<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@include file="../temp/header.jsp" %>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@400;500;700&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/7b2a602777.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${rPath}/css/login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.0/jquery.min.js"></script>


   <div class="wrap">
        <div class="login_in">
             <form action="loginProcess" method="post" id="loginInfo" autocomplete="on">
            <div class="login_info">
            <h2>Log-in</h2>
            <div class="login_simple">
            
            <li><a href="https://accounts.google.com/InteractiveLogin/identifier?elo=1&ifkv=Af_xneFiEINhIsWJTK0vNyqu91p2q3U0En4hasiWh8p-lxONHZnmjo8glfSmg0W-GYA8PTBGKTDsQA&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><i class="fa-brands fa-google"></i></a></li>
            <li><a href="https://nid.naver.com/nidlogin.login?mode=form&url=https://www.naver.com/"><i class="fa-sharp fa-solid fa-n"></i></a></li>
            <li><a href="https://accounts.kakao.com/login/?continue=https%3A%2F%2Fdevelopers.kakao.com%2Flogin%3Fcontinue%3D%252Fconsole%252Fapp&lang=ko#login"><i class="fa-brands fa-kickstarter-k"></i></a></li>
            
            </div>
           <div id="reip"> 
           <input type="hidden" name="reip" value="<%=request.getRemoteAddr()%>">
           </div>
           
            <div class="login_email">
                <input type="email" name="email" id="email" placeholder="Email">
            </div>
            
            
            <div class="login_pw">
                <input type="password" name="pwd" id="pwd" placeholder="8자이상 입력">
            </div>
            <div class="login_etc">
                <div class="checkbox">
                <input type="checkbox" name="logSession" id="logSession"> 로그인 상태 유지
                </div>
                <div class="forgot_pw">
                <a href="findID">아이디 찾기</a>
                <span>｜</span>
                <a href="findPWD">비밀번호 찾기</a>
            	</div>
            </div>
            
            <div class="login_btn">
              <input type="submit" value="로그인">
            </div>
            <div class="to_join">
                <a href="memForm">아직 회원이 아닌가요?</a>
             </div>
            </div> 
            
             </form>
        </div>
    </div>




    <%@include file="../temp/footer.jsp" %>
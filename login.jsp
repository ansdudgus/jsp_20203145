<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
  String id = "20203145";
  String password = "myh1234";
  
  String inputId = request.getParameter("uname");
  String inputPassword = request.getParameter("psw");
  
  if (inputId != null && inputPassword != null) {
    if (inputId.equals(id) && inputPassword.equals(password)) {
      session.setAttribute("loggedIn", true);
      response.sendRedirect("Message.jsp");
      return;
    }
  }
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MYH Fitness 로그인 페이지</title>
<style>
  body {
    display: flex;
    height: 100vh;
    background-color: gray;
    flex-direction: column;
    
  }
  form {
    display: flex;
    flex-direction: column;
    align-items: center;
  }
  hr {
    width: 100%;
    margin: 0 auto;
    border: none;
    border-top: 1px solid black;
    margin-top: 0rem;
    margin-bottom: 2rem;
  }
</style>
</head>
<body>

<h1>로그인 페이지입니다.</h1>
<hr>

<br>
<form method="post">
<div class="container">
  <div class="centered">
    <label for="uname"><b>아이디</b></label>
    <input type="text" placeholder="Username" name="uname" required>
    <br>
    <label for="psw"><b>패스워드</b></label>
    <input type="password" placeholder="Password" name="psw" required>
    <br>
    <button onclick="location.href='welcome.jsp'">메인페이지로</button>
    <button onclick="location.href='Message.jsp'">로그인</button>
    <button onclick="location.href='Signup.jsp'">회원가입</button>
    <br>
    <label>
      <input type="checkbox" checked="checked" name="remember">저장하시겠나요?
    </label>
  <div class="container">
    <span class="psw"><a href="#">비밀번호를 잊어버렸나요?</a></span>
  </div>
 </div>
</div>
</form>

</body>
</html>

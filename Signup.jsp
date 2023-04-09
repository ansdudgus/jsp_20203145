<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MYH Fitness 회원가입 페이지</title>
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

<h1>회원가입 페이지입니다.</h1>
<hr>

<br>
<form action="Message2.jsp" method="post">
<div class="container">
  <div class="centered">
    <label for="uname"><b>아이디 *</b></label>
    <input type="text" placeholder="Username" name="uname" required>
    <br>
    <label for="psw"><b>비밀번호 *</b></label>
    <input type="password" placeholder="Password" name="psw" required>
    <br>
    <label for="psw"><b>비밀번호 확인 *</b></label>
    <input type="password" placeholder="Password Confirm" name="psw" required>
    <br>
    <label for="psw"><b>이름 *</b></label>
    <input type="text" placeholder="name" name="name" required>
    <br>
    <label for="psw"><b>메일주소 *</b></label>
    <input type="email" placeholder="E-mail" name="email" required>
    <br>
    <label for="psw"><b>전회번호 *</b></label>
    <input type="number" placeholder="Phone Number" name="number" required>
    <br>
    <button type="submit">가입하기</button>
    <button onclick="location.href='Signup.jsp'">다시쓰기</button>
    <br>
 </div>
</div>
</form>

</body>
</html>
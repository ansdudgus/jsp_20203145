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
<title>MYH Fitness �α��� ������</title>
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

<h1>�α��� �������Դϴ�.</h1>
<hr>

<br>
<form method="post">
<div class="container">
  <div class="centered">
    <label for="uname"><b>���̵�</b></label>
    <input type="text" placeholder="Username" name="uname" required>
    <br>
    <label for="psw"><b>�н�����</b></label>
    <input type="password" placeholder="Password" name="psw" required>
    <br>
    <button onclick="location.href='welcome.jsp'">������������</button>
    <button onclick="location.href='Message.jsp'">�α���</button>
    <button onclick="location.href='Signup.jsp'">ȸ������</button>
    <br>
    <label>
      <input type="checkbox" checked="checked" name="remember">�����Ͻðڳ���?
    </label>
  <div class="container">
    <span class="psw"><a href="#">��й�ȣ�� �ؾ���ȳ���?</a></span>
  </div>
 </div>
</div>
</form>

</body>
</html>

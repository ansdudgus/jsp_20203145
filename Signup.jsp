<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MYH Fitness ȸ������ ������</title>
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

<h1>ȸ������ �������Դϴ�.</h1>
<hr>

<br>
<form action="Message2.jsp" method="post">
<div class="container">
  <div class="centered">
    <label for="uname"><b>���̵� *</b></label>
    <input type="text" placeholder="Username" name="uname" required>
    <br>
    <label for="psw"><b>��й�ȣ *</b></label>
    <input type="password" placeholder="Password" name="psw" required>
    <br>
    <label for="psw"><b>��й�ȣ Ȯ�� *</b></label>
    <input type="password" placeholder="Password Confirm" name="psw" required>
    <br>
    <label for="psw"><b>�̸� *</b></label>
    <input type="text" placeholder="name" name="name" required>
    <br>
    <label for="psw"><b>�����ּ� *</b></label>
    <input type="email" placeholder="E-mail" name="email" required>
    <br>
    <label for="psw"><b>��ȸ��ȣ *</b></label>
    <input type="number" placeholder="Phone Number" name="number" required>
    <br>
    <button type="submit">�����ϱ�</button>
    <button onclick="location.href='Signup.jsp'">�ٽþ���</button>
    <br>
 </div>
</div>
</form>

</body>
</html>
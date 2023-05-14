<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<style>
  body {
    background-color: lightblue;
  }
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<form action="index.jsp" method="post">
	<table align=center>
<tr><td colspan=2 align=center height=40><b>회원가입</b><td></tr>
<tr>
	<td align=right>아이디&nbsp;</td>
	<td><input type="text" name="id" required></td>
</tr>
<tr>
	<td align=right>패스워드&nbsp;</td>
	<td><input type="password" name="ps" required></td>
</tr>
<tr> 
	<td align=right>패스워드(확인)&nbsp;</td>
	<td><input type="password" name="ps2" required></td>
</tr>
<tr>
	<td align=right>이름&nbsp;</td>
	<td><input type="text" name="name" required></td> 
</tr>
<tr>
	<td colspan=2 align=center height=50>
		<input type="submit" value="회원가입하기">
		<button onclick="location.href='select.jsp'">회원조회</button>
        <button onclick="location.href='update.html'">회원수정</button>
        <button onclick="location.href='delete.html'">회원탈퇴</button>
	</td>
</tr>
</table>
    
	<div class="container">
		<div class="text-center">
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>
		</div>
		<hr>
	</div>	
</body>
</html>
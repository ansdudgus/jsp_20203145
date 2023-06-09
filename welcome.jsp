﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>MYH Fitness 메인페이지</title>
<style>
  body {
    background-color: gray;
  }
</style>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "MYH 휘트니스에 오신 것을 환영합니다!";
	String tagline = "Welcome to MYH Fitness!";%>
	<div class="jumbotron">
		<div class="container">
			<h2 class="display-3">
				<%=greeting%>
			</h2>
		</div>
	</div>	
	<div class="container">
		<div class="text-center">
			<h3>
				<%=tagline%>
			</h3>
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
	<%@ include file="footer.jsp"%>
</body>
</html>
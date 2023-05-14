<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>
<html>
<head>
<style>
  body {
    background-color: lightblue;
  }
  table, th, td {
  border: 1px solid black;
}
</style>
</head>
<body>
<%
    Connection conn = ConnectionPool.get();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT id, ps, name, ts FROM puser");
    
    String h1 = "<h1>회원조회 페이지 입니다 - JSP_문영현</h1> <hr>";
    
    String str = "<table align = center>";
    str += "<tr><th colspan=6>가입자 리스트</th></tr>";
    str += "<tr><td>ID</td><td>PS</td><td>NAME</td><td>TS</td></tr>";
    while(rs.next()) {
    	str += "<tr>";
    	str += "<td>" + rs.getString("id") + "</td>";
    	str += "<td>" + rs.getString("ps") + "</td>";
        str += "<td>" + rs.getString("name") + "</td>"; 
    	str += "<td>" + rs.getString("ts") + "</td>";
    	str += "</tr>";
    }
    out.print(h1);
    out.print(str);
    
    rs.close(); stmt.close(); conn.close();
%>
<a href="./index_main.jsp">메인페이지로 이동하기</a>
</body>
</html>

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
	request.setCharacterEncoding("utf-8");

    String id = request.getParameter("id");
    String ps = request.getParameter("ps");
    String name = request.getParameter("name");
    
    String sql = "INSERT INTO puser(id, ps, name) VALUES(?, ?, ?)";
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada?serverTimezone=UTC", "root", "1234");
    String h1 = "<h1>회원가입 안내 페이지 입니다 - JSP_문영현</h1> <hr>";
    
    PreparedStatement stmt = conn.prepareStatement(sql);
    stmt.setString(1, id);
    stmt.setString(2, ps);
    stmt.setString(3, name);
    
    int count = stmt.executeUpdate();
    if (count == 1) {
    	out.print(h1);
        out.print("회원 가입이 완료되었습니다.");
    }
    else {
    	out.print(h1);
        out.print("오류가 발생하었습니다.");
    }
    
    stmt.close(); conn.close();
%>
</body>
</html>
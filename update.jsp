<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>
<html>
<head>
<meta charset="utf-8">
<style>
  body {
    background-color: lightblue;
  }
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

    String new_name = request.getParameter("new_name");
    String name = request.getParameter("name");
    String sql = "update puser set name = ? where name = ?";
    String h1 = "<h1>회원정보 수정 안내 페이지 입니다 - JSP_문영현</h1> <hr>";
  
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada?serverTimezone=UTC", "root", "1234");
   
    PreparedStatement stmt = conn.prepareStatement(sql);
 
    stmt.setString(1, new_name);
    stmt.setString(2, name);
    
    int count = stmt.executeUpdate();
    if (count == 1) {
    	out.print(h1);
        out.print("회원정보 수정이 완료되었습니다.");
    }
    else {
    	out.print(h1);
        out.print("오류가 발생하었습니다. 이름을 정확히 입력해보세요.");
    }
    stmt.close(); conn.close();
%>
<a href="./index_main.jsp">메인페이지로 이동하기</a>
</body>
</html>
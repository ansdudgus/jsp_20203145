<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
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
	String content = request.getParameter("content");

	String sql = "INSERT INTO pfeed(id, content) VALUES";
	sql += "('" + id + "', '" + content + "')";
	String h1 = "<h1>작성글조회 페이지 입니다 - JSP_문영현</h1> <hr>";

	 Class.forName("com.mysql.jdbc.Driver");
	 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybada?serverTimezone=UTC", "root", "1234");
	    
	 Statement stmt = conn.createStatement();

	int count = stmt.executeUpdate(sql);
	
	/*if (count == 1) {
	    out.print("작성글의 업로드가 완료되었습니다.");
	}
	else {
		out.print("작성글의 업로드 중 오류가 발생하었습니다.");
	}*/
	
	ResultSet rs = stmt.executeQuery("SELECT id, content, ts FROM pfeed");
	
	String str = "<table align = center>";
    str += "<tr><th colspan=6>가입자 리스트</th></tr>";
    str += "<tr><td>ID</td><td>CONTENT</td><td>TS</td></tr>";
    while(rs.next()) {
    	str += "<tr>";
    	str += "<td>" + rs.getString("id") + "</td>";
    	str += "<td>" + rs.getString("content") + "</td>";
    	str += "<td>" + rs.getString("ts") + "</td>";
    	str += "</tr>";
    }
    out.print(h1);
    out.print(str);

	stmt.close(); conn.close();
%>
<a href="./index_main.jsp">메인페이지로 이동하기</a>
</body>
</html>
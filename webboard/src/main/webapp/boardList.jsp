<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<body>
	<table border="1" style="width:600px">
		<caption>게시판</caption>
			<colgroup>
				<col width='8%' />
				<col width='*%' />
				<col width='15%' />
				<col width='15%' />
			</colgroup>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>등록자</th>
					<th>등록일</th>
				</tr>
			</thead>
			<tbody>
<%
/* 	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url = "jdbc:oracle:thin:@localhost:1521:xe/webboard";
	String id = "mulboard";
	String pw = "1234";
	Connection conn = DriverManager.getConnection(url, id, pw);
	Statement stmt = conn.createStatement(); */
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	String ID = "mulboard"; 
	String PW = "1234";
	Connection conn=DriverManager.getConnection(URL, ID, PW);
	Statement stmt=conn.createStatement();
	
	String query = " SELECT BRDNO, BRDTITLE, BRDWRITER, TO_CHAR(BRDDATE, 'YYYY-MM-DD') BRDDATE " +
				   " FROM TBL_BOARD" ;	
	ResultSet rs = stmt.executeQuery(query);
	
	while(rs.next()){
%>	
			<tr>
				<td><%=rs.getString("brdno") %></td>
				<td><a href="board1Read?brdno=<%=rs.getString("brdno")%>"><%=rs.getString("brdtitle") %></a></td>
				<td><%=rs.getString("brdwriter") %></td>
				<td><%=rs.getString("brddate") %></td>
			</tr>
<%			
	}
	stmt.close();
	conn.close();
%>
			</tbody>
		</table>
	</body>
</html>
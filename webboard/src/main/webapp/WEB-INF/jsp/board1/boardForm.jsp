<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" url="http://java.sun.com/JSP/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>board1</title>
</head>

<body>

	<form name="form1" action="board1Save">
		<table board="1" style="width:600px">
			<caption>게시판</caption>
			<colgroup>
				<col width='15%' />
				<col width='*%' />				
			</colgroup>
			<tbody>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="brdwriter" size="20" maxlength="20"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" name="brdtitle" size="70" maxlength="250"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="brdmemo" rows="5" cols="60"></textarea></td>
				</tr>	
			</tbody>
		</table>
		<a href="#" onclick="forma1.submit()"> 저장</a>	
	</form>

</body>
</html>
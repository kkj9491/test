<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>board1</title>
</head>
<body>
	<form name="form1" action="board1UpdateSave">
		<table border="1" style="width600px">
			<caption>게시판</caption>
				<colgroup>
					<col width="15%" />
					<col width="*%" />
				</colgroup>
				<tbody>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="brdwriter" size="20" maxlength="20" value="<c:out value="${boardInfor.brdwriter}"/>"></td>
					</tr>
					<tr>
						<td>제목</td>
						<td></td>
					</tr>
				</tbody>
		</table>
	</form>
</body>
</html>
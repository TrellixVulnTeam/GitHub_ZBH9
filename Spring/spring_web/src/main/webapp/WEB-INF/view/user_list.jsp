
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html >
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta   charset=utf-8">
<title>user_list.jsp(사용자 관리)</title> 
<link rel=stylesheet href="../css/user.css" type="text/css">
</head>
<body bgcolor=#FFFFFF text=#000000 leftmargin=0 topmargin=0 marginwidth=0 marginheight=0>
<br>

<script type="text/javascript">
function modifydo(){
	f.action="./modify.do";
	f.submit();	
}
</script>

<form action="search.do" method="post">
	<table width=590 border="0" cellpadding=0 cellspacing=0>
		<tr style="text-align:center;">
		<td style="text-align:center;">
			<select name="searchCondition">
				<c:forEach items="${searchconditionlist}" var="searchType">
					<option value="${searchType.code}">
					${searchType.codeName}
					</option>
				</c:forEach>
			</select>
			<input type="text" name="searchKeyword">
			<input type="submit" value="검색">
		</td>
		</tr>
	</table>
</form>

<table width=780 border=0 cellpadding=0 cellspacing=0>
<tr>
	<td width="20"></td>
	<td>
	  	<!--contents-->
	  	<table width=590 border=0 cellpadding=0 cellspacing=0>
		  	<tr>
				<td bgcolor="f4f4f4" height="22">&nbsp;&nbsp;<b>사용자 관리 - 리스트</b></td>
		  	</tr>
	  	</table>  
	  	<br>
	  
	  	<!-- list -->
	  	<table border="0" cellpadding="0" cellspacing="1" width="590" bgcolor="BBBBBB">
	  	
		  	<tr>
				<td width=190 align=center bgcolor="E6ECDE" height="22">사용자 아이디</td>
				<td width=200 align=center bgcolor="E6ECDE">이름</td>
				<td width=200 align=center bgcolor="E6ECDE">이메일</td>
		  	</tr>
		  	<c:forEach var="list" items="${list}">
		  		<tr>
		  		
				<td width=190 align=center bgcolor="E6ECDE" height="22">
				<a href="modify.do?userid=${list.userid}">${list.userid }</a>
				</td>
				
				<td width=200 align=center bgcolor="E6ECDE">${list.username }</td>
				<td width=200 align=center bgcolor="E6ECDE">${list.email }</td>
		  		</tr> 
		  		<tr>
				
		  		</tr>
		  	 </c:forEach>
		  	


 	<!-- 사용자 리스트를 클라이언트에게 보여주기 위하여 출력. -->
 	
	  	</table>
	  	<!-- /list -->	 

		<br>
		<!-- button -->
		<form name="f" method="get" action="./add.do">
	  	<table border="0" cellpadding="0" cellspacing="1" width="590">
			<tr>
				<td align="right">
				
					<input type="submit" value="사용자 추가"/>
				
				</td>
			</tr>
		</table>
		</form>
			
	</td>
</tr>
</table>  
</form>
</body>
</body>
</html>
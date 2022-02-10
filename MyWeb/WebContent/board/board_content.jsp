<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<div class="brand">My Web</div>        
    <div class="address-bar">Welcome to MyWorld</div>
    <%@ include file = "../include/_header.jsp" %>
<body>
	<section>
		<div align="center">
			<form action="" >
			  <table border="1" width="500">
			  	<tr>
					<td width="20%">글번호</td>
					<td width="30%">${vo.num }</td> <!-- DB로부터 전달 받은 부분 -->
					<td width="20%">조회수</td>
					<td width="30%">${vo.hit}</td> <!-- DB로부터 전달 받은 부분 -->
			  	</tr>
			  	<tr>
			  		<td>작성일</td>
			  		<td>${vo.regdate }</td> <!-- DB로부터 전달 받은 부분 -->
			  		<td>작성자</td>
			  		<td>${vo.writer }</td> <!-- DB로부터 전달 받은 부분 -->
			  	</tr>
			  	<tr>
			  		<td>제목</td>
			  		<td colspan="3">${vo.title }</td> <!-- DB로부터 전달 받은 부분 -->
			  	</tr>
			  	<tr>
			  		<td>내용</td>
			  		<td colspan="3" height="120">${vo.content }</td> <!-- DB로부터 전달 받은 부분 -->
			  	</tr>
			  	<tr>
			  		<td colspan="4" align="center">
			  		<input type="button" value="목록" onclick="location.href='list.board'">
			  		<input type="button" value="수정" onclick="location.href='modify.board?num=${vo.num}'">
			  		</td>
			  	</tr>			  	
			  </table>
			</form>
		</div>
	</section>






	<%@ include file = "../include/_footer.jsp" %>
</body>
</html>
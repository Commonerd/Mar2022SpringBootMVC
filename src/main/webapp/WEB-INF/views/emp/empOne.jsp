<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>사원 정보 확인</title>
</head>
<body><!-- deptAll -->
<h3>원하는 사원를 선택하세오</h3>
<select>
	<c:forEach items="${empAll}" var="emp">
		<option value="${emp.empno}">${emp.ename}</option>
	</c:forEach>

</select>
<div></div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(function(){
		$("select").click(function(){
				let no = $(this).val();
				$.ajax({
					url:"emp/"+no,
					type:"get",
					dataType:"json",
				}).done(function(data){
					$("div").empty();
					$("div").append("사원번호 : "+ data.empno+"<br>")
					.append("부서번호 : "+ data.deptno)
					.append("근무지 : "+ data.loc);
				})
		});
	});
</script>
</body>
</html>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>사원 추가</title>
</head>
<body><!-- no -->
<form method="post">
	사원번호 : <input name="empno" value="${no}" readonly><br>
	사원이름 : <input name="ename"><br>
	직급 : <input name="job"><br>
	상사 : <input name="mgr"><br>
	입사일 : <input name="hiredate"><br>
	급여 : <input name="sal"><br>
	커미션 : <input name="comm"><br>
	부서번호 : <select>
	<c:forEach items="${empAll}" var="dept">
		<option value="${emp.deptno}">${emp.deptno}</option>
	</c:forEach>

</select>


	<input type="submit" value="insert">
</form>
</body>
</html>
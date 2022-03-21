<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>사원 정보</title>
</head>
<body>
<h3>모든 사원의 정보를 출력합니다.</h3>
<!--  deptAll: List<Dept> -->
<c:forEach items="${empAll}" var="emp">
	${emp.empno}/ ${emp.ename} / ${emp.job} / ${emp.mgr} / ${emp.hiredate} / ${emp.sal}/${emp.comm}/ ${emp.deptno}

	<br>
</c:forEach>

</body>
</html>
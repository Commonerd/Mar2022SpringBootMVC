<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>부서 수정</title>
</head>
<body>
<h3>부서의 정보를 수정합니다.</h3>
<form method="post" action="/update">
	사원번호 : <input name=empno value="${emp.empno}"><br>
	사원이름 : <input name=ename value="${emp.ename}"><br>
	직급 : <input name=job value="${emp.job}"><br>
	상사 : <input name=mgr value="${emp.mgr}"><br>
	입사일 : <input name=hiredate value="${emp.hiredate}"><br>
	부서번호 : <input name=deptno "${emp.deptno}"><br>
	<input type="submit" value="update">
</form>
</body>
</html>
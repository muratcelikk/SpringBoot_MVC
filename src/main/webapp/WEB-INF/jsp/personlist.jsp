<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css"/>
</head>

<body>
<h1>Person List</h1>
<br/><br/>
<div>
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach  items="${persons}" var ="person">
			<tr>
				<td>${person.firstName}</td>
				<td>${person.lastName}</td>
			</tr>
		</c:forEach>
	</table>
</div>
</body>

</html>

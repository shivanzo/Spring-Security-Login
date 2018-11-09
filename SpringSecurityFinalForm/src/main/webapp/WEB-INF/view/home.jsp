<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
	<title>Shivan </title>
</head>
<body>
	<h1>Welcome to Goa</h1>
	
	
	<hr>
		
		<p>
			User: <security:authentication property="principal.username"/>
			<br><br>
			Role(s): <security:authentication property="principal.authorities"/>
		</p>
	
	</hr>
	
	<hr>
	
	<security:authorize access="hasRole('MANAGER')">
	<!-- Add a link to point to /leaders.... this is for the managers -->
	
	<p>
		<a href="/SpringSecurityFinalForm/leaders">Leadership Meeting</a>
		(Only for managers)
	
	</p>
	
	</security:authorize>
	
	<hr>
	
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="/SpringSecurityFinalForm/systems">IT Systems meeting</a>
		(Only for Admin Peoples)
	
	</p>
	</security:authorize>
	
	<form:form action="/SpringSecurityFinalForm/logout" method="POST">
	
		<input type="submit" value="Logout" />
	</form:form>
</body>

</html>
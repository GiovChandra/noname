<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="/css/style.css">
<title>Spring MVC UPDATE USER</title>
</head>
<body>



<form:form id="formpost" modelAttribute="user" action ="/update" method="put">

	<form:hidden path="id"/>

		<table class ="kontent_tb">


		<tr>
	<td>
	<h3>Name</h3>
	</td>
	<td>
	:
	</td>
	
	<td>
	<form:input type="text" path="name"/>
	
	</td>
	
	<td>
	<h3>Address</h3>
	</td>
	
	<td>
	:
	</td>
	<td>
	<form:input type="text" path="address"/>
	</td>
	
	<td>
	<h3>Email</h3>
	</td>
	
	<td>
	:
	</td>
	
	
	<td>
	<form:input type="text" path="email"/>
	</td>
	
	
	<td>
	<h3>Phone</h3>
	</td>
	
	<td>
	:
	</td>
	
	<td>
	<form:input type="text" path="phone"/>
	</td>
	
	<td>
	<h3>Age</h3>
	</td>
	
	<td>
	:
	</td>
	
	<td>
	<form:input type="text" path="age"/>
	</td>
	
</tr>



</table>

<input type="submit" value= "Update"/>

</form:form>



</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="/WEB-INF/css/style.css"/>

<script type="text/javascript" src="/js/jquery.js"></script> 
<script type="text/javascript" src="/js/jquery-ui.js"></script> 
<title>Spring MVC Tambah User</title>
</head>
<body>
	<form:form id="formpost" modelAttribute="user" action="/add" method="post">
		<table class="kontent_tb">
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
			</tr>
			<tr>
				<td>
					<h3>Address</h3>
				</td>
				<td>
					:
				</td>
				<td>
					<form:input type="text" path="address"/>
				</td>
			</tr>
			<tr>
				<td>
					<h3>Email</h3>
				</td>
				<td>
					:
				</td>
				<td>
					<form:input type="text" path="email"/>
				</td>
			</tr>
			<tr>
				<td>
					<h3>Phone Number</h3>
				</td>
				<td>
					:
				</td>
				<td>
					<form:input type="text" path="phone"/>
				</td>
			</tr>
			<tr>
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
		<c:choose>
			<c:when test="${isFlag eq true}">
				<input type="submit" id="add" value="Tambah"/>
			</c:when>
			<c:otherwise>
				<input type="submit" id="update" value="Update"/>
			</c:otherwise>
		</c:choose>
		
	</form:form>
</body>

<script>
	jQuery("#update").on("click",function(){
		jQuery('#formpost').attr('action','/updateUser/');
		jQuery('#formpost').attr('method','put');
		jQuery('#formpost').submit();
	})
	
</script>
</html>
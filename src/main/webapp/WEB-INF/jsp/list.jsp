<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="/css/style.css"/>

<script type="text/javascript" src="/js/jquery.js"></script> 
<script type="text/javascript" src="/js/jquery-ui.js"></script> 

<title>Spring MVC</title>
</head>
<body>
	<form:form id="formpost" action="/add" method="get">
		<table class="kontent_tb">
			<tr>
				<td>Id</td>
				<td>Name</td>
				<td>Address</td>
				<td>Email</td>
				<td>Phone Number</td>
				<td>Age</td>
				<td></td>
			</tr>
			<tr>
				<c:choose>
					<c:when test="${not empty userList }">
						<c:forEach items="${userList}" var="user"> <!-- for(String user : userList) -->
						<td>
							<label>${user.id}</label>
						</td>
						<td>
							<label>${user.name}</label>
						</td>
						<td>
							<label>${user.address}</label>
						</td>
						<td>
							<label>${user.email}</label>
						</td>
						<td>
							<label>${user.phone}</label>
						</td>
						<td>
							<label>${user.age}</label>
						</td>
						<td>
							<button id="update" class="greenButton" onclick="javascript:updateClick('${user.id}')">Update</button>
							<button id="delete" class="redButton" onclick="javascript:deleteClick('${user.id}')">Delete</button>
						</td>
						</c:forEach>
						
					</c:when>
					<c:otherwise>
						<td>
							<label> User is empty</label>
						</td>
					</c:otherwise>
				
				</c:choose>
			</tr>
		</table>
		
		<input type="submit" class="blueButton" value="Tambah User"/>
		
	</form:form>
</body>

<script>

	function updateClick(id){
		jQuery('#formpost').attr('action','/update/'+id);
		jQuery('#formpost').attr('method','get');
		jQuery('#formpost').submit();
	}
	
	function deleteClick(id){
		jQuery('#formpost').attr('action','/delete/'+id);
		jQuery('#formpost').attr('method','post');
		jQuery('#formpost').submit();
	}
	
	/* jQuery("#update").on("click", function(){
		jQuery('#formpost').attr('action','/update');
		jQuery('#formpost').attr('method','put');
		jQuery('#formpost').submit();
	}); */
	
	
</script>

</html>
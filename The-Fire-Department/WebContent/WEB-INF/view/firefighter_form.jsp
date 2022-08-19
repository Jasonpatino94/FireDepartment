<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<title>Save Customer</title>

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>

	<div id="container">
		<h3>Save Customer</h3>
	
		<form:form action="saveFirefighter" modelAttribute="firefighter" method="POST">
		
			<!--  need to associate this data with customerID -->
			<form:hidden path="fId" />
			
			<table>
				<tbody>
					<tr>
						<td><label>First name:</label></td>
						<td><form:input path="fFirstName" /></td>
					</tr>
				
					<tr>
						<td><label>Last name:</label></td>
						<td><form:input path="fLastName" /></td>
					</tr>
					
					<tr>
						<td><label>Rank:</label></td>
						<td><form:input path="fRanking" /></td>
					</tr>
					
					<tr>
						<td><label>Years of Service:</label></td>
						<td><form:input path="fYos" /></td>
					</tr>

					<tr>
						<td><label>Description:</label></td>
						<td><form:input path="fDescription" /></td>
					</tr>
					
					<tr>
						<td><label>Department Number:</label></td>
						<td><form:input path="fDeptNum" /></td>
					</tr>

					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
					</tr>

				
				</tbody>
			</table>
		
		
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/firefighter/list">Back to List</a>
		</p>
	
	</div>

</body>

</html>


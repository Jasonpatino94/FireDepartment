<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Certification</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>East Wiindsor Fire Department Crew</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!--  add our html table here -->
			<input type="button" value="Add Certification"
				   onclick="window.location.href='addCertificationForm'; return false;"
				   class="add-button"
			/>
		
			<table>
				<tr>
					<th>Name</th>
					<th>Description</th>
					<th>Action</th>
				</tr>
				
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCert" items="${certifications}">
				
				<c:url var="updateLink" value="/certification/showUpdateForm">
					<c:param name="cId" value="${tempCert.cId }"/>
					</c:url>
					
					<c:url var="deleteLink" value="/certification/deleteCertification">
						<c:param name="cId" value="${tempCert.cId}"/>
					</c:url>
				
					<tr>
						<td> ${tempCert.cName} </td>
						<td> ${tempCert.cDescription} </td>
						<td><a href="${updateLink}">Update</a> 
						<a href="${deleteLink}"  onclick="if (!(confirm('Are you sure you want to delete this Certification?''))) return false">Delete</a></td>
					</tr>
				
				</c:forEach>
						
			</table>
				
			
			<p>
				<a href="${pageContext.request.contextPath}/firefighter/list">Back to List</a>
			</p>
		</div>
	
	</div>
	
	
	

</body>

</html>








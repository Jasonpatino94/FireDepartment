<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<title>List Firefighters</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>East Windsor Fire Department Crew</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!--  add our html table here -->
			<input type="button" value="Add Firefighter"
				   onclick="window.location.href='addFirefighterForm'; return false;"
				   class="add-button"
			/>
		
			<table>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Rank</th>
					<th>Years Of service</th>
					<th>Description</th>
					<th>Department Number</th>
					<th>Certifications</th>
					<th>Action</th>
				</tr>
				
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempFirefighter" items="${firefighters}">
						<c:url var="updateLink" value="/firefighter/showUpdateForm">
							<c:param name="fId" value="${tempFirefighter.fId }"/>
						</c:url>
						
						<c:url var="deleteLink" value="/firefighter/deleteFirefighter">
							<c:param name="fId" value="${tempFirefighter.fId }"/>
						</c:url>
					
						<tr>
							<td> ${tempFirefighter.fFirstName} </td>
							<td> ${tempFirefighter.fLastName} </td>
							<td> ${tempFirefighter.fRanking} </td>
							<td> ${tempFirefighter.fYos} </td>
							<td> ${tempFirefighter.fDescription} </td>
							<td> ${tempFirefighter.fDeptNum}</td>
							<td>
								<ul><c:forEach items="${certificates}" var="certification">
									<c:if test="${tempFirefighter.fId == certification.key}">
										<c:forEach items="${certification.value}" var="cert">
											<li><a href="#">${cert.cName}</a></li>
										</c:forEach>
									</c:if>
								</c:forEach></ul>
							</td>
							<td>
							<a href="${updateLink}">Update</a>
							<a href="${deleteLink}" onclick="if (!(confirm('Are you sure you want to delete this?'))) return false">Delete</a>
							</td>
						</tr>
				</c:forEach>
						
			</table>
				
		</div>
		<p>
			<a href="${pageContext.request.contextPath}/firefighter/list">Back to List</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/certification/list">Certificates</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/firefighter/showCertToFF">Add a Certificate to a Firefighter</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/api/list">B2B</a>
		</p>
	</div>
	

</body>

</html>








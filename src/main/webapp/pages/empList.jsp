<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html>
<head>
<title>CRUD</title>
<link href="styles/site.css" rel="stylesheet" />
</head>

<header>
	<h1 align="center">Spring Data Web MVC App</h1>
	<p align="left">
		<button>
			<a href="listEmps"><font color="Orange"><b>Employees</b></font></a>
		</button>
		<button>
			<a href="addEmp"><font color="Green"><b>Add New Record</b></font></a>
		</button>
		<button>
			<a href="updateEmp"><font color="pink"><b>Update
						Record</b></font></a>
		</button>
		<button>
			<a href="get"><font color="Brown"><b>Get Record</b></font></a>
		</button>
		<button>
			<a href="deleteEmp"><font color="Red"><b>Delete Record</b></font></a>
		</button>
	</p>
</header>


<body background="bg1.jpg" style="width: 100%; height: 100%">
	<section background="bg3.jpg">
		<h3 align="center">List Of Employees</h3>
		<c:choose>
			<c:when test="${emps eq null or emps.size() eq 0 }">
				<h4>No Records</h4>
			</c:when>
			<c:otherwise>
				<p align="center">
				<table>
					<tr>
						<th><b>Emp#</th>
						<th><b>Name</th>
						<th><b>Salary</th>
						<th><b>Date Of Joining</b></th>
					</tr>
					<c:forEach var="emp" items="${emps }">
						<tr>
							<td><b>${emp.empId }</td>
							<td><b>${emp.name }</td>
							<td><b>${emp.salary }</td>
							<td><b>${emp.dateOfJoining }</td>
						</tr>
					</c:forEach>
				</table>
				</p>
			</c:otherwise>
		</c:choose>
	</section>
	<footer align="right">@Copy Rights Reserved </footer>
</body>

</html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>CRUD</title>
<link href="styles/site.css" rel="stylesheet" />
</head>

<header>
	<h1>Spring Data Web MVC App</h1>
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
<body background="bg4.jpg">
	<section>


		<form:form action="addEmp" method="post" modelAttribute="emp">

			<h3 align="center">
				<font color="green">Add Employee</font>
			</h3>
			<p align="center">
			<table>
				<tr>
					<td align="center"><font color="Red"><b> Employee
								Name</b></font></td>
					<td><form:input path="name" required="requried" /></td>
				</tr>
				<tr>
					<td align="center"><font color="Red"><b> Employee
								Salary</b></font></td>
					<td><form:input path="salary" type="decimal"
							required="requried" /></td>
				</tr>
				<tr>
					<td align="center"><font color="Red"><b>Date Of
								Joining</b></font></td>
					<td><form:input path="dateOfJoining" type="date"
							required="requried" /></td>
				</tr>
				<tr>
					<td colspan="2"><button>
							<font color="blue"><b>Add</b></font>
						</button></td>
				</tr>
			</table>
			</p>
		</form:form>

	</section>
	<footer> </footer>
</body>
</html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>CRUD</title>
<link href="styles/site.css" rel="stylesheet" />
</head>
<body>
	<header>
		<h1>Spring Data Web MVC App</h1>
		<p align="left">

			<a href="listEmps"><button>
					<font color="Orange"><b>Employees</b></font>
				</button>
				<button></a> <a href="addEmp"><font color="Blue"><b>Add
						New Record</b></font></a>
			</button>
			<button>
				<a href="updateEmp"><font color="Green"><b>Update
							Record</b></font></a>
			</button>
			<button>
				<a href="deleteEmp"><font color="Red"><b>Delete
							Record</b></font></a>
			</button>

			<button>
				<a href="get"><font color="Brown"><b>Get Record</b></font></a>
			</button>
		</p>
	</header>
	<section align="center">
		<h3>Add Employee</h3>
		<form:form action="/updateEmp" method="post" modelAttribute="emp">
			<table>

				<tr>
					<td>id</td>
					<td><form:input path="empId" required="requried" /></td>
				</tr>

				<tr>
					<td>Name</td>
					<td><form:input path="name" required="requried" /></td>
				</tr>
				<tr>
					<td>Salary</td>
					<td><form:input path="salary" type="decimal"
							required="requried" /></td>
				</tr>
				<tr>
					<td>Date Of Joining</td>
					<td><form:input path="dateOfJoining" type="date"
							required="requried" /></td>
				</tr>
				<tr>
					<td colspan="2"><button>Add</button></td>
				</tr>
			</table>
		</form:form>
	</section>
	<footer> </footer>
</body>
</html>
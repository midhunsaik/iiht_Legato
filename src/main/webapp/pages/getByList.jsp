<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
	<section>
		<h3>List Of Employees</h3>
		<a href="addEmp">Add New Record</a> <a href="home">Go Back to Home</a>

		<table>
			<tr>
				<th>Emp</th>
				<th>Name</th>
				<th>Salary</th>
				<th>Date Of Joining</th>
			</tr>

			<tr>
				<td>${emp.empId }</td>
				<td>${emp.name }</td>
				<td>${emp.salary }</td>
				<td>${emp.dateOfJoining }</td>
			</tr>
		</table>

	</section>
	<footer> </footer>
</body>
</html>
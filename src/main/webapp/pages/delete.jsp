<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<title>CRUD</title>
<link href="styles/site.css" rel="stylesheet" />
</head>
<body background="bg5.jpg">
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
		<h3>Add Employee</h3>
		<form action="/delete" method="get">
			<table>

				<tr>
					<td>id</td>
					<td><input type="number" name="id" /></td>
				</tr>


				<tr>
					<td colspan="2"><button>delete</button></td>
				</tr>
			</table>
		</form>
	</section>
	<footer> </footer>
</body>
</html>
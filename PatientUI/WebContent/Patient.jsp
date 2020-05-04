<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Patient Management</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/Patient.js"></script>
</head>
<body>
	<h2 style="color: #0D3660;">
		<center>Patient Management</center>
	</h2>
	<hr>
	<div class="container">
		<div class="row">
			<div class="col-md-4">

				<h3 id="heading" style="color: #0D3660;">Create Patient</h3>
				
				
				<form id="formPatient" name="formPatient">
					<b>NIC</b> <input id="PatientNIC" name="PatientNIC" type="text"
						class="form-control form-control-sm" placeholder="NIC"> <br>

					<b>First Name</b> <input id="PatientFName" name="PatientFName"
						type="text" class="form-control form-control-sm"
						placeholder="First Name"> <br> <b>Last Name</b> <input
						id="PatientLName" name="PatientLName" type="text"
						class="form-control form-control-sm" placeholder="Last Name">
					<br> <b>Gender</b> <select
						class="form-control form-control-sm" id='PatientGender'
						name="PatientGender">
						<option selected value=''>Gender</option>
						<option value='Male'>Male</option>
						<option value='Female'>Female</option>

					</select> <br> <b>Contact Number</b><input id="PatientPhone"
						name="PatientPhone" type="number"
						class="form-control form-control-sm" placeholder="Contact Number">
					<br> <b>Blood Group</b> <select
						class="form-control form-control-sm" id='PatientBloodGroup'
						name="PatientBloodGroup">
						<option selected value=''>Blood Group</option>
						<option value='AP'>A+</option>
						<option value='OP'>O+</option>
						<option value='BP'>B+</option>
						<option value='ABP'>AB+</option>
						<option value='A-'>A-</option>
						<option value='O-'>O-</option>
						<option value='B-'>B-</option>
						<option value='AB-'>AB-</option>

					</select><br> <b>Marital Status</b> <select
						class="form-control form-control-sm" id='PatientMaritalStatus'
						name="PatientMaritalStatus">
						<option selected value=''>Marital Status</option>
						<option value='Single'>Single</option>
						<option value='Married'>Married</option>

					</select> <br> <b>Address Line 1</b> <input id="Patient_Add_Line2"
						name="Patient_Add_Line2" type="text"
						class="form-control form-control-sm" placeholder="Address Line 1">
					<br> <b>Address Line 2</b> <input id="Patient_Add_Line3"
						name="Patient_Add_Line3" type="text"
						class="form-control form-control-sm" placeholder="Address Line 2">
					<br> <b>City</b> <input id="Patient_Add_City"
						name="Patient_Add_City" type="text"
						class="form-control form-control-sm" placeholder="City"> <br>


					<b>Date of Birth</b> <input id="PatientDOB_year"
						name="PatientDOB_year" type="number"
						class="form-control form-control-sm" placeholder="Year"> <br>

					<select class="form-control form-control-sm" id='PatientDOB_month'
						name="PatientDOB_month">
						<option selected value=''>Month</option>
						<option value='January'>January</option>
						<option value='February'>February</option>
						<option value='March'>March</option>
						<option value='April'>April</option>
						<option value='May'>May</option>
						<option value='June'>June</option>
						<option value='July'>July</option>
						<option value='August'>August</option>
						<option value='September'>September</option>
						<option value='October'>October</option>
						<option value='November'>November</option>
						<option value='December'>December</option>

					</select><br> <input id="PatientDOB_day" name="PatientDOB_day"
						type="number" class="form-control form-control-sm"
						placeholder="Date"> <br> <b>Email</b><input
						id="PatientEmail" name="PatientEmail" type="email"
						class="form-control form-control-sm" placeholder="Email">
					<br> <b>Username</b><input id="PatientUsername"
						name="PatientUsername" type="text"
						class="form-control form-control-sm" placeholder="Username">
					<br> <b>Password</b><input id="PatientPassword"
						name="PatientPassword" type="password"
						class="form-control form-control-sm" placeholder="Password">
					<br>




					<center>
						<input id="btnSave" name="btnSave" type="button" value="Save"
							class="btn btn-primary"> <input type="hidden"
							id="hidItemIDSave" name="hidItemIDSave" value="">
					</center>

				</form>
				
				<br>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>



			</div>
			<div class="col-md-8">

				<div class="container">
					<h3 style="color: #0D3660;">Patient Table</h3>

					<table class="table table-striped" id="patientTable">
						<thead>
							<tr>
								<th>PID</th>
								<th>NIC</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Gender</th>
								<th>Phone</th>
								<th>Blood Group</th>
								<th>Marital Status</th>
								<th>Address Line 1</th>
								<th>Address Line 2</th>
								<th>City</th>
								<th>DOB_Year</th>
								<th>DOB_Month</th>
								<th>DOB_Date</th>
								<th>Email</th>
								<th>Username</th>
								<th>Password</th>
							</tr>
						</thead>
						<tbody>

						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>



</html>
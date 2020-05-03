<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="Views/bootstrap.min.css">
<script src="Components/jquery-3.4.1.min.js"></script>
<script src="Components/Patient.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4">

				<h1 id="heading">Create Schedule</h1>
				<form id="formPatient" name="formPatient">
					PatientNIC: <input id="PatientNIC" name="PatientNIC" type="text"
						class="form-control form-control-sm"> <br>
					PatientFName: <input id="PatientFName" name="PatientFName"
						type="text" class="form-control form-control-sm"> <br>
					PatientLName: <input id="PatientLName" name="PatientLName"
						type="text" class="form-control form-control-sm"> <br>
					Gender: <select class="form-control form-control-sm"
						id='PatientGender' name="PatientGender">
						<option selected value=''>Gender</option>
						<option value='Male'>Male</option>
						<option value='Female'>Female</option>

					</select> PatientPhone:<input id="PatientPhone" name="PatientPhone"
						type="number" class="form-control form-control-sm"> <br>

					PatientBloodGroup: <select class="form-control form-control-sm"
						id='PatientBloodGroup' name="PatientBloodGroup">
						<option selected value=''>Blood Group</option>
						<option value='AP'>A+</option>
						<option value='OP'>O+</option>
						<option value='BP'>B+</option>
						<option value='ABP'>AB+</option>
						<option value='AN'>A-</option>
						<option value='ON'>O-</option>
						<option value='BN'>B-</option>
						<option value='ABN'>AB-</option>

					</select> PatientMaritalStatus: <select class="form-control form-control-sm"
						id='PatientMaritalStatus' name="PatientMaritalStatus">
						<option selected value=''>Marital Status</option>
						<option value='Single'>Single</option>
						<option value='Married'>Married</option>

					</select> Patient_Add_Line1: <input id="Patient_Add_Line1"
						name="Patient_Add_Line1" type="text"
						class="form-control form-control-sm"> <br>

					Patient_Add_Line2: <input id="Patient_Add_Line2"
						name="Patient_Add_Line2" type="text"
						class="form-control form-control-sm"> <br>

					Patient_Add_Line3: <input id="Patient_Add_Line3"
						name="Patient_Add_Line3" type="text"
						class="form-control form-control-sm"> <br>

					Patient_Add_City: <input id="Patient_Add_City"
						name="Patient_Add_City" type="text"
						class="form-control form-control-sm"> <br>



					PatientDOB_year:<input id="PatientDOB_year" name="PatientDOB_year"
						type="number" class="form-control form-control-sm"> <br>

					PatientDOB_month: <select class="form-control form-control-sm"
						id='PatientDOB_month' name="PatientDOB_month">
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

					</select> PatientDOB_day:<input id="PatientDOB_day" name="PatientDOB_day"
						type="number" class="form-control form-control-sm"> <br>


					PatientEmail:<input id="PatientEmail" name="PatientEmail"
						type="email" class="form-control form-control-sm"> <br>

					PatientUsername:<input id="PatientUsername" name="PatientUsername"
						type="text" class="form-control form-control-sm"> <br>

					PatientPassword:<input id="PatientPassword" name="PatientPassword"
						type="password" class="form-control form-control-sm"> <br>







					<br> <input id="btnSave" name="btnSave" type="button"
						value="Save" class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
				</form>
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
				<br>



			</div>
			<div class="col-md-8">

				<div class="container">
					<h2>Patient Table</h2>

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
								
								<th>Address Line 2</th>
								<th>Address Line 3</th>
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
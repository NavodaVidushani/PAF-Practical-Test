$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
	refresh();
});

// SAVE ============================================
/*
$(document).on("click", "#btnSave", function(event) {
	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form validation-------------------
	var status = validateItemForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

	// If valid------------------------
	$("#formItem").submit();

});
*/

//SAVE ============================================
$(document)
		.on(
				"click",
				"#btnSave",
				function(event) {
					// Clear alerts---------------------
					$("#alertSuccess").text("");
					$("#alertSuccess").hide();
					$("#alertError").text("");
					$("#alertError").hide();
					// Form validation-------------------
					var status = validateItemForm();
					if (status != true) {
						$("#alertError").text(status);
						$("#alertError").show();
						return;
					}

					var formObj = $("#formPatient")
					var patient = {}
					
					patient["PatientNIC"] = formObj.find("#PatientNIC").val().trim()
					patient["PatientFName"] = formObj.find("#PatientFName").val().trim()
					patient["PatientLName"] = formObj.find("#PatientLName").val().trim()
					patient["PatientGender"] = formObj.find("#PatientGender").val().trim()
					patient["PatientPhone"] = formObj.find("#PatientPhone").val().trim()
					patient["PatientBloodGroup"] = formObj.find("#PatientBloodGroup").val().trim()
					patient["PatientMaritalStatus"] = formObj.find("#PatientMaritalStatus").val().trim()
					patient["Patient_Add_Line1"] = formObj.find("#Patient_Add_Line1").val().trim()
					patient["Patient_Add_Line2"] = formObj.find("#Patient_Add_Line2").val().trim()
					patient["Patient_Add_Line3"] = formObj.find("#Patient_Add_Line3").val().trim()
					patient["Patient_Add_City"] = formObj.find("#Patient_Add_City").val().trim()
					patient["PatientDOB_year"] = formObj.find("#PatientDOB_year").val().trim()
					patient["PatientDOB_month"] = formObj.find("#PatientDOB_month").val().trim()
					patient["PatientDOB_day"] = formObj.find("#PatientDOB_day").val().trim()
					patient["PatientEmail"] = formObj.find("#PatientEmail").val().trim()	
					patient["PatientUsername"] = formObj.find("#PatientUsername").val().trim()
					patient["PatientPassword"] = formObj.find("#PatientPassword").val().trim()
					
						
						
					var type = ($("#hidItemIDSave").val() == "") ? "POST"
							: "PUT";
					serviceUrl = "http://localhost:8080/PatientService/PatientService/Patients"
					if (type == "PUT") {
						serviceUrl = "http://localhost:8080/PatientService/PatientService/Patients/"
								+ $("#hidItemIDSave").val().trim()
					}
					$.ajax({
						url : serviceUrl,
						type : type,
						data : JSON.stringify(schedule),
						contentType : "application/json",
						beforeSend : function(xhr) {
							xhr.setRequestHeader("Authorization", "Basic "
									+ btoa("admin" + ":" + "admin"));
						},
						complete : function(response, status) {
							onItemSaveComplete(response.responseText, status);
						}
					});
				});




// UPDATE==========================================
/*$(document).on(
		"click",
		".btnUpdate",
		function(event) {
			$("#hidItemIDSave").val(
					$(this).closest("tr").find('#hidItemIDUpdate').val());
			$("#itemCode").val($(this).closest("tr").find('td:eq(0)').text());
			$("#itemName").val($(this).closest("tr").find('td:eq(1)').text());
			$("#itemPrice").val($(this).closest("tr").find('td:eq(2)').text());
			$("#itemDesc").val($(this).closest("tr").find('td:eq(3)').text());
		});

*/


//UPDATE==========================================
$(document)
		.on(
				"click",
				".btnUpdate",
				function(event) {
					$("#heading").text("Update Patient")
					$("#hidItemIDSave").val(
							$(this).closest("tr").find('#hidItemIDUpdate')
									.val());
					
					$("#PatientNIC").val(
							$(this).closest("tr").find('td:eq(0)').text());
					$("#PatientFName").val(
							$(this).closest("tr").find('td:eq(1)').text());
					$("#PatientLName").val(
							$(this).closest("tr").find('td:eq(2)').text());
					$("#PatientGender").val(
							$(this).closest("tr").find('td:eq(3)').text());
					$("#PatientPhone")
							.val($(this).closest("tr").find('td:eq(4)').text());
					$("#PatientBloodGroup").val(
							$(this).closest("tr").find('td:eq(5)').text());
					$("#PatientMaritalStatus").val(
							$(this).closest("tr").find('td:eq(6)').text());
					$("#Patient_Add_Line1").val(
							$(this).closest("tr").find('td:eq(7)').text());
					$("#Patient_Add_Line2").val(
							$(this).closest("tr").find('td:eq(8)').text());
					$("#Patient_Add_Line3")
							.val($(this).closest("tr").find('td:eq(9)').text());
					$("#Patient_Add_City").val(
							$(this).closest("tr").find('td:eq(10)').text());
					$("#PatientDOB_year").val(
							$(this).closest("tr").find('td:eq(11)').text());
					$("#PatientDOB_month").val(
							$(this).closest("tr").find('td:eq(12)').text());
					$("#PatientDOB_day").val(
							$(this).closest("tr").find('td:eq(13)').text());
					$("#PatientEmail")
							.val($(this).closest("tr").find('td:eq(14)').text());
					
					$("#PatientUsername")
					.val($(this).closest("tr").find('td:eq(15)').text());
					
					$("#PatientPassword")
					.val($(this).closest("tr").find('td:eq(16)').text());
			
				});

$(document)
		.on(
				"click",
				".btnRemove",
				function(event) {
					var r = confirm("Do you want to delete this record");
					if (r == true) {
						serviceUrl = "http://localhost:8080/PatientService/PatientService/Patients/"
								+ $(this).data("PatientID")
						$.ajax({
							url : serviceUrl,
							type : "DELETE",
							beforeSend : function(xhr) {
								xhr.setRequestHeader("Authorization", "Basic "
										+ btoa("admin" + ":" + "admin"));
							},
							complete : function(response, status) {
								onItemDeleteComplete(response.responseText,
										status);
								console.log(status)
							}

						});
					}
				});



// CLIENTMODEL=========================================================================
function validateItemForm() {
	// NIC
	if ($("#PatientNIC").val().trim() == "") {
		return "Insert NIC.";
	}

	// First NAME
	if ($("#PatientFName").val().trim() == "") {
		return "Insert First Name.";
	}

	// Last NAME
	if ($("#PatientLName").val().trim() == "") {
		return "Insert Last Name.";
	}
	
	// Gender
	if ($("#PatientGender").val().trim() == "") {
		return "Select a Gender.";
	}

	// Phone
	if ($("#PatientPhone").val().trim() == "") {
		return "Insert Phone Number.";
	}
	
	
	// is numerical value
	var tmpPhone = $("#PatientPhone").val().trim();
	if (!$.isNumeric(tmpPhone)) {
		return "Invalid Phone Number.";
	}
	
	// PatientBloodGroup
	if ($("#PatientBloodGroup").val().trim() == "") {
		return "Select a Blood Group.";
	}
	
	// PatientMaritalStatus
	if ($("#PatientMaritalStatus").val().trim() == "") {
		return "Select your civil state.";
	}


	
	
	// Patient_Add_Line1
	if ($("#Patient_Add_Line1").val().trim() == "") {
		return "Insert Address Line 1.";
	}

	// Patient_Add_Line2
	if ($("#Patient_Add_Line2").val().trim() == "") {
		return "Insert Address Line 2.";
	}

	// Patient_Add_Line3
	if ($("#Patient_Add_Line3").val().trim() == "") {
		return "Insert Address Line 3.";
	}

	// Patient_Add_City
	if ($("#Patient_Add_City").val().trim() == "") {
		return "Insert City.";
	}
	
	
	
	// PatientDOB_year
	if ($("#PatientDOB_year").val().trim() == "") {
		return "Insert DOB year.";
	}

	// PatientDOB_month
	if ($("#PatientDOB_month").val().trim() == "") {
		return "Select DOB month.";
	}

	// PatientDOB_day
	if ($("#PatientDOB_day").val().trim() == "") {
		return "Insert DOB date.";
	}
	

	// Email
	if ($("#PatientEmail").val().trim() == "") {
		return "Insert Email.";
	}

	// Username
	if ($("#PatientUsername").val().trim() == "") {
		return "Insert Username.";
	}

	// Password
	if ($("#PatientPassword").val().trim() == "") {
		return "Insert Password.";
	}

	
	
	return true;
}



function onItemSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidItemIDSave").val("");
	$("#formPatient")[0].reset();
	$("#heading").text("Create Patients");
	refresh();

}


function onItemDeleteComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divPatientGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
	refresh()
}



function readPatient(data) {
	$("#patientTable tbody").empty();
	var content = ""
	$
			.each(
					data,
					function(index, obj) {
						content += "<tr><td><input id='hidItemIDUpdate' name='hidItemIDUpdate' type='hidden' value='" + obj["PatientID"] + "'>" 
								+ obj["PatientNIC"] + "</td>";
						content += "<td>"
								+ obj["PatientFName"] + "</td><td>"
								+ obj["PatientLName"] + "</td><td>"
								+ obj["PatientGender"] + "</td><td>" 
								+ obj["PatientPhone"] + "</td><td>" 
								+ obj["PatientBloodGroup"] + "</td><td>"
								+ obj["PatientMaritalStatus"] + "</td><td>"
								+ obj["Patient_Add_Line1"] + "</td><td>"
								+ obj["Patient_Add_Line2"] + "</td><td>"
								+ obj["Patient_Add_Line3"] + "</td><td>" 
								+ obj["Patient_Add_City"] + "</td><td>" 
								+ obj["PatientDOB_year"] + "</td><td>"
								+ obj["PatientDOB_month"] + "</td><td>"
								+ obj["PatientDOB_day"] + "</td><td>"
								+ obj["PatientEmail"] + "</td><td>"
								+ obj["PatientUsername"] + "</td><td>" 
								+ obj["PatientPassword"] + "</td>" 
								

						content += "<td><input name='btnUpdate' type='button' value='Update' class='btnUpdate btn btn-secondary'></td>"
								+ "<td><input name='btnRemove' type='button' value='Remove' class='btnRemove btn btn-danger' data-PatientID='"
								+ obj["PatientID"] + "'>" + "</td></tr>";
					});

	$("#patientTable tbody").append(content);
}


function refresh() {

	serviceUrl = "http://localhost:8080/PatientService/PatientService/Patients"
	$.ajax({
		dataType : 'json',
		url : serviceUrl,
		beforeSend : function(xhr) {
			xhr.setRequestHeader("Authorization", "Basic "
					+ btoa("admin" + ":" + "admin"));
		},
		success : function(data) {
			viewSchedules(data)
		}
	});

}
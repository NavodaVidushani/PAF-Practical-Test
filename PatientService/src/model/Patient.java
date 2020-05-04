package model;

import java.sql.*;

import java.util.ArrayList;
import java.util.List;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.glassfish.jersey.client.authentication.HttpAuthenticationFeature;

import com.google.gson.JsonObject;

import beans.PatientBean;
import util.DBConnection;

public class Patient {

	// Insert a patient
	public String insertPatient(PatientBean patient) {
		String output = "";
		try {
			Connection con = DBConnection.connect();
			if (con == null) {
				return "Error while connecting to the database for inserting.";
			}
			// create a prepared statement
			String query = " insert into patient"
					+ "(PatientID,PatientNIC,PatientFName,PatientLName,PatientGender,PatientPhone,PatientBloodGroup,PatientMaritalStatus,Patient_Add_Line2,Patient_Add_Line3,Patient_Add_City,PatientDOB_year,PatientDOB_month,PatientDOB_day,PatientEmail,PatientUsername,PatientPassword)"
					+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement preparedStmt = con.prepareStatement(query);

			// binding values
			preparedStmt.setInt(1, 0);
			preparedStmt.setString(2, patient.getPatientNIC());
			preparedStmt.setString(3, patient.getPatientFName());
			preparedStmt.setString(4, patient.getPatientLName());
			preparedStmt.setString(5, patient.getPatientGender());
			preparedStmt.setString(6, patient.getPatientPhone());
			preparedStmt.setString(7, patient.getPatientBloodGroup());
			preparedStmt.setString(8, patient.getPatientMaritalStatus());
			
			preparedStmt.setString(9, patient.getPatient_Add_Line2());
			preparedStmt.setString(10, patient.getPatient_Add_Line3());
			preparedStmt.setString(11, patient.getPatient_Add_City());
			preparedStmt.setInt(12, Integer.parseInt(patient.getPatientDOB_year()));
			preparedStmt.setString(13, patient.getPatientDOB_month());
			preparedStmt.setInt(14, Integer.parseInt(patient.getPatientDOB_day()));
			preparedStmt.setString(15, patient.getPatientEmail());
			preparedStmt.setString(16, patient.getPatientUsername());
			preparedStmt.setString(17, patient.getPatientPassword());

			// execute the statement
			preparedStmt.execute();

			JsonObject msg = new JsonObject();
			msg.addProperty("id", keyGen());
			msg.addProperty("username", patient.getPatientUsername());
			msg.addProperty("password", patient.getPatientPassword());
			msg.addProperty("role", "patient");

			HttpAuthenticationFeature feature = HttpAuthenticationFeature.basic("admin", "admin");
			Client client = ClientBuilder.newBuilder().register(feature).build();
			WebTarget webTarget = client.target("http://localhost:8080/AuthService/AuthService").path("users");
			Invocation.Builder invocationBuilder = webTarget.request(MediaType.APPLICATION_JSON);
			Response response = invocationBuilder.post(Entity.entity(msg.toString(), MediaType.APPLICATION_JSON));

			con.close();
			output = "{\"status\":\"success\"}";

		} catch (Exception e) {
			output = "{\"status\":\"error\"}";
			System.err.println(e.getMessage());
		}
		return output;
	}

	// View list of patients
	public List<PatientBean> readPatient() {

		return readPatient(0);

	}

	// View a patient identified by id
	public PatientBean readPatientById(int id) {
		List<PatientBean> list = readPatient(id);
		if (!list.isEmpty()) {
			return list.get(0);
		}
		return null;
	}

	// View method
	public List<PatientBean> readPatient(int id) {
		List<PatientBean> patientList = new ArrayList<>();
		try {
			Connection con = DBConnection.connect();
			if (con == null) {
				System.out.println("Error while connecting to the database for reading.");
				return patientList;
			}

			String query;
			if (id == 0) {
				query = "select * from patient";
			} else {
				query = "select * from patient where PatientID=" + id;
			}
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery(query);
			// iterate through the rows in the result set
			while (rs.next()) {
				PatientBean patient = new PatientBean(rs.getInt("PatientID"), rs.getString("PatientNIC"),
						rs.getString("PatientFName"), rs.getString("PatientLName"), rs.getString("PatientGender"),
						rs.getString("PatientPhone"), rs.getString("PatientBloodGroup"),
						rs.getString("PatientMaritalStatus"), 
						rs.getString("Patient_Add_Line2"), rs.getString("Patient_Add_Line3"),
						rs.getString("Patient_Add_City"), Integer.toString(rs.getInt("PatientDOB_year")),
						rs.getString("PatientDOB_month"), Integer.toString(rs.getInt("PatientDOB_day")),
						rs.getString("PatientEmail"), rs.getString("PatientUsername"), rs.getString("PatientPassword"),
						query);

				patientList.add(patient);
			}
			con.close();

		} catch (Exception e) {
			System.out.println("Error while reading the patients.");
			System.err.println(e.getMessage());
		}
		return patientList;
	}

	// Update a patient
	public String updatePatient(PatientBean patient) {
		String output = "";
		try {
			Connection con = DBConnection.connect();
			if (con == null) {
				return "Error while connecting to the database for updating.";
			}
			// create a prepared statement
			String query = "UPDATE patient SET PatientNIC=?,PatientFName=?,PatientLName=?,PatientGender=?,PatientPhone=?,PatientBloodGroup=?,PatientMaritalStatus=?,Patient_Add_Line2=?,Patient_Add_Line3=?,Patient_Add_City=?,PatientDOB_year=?,PatientDOB_month=?,PatientDOB_day=?,PatientEmail=?,PatientUsername=?,PatientPassword=? WHERE PatientID=?";

			PreparedStatement preparedStmt = con.prepareStatement(query);

			// binding values
			preparedStmt.setString(1, patient.getPatientNIC());
			preparedStmt.setString(2, patient.getPatientFName());
			preparedStmt.setString(3, patient.getPatientLName());
			preparedStmt.setString(4, patient.getPatientGender());
			preparedStmt.setString(5, patient.getPatientPhone());
			preparedStmt.setString(6, patient.getPatientBloodGroup());
			preparedStmt.setString(7, patient.getPatientMaritalStatus());
			
			preparedStmt.setString(8, patient.getPatient_Add_Line2());
			preparedStmt.setString(9, patient.getPatient_Add_Line3());
			preparedStmt.setString(10, patient.getPatient_Add_City());
			preparedStmt.setInt(11, Integer.parseInt(patient.getPatientDOB_year()));
			preparedStmt.setString(12, patient.getPatientDOB_month());
			preparedStmt.setInt(13, Integer.parseInt(patient.getPatientDOB_day()));
			preparedStmt.setString(14, patient.getPatientEmail());
			preparedStmt.setString(15, patient.getPatientUsername());
			preparedStmt.setString(16, patient.getPatientPassword());
			preparedStmt.setInt(17, patient.getId());

			preparedStmt.execute();

			con.close();
			output = "{\"status\":\"success\"}";
		} catch (Exception e) {
			output = "{\"status\":\"error\"}";
			System.err.println(e.getMessage());
		}
		return output;
	}

	// Remove a patient
	public String deletePatient(String PatientID) {
		String output = "";
		try {
			Connection con = DBConnection.connect();
			if (con == null) {
				return "Error while connecting to the database for deleting.";
			}
			// create a prepared statement
			String query = "delete from patient where PatientID=?";
			PreparedStatement preparedStmt = con.prepareStatement(query);

			// binding values
			preparedStmt.setInt(1, Integer.parseInt(PatientID));
			// execute the statement
			preparedStmt.execute();
			con.close();
			output = "{\"status\":\"success\"}";
		} catch (Exception e) {
			output = "Error while deleting the patient.";
			output = "{\"status\":\"error\"}";
		}
		return output;
	}

	public int keyGen() {
		List<PatientBean> list;
		list = readPatient();
		int num = list.size() + 1000;
		return num;

	}

}

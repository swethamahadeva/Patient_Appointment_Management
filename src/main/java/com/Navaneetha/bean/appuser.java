package com.Navaneetha.bean;

public class appuser {
	private String patient_fname;
	private String patient_lname;
	private String patient_gender;
	private int patient_age;
	private String patient_mblno;
	private String patient_email;
	private String appointment_type;
	private String appointment_date;
	private String patient_problem;
	private int appointment_id;
	private String appointment_time;
	private String patient_address;
	private int doctor_id;
	private int patient_id;
	private String appointment_status;
	
	
	public String getpatient_fname() {
		return patient_fname;
	}
	public String getpatient_lname() {
		return patient_lname;
	}
	public String getpatient_gender() {
		return patient_gender;
	}
	public int getpatient_age() {
		return patient_age;
	}
	public String getpatient_mblno() {
		return patient_mblno;
	}
	public String getpatient_email() {
		return patient_email;
	}
	public String getappointment_type() {
		return appointment_type;
	}
	public String getappointment_date() {
		return appointment_date;
	}
	public int getappointment_id() {
		return appointment_id;
	}
	public String getappointment_time() {
		return appointment_time;
	}
	public String getpatient_problem() {
		return patient_problem;
	}
	public String getpatient_address() {
		return patient_address;
	}
	public int getdoctor_id() {
		return doctor_id;
	}
	public int getpatient_id() {
		return patient_id;
	}
	public String getappointment_status() {
		return appointment_status;
	}
	


	public void setpatient_fname(String fname) {
		this.patient_fname=fname;
	}
	public void setpatient_lname(String lname) {
		this.patient_lname=lname;
	}
	public void setpatient_gender(String gender) {
		this.patient_gender=gender;
	}
	public void setpatient_age(int age) {
		this.patient_age=age;
	}
	public void setpatient_mblno(String mblno) {
		this.patient_mblno=mblno;
	}
	public void setpatient_email(String email) {
		this.patient_email=email;
	}
	public void setappointment_type(String name) {
		this.appointment_type=name;
	}
	public void setappointment_date(String date) {
		this.appointment_date=date;
	}
	public void setappointment_id(int id) {
		this.appointment_id=id;
	}
	public void setappointment_time(String time) {
		this.appointment_time=time;
	}	
	public void setpatient_problem(String problem) {
		this.patient_problem=problem;
	}
	public void setpatient_address(String address) {
		this.patient_address=address;
	}
	public void setdoctor_id(int d_id) {
		this.doctor_id=d_id;
	}
	public void setpatient_id(int p_id) {
		this.patient_id=p_id;
	}
	public void setappointment_status(String status) {
		this.appointment_status=status;
	}
	
	
}


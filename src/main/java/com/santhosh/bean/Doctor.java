package com.santhosh.bean;
public class Doctor {
	private int d_id;
	private String d_name;
	private String d_username;
	private String d_spec;
	private String d_mblno;
	private String d_email;
	private int d_exp;
	private String d_qual;
	private String d_address;
	private String d_dept;
	private int d_Count;
	//private int dept_id;
	private int d_Pwd;
	////////////////////////////////
	private int admin_id;
	private String admin_name;
	private String admin_mblno;
	private String admin_email;
	private String admin_address;
	private int admin_pwd;
	
	
	
	public void setd_Id(int d_id) {this.d_id=d_id;}
	public void setd_Pwd(int d_Pwd) {this.d_Pwd=d_Pwd;}
	public void setd_Count(int d_Count) {this.d_Count=d_Count;}
	//public void setdept_id(int dept_id) {this.dept_id=dept_id;}
	public void setd_Exp(int d_exp) {this.d_exp=d_exp;}
	public void setd_Name(String d_name) {this.d_name=d_name;}
	public void setd_UserName(String d_username) {this.d_username=d_username;}
	public void setd_Qual(String d_qual) {this.d_qual=d_qual;}
	public void setd_Spec(String d_spec) {this.d_spec=d_spec;}
	public void setd_Dept(String d_dept) {this.d_dept=d_dept;}
	public void setd_Mblno(String d_mblno) {this.d_mblno=d_mblno;}
	public void setd_Email(String d_email) {this.d_email=d_email;}
	public void setd_Address(String d_address) {this.d_address=d_address;}
	
	
	public int getd_Id() {return this.d_id;}
	public int getd_Pwd() {return this.d_Pwd;}
	public int getd_Count() {return this.d_Count;}
	
	public int getd_Exp() {return this.d_exp;}
	public String getd_Name() {return this.d_name;}
	public String getd_UserName() {return this.d_username;}
	public String getd_Qual() {return this.d_qual;}
	public String getd_Spec() {return this.d_spec;}
	public String getd_Dept() {return this.d_dept;}
	public String getd_Mblno() {return this.d_mblno;}
	public String getd_Email() {return this.d_email;}
	public String getd_Address() {return this.d_address;}
	
	//////////////////////////////////////
	public void setadmin_id(int admin_id) {this.admin_id=admin_id;}
	public void setadmin_pwd(int admin_pwd) {this.admin_pwd=admin_pwd;}
	public void setadmin_name(String admin_name) {this.admin_name=admin_name;}
	public void setadmin_email(String admin_email) {this.admin_email=admin_email;}
	public void setadmin_address(String admin_address) {this.admin_address=admin_address;}
	public void setadmin_mblno(String admin_mblno) {this.admin_mblno=admin_mblno;}
	
	public int getadmin_id() {return this.admin_id;}
	public int getadmin_pwd() {return this.admin_pwd;}
	public String getadmin_name() {return this.admin_name;}
	public String getadmin_email() {return this.admin_email;}
	public String getadmin_address() {return this.admin_address;}
	public String getadmin_mblno() {return this.admin_mblno;}
	
	
}


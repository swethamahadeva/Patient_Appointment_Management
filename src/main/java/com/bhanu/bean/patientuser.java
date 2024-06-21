package com.bhanu.bean;
//import javax.servlet.http.*;
public class patientuser {
			
		    private int p_id;
			private String p_name;
            private String p_gender;
            private String p_mblno;
            private String p_email;
            private String p_address;
            private int p_pwd;
            //private long image;
			
			public String getp_gender() {
				return p_gender;
			}

			public void setp_gender(String gender) {
				this.p_gender = gender;
			}

			public int getp_id() {
				return p_id;
			}

			public void setp_id(int id) {
				this.p_id = id;
			}

			public String getp_mblno() {
				return p_mblno;
			}

			public void setp_mblno(String mblno) {
				this.p_mblno = mblno;
			}

			public String getp_email() {
				return p_email;
			}

			public void setp_email(String email) {
				this.p_email = email;
			}

			public String getp_address() {
				return p_address;
			}

			public void setp_address(String address) {
				this.p_address = address;
			}

			public int getp_pwd() {
				return this.p_pwd;
			}

			public void setp_pwd(int pwd) {
				this.p_pwd = pwd;
			} 

			public String getp_name() {
				return p_name;
			}

			public void setp_name(String name) {
				this.p_name = name;
			}

			
			
					
}
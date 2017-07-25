package com.jxzl.user;


import java.io.Serializable;

public class Administrator implements Serializable{

        private String aid;
        private String password;
        private String aname;
        private String asex;
        private String aphone;
        
        
        public Administrator() {
        	
		}
        
		public Administrator(String aid, String password, String aname,
				String asex, String aphone) {
			super();
			this.aid = aid;
			this.password = password;
			this.aname = aname;
			this.asex = asex;
			this.aphone = aphone;
		}
		
		
		public String getAid() {
			return aid;
		}
		public void setAid(String aid) {
			this.aid = aid;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getAname() {
			return aname;
		}
		public void setAname(String aname) {
			this.aname = aname;
		}
		public String getAsex() {
			return asex;
		}
		public void setAsex(String asex) {
			this.asex = asex;
		}
		public String getAphone() {
			return aphone;
		}
		public void setAphone(String aphone) {
			this.aphone = aphone;
		}
        
        


}

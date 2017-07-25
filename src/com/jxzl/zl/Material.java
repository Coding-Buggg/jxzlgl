package com.jxzl.zl;

import java.io.Serializable;

public class Material implements Serializable{
	    private int mid;
	    private String mname;
	    private String type;
	    private String msize;
	    private String tname;
	    private String profile;
	    private String scDate;
	    
	    
	    public Material() {
	    	
	    
	    }
	    
		public Material(int mid, String mname, String type,String msize, 
				String tname, String profile, String scDate) {
			super();
			this.mid = mid;
			this.mname = mname;
			this.type = type;
			this.msize=msize;
			this.tname = tname;
			this.profile = profile;
			this.scDate = scDate;
		}
		
		public int getMid() {
			return mid;
		}
		public void setMid(int mid) {
			this.mid = mid;
		}
		
		public String getMname() {
			return mname;
		}
		public void setMname(String mname) {
			this.mname = mname;
		}
		
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		
		public String getMsize() {
			return msize;
		}
		public void setMsize(String msize) {
			this.msize = msize;
		}
		
		
		public String getTname() {
			return tname;
		}
		public void setTname(String tname) {
			this.tname = tname;
		}
		
		public String getProfile() {
			return profile;
		}
		public void setProfile(String profile) {
			this.profile = profile;
		}
		
		public String getScDate() {
			return scDate;
		}
		public void setScDate(String scDate) {
			this.scDate = scDate;
		}
	    
	    
	   
}

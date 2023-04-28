package org.crce.interns.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="user_schema.qualification")

public class Qualification {
	
	@Id
	@Column(name="username")
	private String username;	
	@Column(name="ssc_per")
	private String ssc_per;	
	
	private String hsc_or_dip;	
	@Column(name="hsc_or_dip_per")
	private String hsc_or_dip_per;			
	private String s1_mark;			
	private String s1_max;			
	private String s1_per;			
	private String s1_res;			
	private String s1_kt;			
	private String s2_mark;			
	private String s2_max;			
	private String s2_per;			
	private String s2_res;			
	private String s2_kt;		
	private String s3_mark;			
	private String s3_max;			
	private String s3_per;			
	private String s3_res;			
	private String s3_kt;			
	private String s4_mark;			
	private String s4_max;			
	private String s4_per;			
	private String s4_res;			
	private String s4_kt;			
	private String s5_mark;			
	private String s5_max;			
	private String s5_per;			
	private String s5_res;			
	private String s5_kt;			
	private String s6_mark;			
	private String s6_max;			
	private String s6_per;			
	private String s6_res;	
	
	@Column(name="s6_kt")
	private String s6_kt;		
	private String s7_mark;			
	private String s7_max;			
	private String s7_per;			
	private String s7_res;			
	private String s7_kt;			
	private String s8_mark;			
	private String s8_max;			
	private String s8_per;			
	private String s8_res;			
	private String s8_kt;
	@Column(name="deg_per")
	private String deg_per;	
	@Column(name="deg_kt")
	private String deg_kt;	
	@Column(name="drops")
	private String drops;		
	
	
	
	public Qualification() {
		super();
	}


	public Qualification(String username, String ssc_per ,String hsc_or_dip_per, String s6_kt,String deg_per
			,String deg_kt,String drops)
    {
        this.username= username;
        this.ssc_per=ssc_per;
        this.hsc_or_dip_per=hsc_or_dip_per;
        this.s6_kt = s6_kt ;
        this.deg_per =deg_per;
        this.drops=drops;
    }
    
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSsc_per() {
		return ssc_per;
	}
	public void setSsc_per(String ssc_per) {
		this.ssc_per = ssc_per;
	}
	public String getHsc_or_dip() {
		return hsc_or_dip;
	}
	public void setHsc_or_dip(String hsc_or_dip) {
		this.hsc_or_dip = hsc_or_dip;
	}
	public String getHsc_or_dip_per() {
		return hsc_or_dip_per;
	}
	public void setHsc_or_dip_per(String hsc_or_dip_per) {
		this.hsc_or_dip_per = hsc_or_dip_per;
	}
	public String getS1_mark() {
		return s1_mark;
	}
	public void setS1_mark(String s1_mark) {
		this.s1_mark = s1_mark;
	}
	public String getS1_max() {
		return s1_max;
	}
	public void setS1_max(String s1_max) {
		this.s1_max = s1_max;
	}
	public String getS1_per() {
		return s1_per;
	}
	public void setS1_per(String s1_per) {
		this.s1_per = s1_per;
	}
	public String getS1_res() {
		return s1_res;
	}
	public void setS1_res(String s1_res) {
		this.s1_res = s1_res;
	}
	public String getS1_kt() {
		return s1_kt;
	}
	public void setS1_kt(String s1_kt) {
		this.s1_kt = s1_kt;
	}
	public String getS2_mark() {
		return s2_mark;
	}
	public void setS2_mark(String s2_mark) {
		this.s2_mark = s2_mark;
	}
	public String getS2_max() {
		return s2_max;
	}
	public void setS2_max(String s2_max) {
		this.s2_max = s2_max;
	}
	public String getS2_per() {
		return s2_per;
	}
	public void setS2_per(String s2_per) {
		this.s2_per = s2_per;
	}
	public String getS2_res() {
		return s2_res;
	}
	public void setS2_res(String s2_res) {
		this.s2_res = s2_res;
	}
	public String getS2_kt() {
		return s2_kt;
	}
	public void setS2_kt(String s2_kt) {
		this.s2_kt = s2_kt;
	}
	public String getS3_mark() {
		return s3_mark;
	}
	public void setS3_mark(String s3_mark) {
		this.s3_mark = s3_mark;
	}
	public String getS3_max() {
		return s3_max;
	}
	public void setS3_max(String s3_max) {
		this.s3_max = s3_max;
	}
	public String getS3_per() {
		return s3_per;
	}
	public void setS3_per(String s3_per) {
		this.s3_per = s3_per;
	}
	public String getS3_res() {
		return s3_res;
	}
	public void setS3_res(String s3_res) {
		this.s3_res = s3_res;
	}
	public String getS3_kt() {
		return s3_kt;
	}
	public void setS3_kt(String s3_kt) {
		this.s3_kt = s3_kt;
	}
	public String getS4_mark() {
		return s4_mark;
	}
	public void setS4_mark(String s4_mark) {
		this.s4_mark = s4_mark;
	}
	public String getS4_max() {
		return s4_max;
	}
	public void setS4_max(String s4_max) {
		this.s4_max = s4_max;
	}
	public String getS4_per() {
		return s4_per;
	}
	public void setS4_per(String s4_per) {
		this.s4_per = s4_per;
	}
	public String getS4_res() {
		return s4_res;
	}
	public void setS4_res(String s4_res) {
		this.s4_res = s4_res;
	}
	public String getS4_kt() {
		return s4_kt;
	}
	public void setS4_kt(String s4_kt) {
		this.s4_kt = s4_kt;
	}
	public String getS5_mark() {
		return s5_mark;
	}
	public void setS5_mark(String s5_mark) {
		this.s5_mark = s5_mark;
	}
	public String getS5_max() {
		return s5_max;
	}
	public void setS5_max(String s5_max) {
		this.s5_max = s5_max;
	}
	public String getS5_per() {
		return s5_per;
	}
	public void setS5_per(String s5_per) {
		this.s5_per = s5_per;
	}
	public String getS5_res() {
		return s5_res;
	}
	public void setS5_res(String s5_res) {
		this.s5_res = s5_res;
	}
	public String getS5_kt() {
		return s5_kt;
	}
	public void setS5_kt(String s5_kt) {
		this.s5_kt = s5_kt;
	}
	public String getS6_mark() {
		return s6_mark;
	}
	public void setS6_mark(String s6_mark) {
		this.s6_mark = s6_mark;
	}
	public String getS6_max() {
		return s6_max;
	}
	public void setS6_max(String s6_max) {
		this.s6_max = s6_max;
	}
	public String getS6_per() {
		return s6_per;
	}
	public void setS6_per(String s6_per) {
		this.s6_per = s6_per;
	}
	public String getS6_res() {
		return s6_res;
	}
	public void setS6_res(String s6_res) {
		this.s6_res = s6_res;
	}
	public String getS6_kt() {
		return s6_kt;
	}
	public void setS6_kt(String s6_kt) {
		this.s6_kt = s6_kt;
	}
	public String getS7_mark() {
		return s7_mark;
	}
	public void setS7_mark(String s7_mark) {
		this.s7_mark = s7_mark;
	}
	public String getS7_max() {
		return s7_max;
	}
	public void setS7_max(String s7_max) {
		this.s7_max = s7_max;
	}
	public String getS7_per() {
		return s7_per;
	}
	public void setS7_per(String s7_per) {
		this.s7_per = s7_per;
	}
	public String getS7_res() {
		return s7_res;
	}
	public void setS7_res(String s7_res) {
		this.s7_res = s7_res;
	}
	public String getS7_kt() {
		return s7_kt;
	}
	public void setS7_kt(String s7_kt) {
		this.s7_kt = s7_kt;
	}
	public String getS8_mark() {
		return s8_mark;
	}
	public void setS8_mark(String s8_mark) {
		this.s8_mark = s8_mark;
	}
	public String getS8_max() {
		return s8_max;
	}
	public void setS8_max(String s8_max) {
		this.s8_max = s8_max;
	}
	public String getS8_per() {
		return s8_per;
	}
	public void setS8_per(String s8_per) {
		this.s8_per = s8_per;
	}
	public String getS8_res() {
		return s8_res;
	}
	public void setS8_res(String s8_res) {
		this.s8_res = s8_res;
	}
	public String getS8_kt() {
		return s8_kt;
	}
	public void setS8_kt(String s8_kt) {
		this.s8_kt = s8_kt;
	}
	public String getDeg_per() {
		return deg_per;
	}
	public void setDeg_per(String deg_per) {
		this.deg_per = deg_per;
	}
	public String getDeg_kt() {
		return deg_kt;
	}
	public void setDeg_kt(String deg_kt) {
		this.deg_kt = deg_kt;
	}
	public String getDrops() {
		return drops;
	}
	public void setDrops(String drops) {
		this.drops = drops;
	}
	
}

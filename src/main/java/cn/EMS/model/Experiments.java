package cn.EMS.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="experiments")
@Table(name="experiments")
public class Experiments {
	private int id;
	private String cate;
	private String name;
	private String outline;
	private String detail;
	private String requirement;//实验要求	
	private Double credit;//学分
	private Double pay;//费用
	private String principals;//负责人
	private String url;
	private String field;
	private String frontcate;
	private int screenings;
	private String state;
	private String createtime;
	private int teachers_id;
	private String teachers_name;
	private String teachers_email;
	private	String teachers_tel;
	private String  starttime;
	private String endtime;
	private String pubexper;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column
	public String getCate() {
		return cate;
	}
	public void setCate(String cate) {
		this.cate = cate;
	}
	
	@Column
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	@Column
	public String getOutline() {
		return outline;
	}
	public void setOutline(String outline) {
		this.outline = outline;
	}
	
	@Column
	public String getDetail() {
		return detail;
	}
	public void setDetail(String detail) {
		this.detail = detail;
	}
	
	@Column
	public String getRequirement() {
		return requirement;
	}
	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}
	
	@Column
	public Double getCredit() {
		return credit;
	}
	public void setCredit(Double credit) {
		this.credit = credit;
	}
	
	@Column
	public Double getPay() {
		return pay;
	}
	public void setPay(Double pay) {
		this.pay = pay;
	}
	
	@Column
	public String getPrincipals() {
		return principals;
	}
	public void setPrincipals(String principals) {
		this.principals = principals;
	}
	
	@Column
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	@Column
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	
	@Column
	public String getFrontcate() {
		return frontcate;
	}
	public void setFrontcate(String frontcate) {
		this.frontcate = frontcate;
	}
	
	@Column
	public int getScreenings() {
		return screenings;
	}
	public void setScreenings(int screenings) {
		this.screenings = screenings;
	}
	
	@Column
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	@Column
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	
	@Column
	public int getTeachers_id() {
		return teachers_id;
	}
	public void setTeachers_id(int teachers_id) {
		this.teachers_id = teachers_id;
	}
	
	@Column
	public String getTeachers_name() {
		return teachers_name;
	}
	public void setTeachers_name(String teachers_name) {
		this.teachers_name = teachers_name;
	}
	
	@Column
	public String getTeachers_email() {
		return teachers_email;
	}
	public void setTeachers_email(String teachers_email) {
		this.teachers_email = teachers_email;
	}
	
	@Column
	public String getTeachers_tel() {
		return teachers_tel;
	}
	public void setTeachers_tel(String teachers_tel) {
		this.teachers_tel = teachers_tel;
	}
	
	@Column
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	
	@Column
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	@Column
	public String getPubexper() {
		return pubexper;
	}
	public void setPubexper(String pubexper) {
		this.pubexper = pubexper;
	}	
	
}

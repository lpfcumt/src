package cn.EMS.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



import java.io.Serializable;

@Entity(name="experiments_unjoinstudents")
@Table(name="experiments_unjoinstudents")

public class Experiments_unjoinstudents implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int experiments_id;
	private int students_id;
	private String reason;
	
	@Id
	public int getExperiments_id() {
		return experiments_id;
	}
	public void setExperiments_id(int experiments_id) {
		this.experiments_id = experiments_id;
	}
	
	@Id
	public int getStudents_id() {
		return students_id;
	}
	public void setStudents_id(int students_id) {
		this.students_id = students_id;
	}
	
	@Column
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	
	
	
	
}

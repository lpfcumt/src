package cn.EMS.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="experiments_screenings")
@Table(name="experiments_screenings")
public class Experiments_screenings implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int experiments_id;
	private int screenings;
	private String starttime;
	private String endtime;
	private int duration;//Ê±³¤
	private int needstudents;
	private int havestudents;
	private String field;
	private String state;
	
	@Id
	public int getExperiments_id() {
		return experiments_id;
	}
	public void setExperiments_id(int experiments_id) {
		this.experiments_id = experiments_id;
	}
	
	@Id
	public int getScreenings() {
		return screenings;
	}
	public void setScreenings(int screenings) {
		this.screenings = screenings;
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
	public int getDuration() {
		return duration;
	}
	
	public void setDuration(int duration) {
		this.duration = duration;
	}
	
	@Column
	public int getNeedstudents() {
		return needstudents;
	}
	public void setNeedstudents(int needstudents) {
		this.needstudents = needstudents;
	}
	
	@Column
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	
	@Column
	public int getHavestudents() {
		return havestudents;
	}
	public void setHavestudents(int havestudents) {
		this.havestudents = havestudents;
	}
	
	@Column
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	
	
	
}

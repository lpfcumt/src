package cn.EMS.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="experiments_joinstudents")
@Table(name="experiments_joinstudents")
public class Experiments_joinstudents implements Serializable{
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int rowid;
	private int experiments_id;
    private int screenings;
    private int students_id;
    private String time;
    private String state;
    
    @Id
   	@GeneratedValue(strategy=GenerationType.IDENTITY)
    public int getRowid() {
		return rowid;
	}
	public void setRowid(int rowid) {
		this.rowid = rowid;
	}
	@Column
	public int getScreenings() {
		return screenings;
	}
	public void setScreenings(int screenings) {
		this.screenings = screenings;
	}
	
	
	@Column
	public int getStudents_id() {
		return students_id;
	}
	public void setStudents_id(int students_id) {
		this.students_id = students_id;
	}
	
	   
	@Column
	public int getExperiments_id() {
			return experiments_id;
		}
	public void setExperiments_id(int experiments_id) {
			this.experiments_id = experiments_id;
		}
		
	@Column
	public String getTime() {
			return time;
	}
	public void setTime(String time) {
			this.time = time;
	}
	
	@Column
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
		
}

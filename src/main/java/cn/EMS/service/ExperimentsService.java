package cn.EMS.service;

import java.util.Date;
import java.util.List;

import cn.EMS.model.Experiments;
import cn.EMS.model.Experiments_Front;
import cn.EMS.model.Experiments_Limit;
import cn.EMS.model.Experiments_joinstudents;
import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Experiments_unjoinstudents;
import cn.EMS.model.Students;
import cn.EMS.model.Teachers;

public interface ExperimentsService extends BaseService<Experiments> {

	List<Experiments> findThis(String createtime, int teachers_id);

	List<Experiments_Front> listallfront();

	List<Experiments_Limit> listalllimit();

	List<Experiments_Front> listfront(int id);

	List<Experiments_Limit> listlimit(int id);

	List<Students> listfrontstudent(int id);

	void addfrontstudent(int experiments_id, int students_id, String reason);

	List<Experiments> listById(int id);

	List<Students> listfrontstudent1(int id);

	List<Students> listlimitstudent(int id);

	List<Students> listallstudents();

	List<Experiments_unjoinstudents> listunjoinstudentsById(int students_id, int experiments_id);

	void updatefrontstudent(int experiments_id, int students_id, String reason);

	List<Students> listunjoinstudentsById(int experiments_id);

	List<Students> listunjoinstudentsById(List<Students> listunjoinstudents);

	void updateFrontcate(String frontcate, int experiments_id);

	void addscreenings(int duration, Date endtime, int experiments_id, String field, int needstudents, int screenings,
			Date starttime, int havestudents);

	List<Experiments> listByteacherId(int teachers_id);

	List<Experiments_screenings> listScreeningsById(int id);

	List<Experiments_joinstudents> listjoinstudentsById(int experiments_id);

	List<Students> listallstudents(List<Experiments_joinstudents> experiments_joinstudents);

	List<Experiments_unjoinstudents> listoneunjoinstudentById(int id, int students_id);

	List<Experiments_joinstudents> listonejoinstudentById(int id, int students_id);

	List<Experiments_screenings> listScreeningsByStudentId(int studnets_id);

	List<Experiments> listById(List<Experiments_screenings> liststudentscreenings);

	void joinExperiments(int experiments_id, int screenings, int students_id, String time);

	void addfrontexperiment(String[] front, int id);

	void addlimitexperiment(String[] limit, int id);

	List<Experiments> listActive();

	void updateExperimentsState(int id, String state);

	List<Experiments> listunActive();

	List<Students> listStudentByScreenings(int id, int screenings);

	List<Experiments> listByState_Teacher(int teachers_id, String state);

	void addStudents(int id, int screenings, int students_id);

	void deleteStudents(int id, int screenings, int students_id);

	void updateExpriments(int id, Double double1, Double double2, String detail, String url);

	void completeExperiments(int id, String state);

	List<Experiments_joinstudents> listjoinstudentsBystudents_id(int studnets_id, String state);

	List<Experiments> listById1(List<Experiments_joinstudents> listjoin);

	List<Experiments> listById2(List<Experiments> listexperiments);

	List<Experiments_screenings> listScreeningsByStudentId(int experiments_id, int students_id);

	List<Teachers> listTeacherById(int teachers_id);

	List<Experiments_joinstudents> listjoinstudentsById_Screenings(int id, int screenings);

	List<Experiments_screenings> listScreeningsById_Screenings(int id, int screenings);

	void completeStudents(int id, int teachers_id);

	List<Experiments_joinstudents> listCompleteStudents(int id, String state);

	List<Students> getStudents(int students_id);

	List<Experiments_joinstudents> list1CompleteStudents(int id, String state);
	
	void sendEmail();

	List<Experiments> listallexperiments();
	
	void addState(int students_id,int id);

	List<Experiments_joinstudents> listjoinstudentsBystudents_id(int students_id);

	void deleteExperiments(int id);

	void pubExperiments(int id, String pubexper);

	List<Experiments> listExperimentsByStateAndTime(int teachers_id, String state, String starttime, String endtime);

	List<Students> listjoinstudentsById(int id, String state);

	List<Object[]> countPay(int id, List<Experiments> listExperiment, String cate);

}

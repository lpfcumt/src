package cn.EMS.service;

import java.util.List;

import cn.EMS.model.Students;

public interface StudentsService extends BaseService<Students> {

	Students findById(String string);

	Students findByEmail(String students_email);

	Students findByID_Password(String string, String students_password, String state);

	List<Students> listById(int students_id);

	

	List<Students> listByName(String students_name);

	void updatePassword(int students_id, String students_password, String repassword);

	void updateById(int id, String name, String email, String grade,
			String major, String school, String tel, String password, String repassword, String sex);

	void activeStudents(int id, String state);

	Students findPassword(String string, String email, String tel, String name);

	void updateEmail(int id,String email, String newemail);

	List<Students> ListActiveStudents(String state);

	List<Students> ListUnActiveStudents(String state);

	Students findById(int id);

}

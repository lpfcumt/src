package cn.EMS.dao;

import java.util.List;

import cn.EMS.model.Students;

public interface StudentsDao extends BaseDao<Students>{

	List<Students> findById(String students_id);

	

	List<Students> findByEmail(String students_email);



	List<Students> findByID_Password(String students_id, String students_password, String state);



	List<Students> listById(int students_id);



	List<Students> listByName(String students_name);



	void updatePassword(int students_id, String students_password, String newpassword);



	void updateById(int id, String name, String email, String grade,String sex,
			String major, String school, String tel, String password, String repassword);



	void activStudents(int id, String state);



	List<Students> findPassword(String id, String email, String tel, String name);



	void updateEmail(int id,String email, String newemail);



	List<Students> ListActiveStudents(String state);



	List<Students> ListUnActiveStudents(String state);



	List<Students> findById(int id);

}

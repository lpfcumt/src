package cn.EMS.service;

import java.util.List;

import cn.EMS.model.Teachers;

public interface TeachersService extends BaseService<Teachers> {

	Teachers Query(String string, String teachers_password);

	Teachers FindById(String string);

	Teachers FindByEmail(String string);

	List<Teachers> listById(int teachers_id);

	List<Teachers> listByName(String teachers_name);

	void updateTeachersById(int teachers_id, String teachers_name, String teachers_email, String teachers_password,
			String teachers_repassword, String teachers_school, String teachers_sex, String teachers_tel);

	void updatepassword(int id, String password, String newpassword);
	
	

}

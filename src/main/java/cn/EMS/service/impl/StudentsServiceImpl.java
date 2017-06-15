package cn.EMS.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.EMS.model.Students;
import cn.EMS.service.StudentsService;
@Service("studentsService")
public class StudentsServiceImpl extends BaseServiceImpl<Students>  implements StudentsService{

	@Override
	public Students findById(String students_id) {
		// TODO Auto-generated method stub
		if(!studentsDao.findById(students_id).isEmpty()){
			return studentsDao.findById(students_id).get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public Students findByEmail(String students_email) {
		// TODO Auto-generated method stub
		if(!studentsDao.findByEmail(students_email).isEmpty()){
			return studentsDao.findByEmail(students_email).get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public Students findByID_Password(String students_id, String students_password, String state) {
		// TODO Auto-generated method stub
		if(!studentsDao.findByID_Password(students_id,students_password, state).isEmpty()){
			return studentsDao.findByID_Password(students_id,students_password,state).get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public List<Students> listById(int students_id) {
		// TODO Auto-generated method stub
		return studentsDao.listById(students_id);
	}

	@Override
	public List<Students> listByName(String students_name) {
		// TODO Auto-generated method stub
		return studentsDao.listByName(students_name);
	}

	@Override
	public void updatePassword(int students_id, String students_password, String newpassword) {
		// TODO Auto-generated method stub
		studentsDao.updatePassword(students_id,students_password,newpassword);
	}
    
	@Override
	public void updateEmail(int id, String email, String newemail) {
		// TODO Auto-generated method stub
		studentsDao.updateEmail( id,email,newemail);
	}
	@Override
	public void updateById(int id, String name, String email, String grade,
			String major, String school, String tel, String password, String repassword,String sex) {
		// TODO Auto-generated method stub
		studentsDao.updateById(id,name,email,grade,major,school,tel,password,repassword,sex);
	}

	@Override
	public void activeStudents(int id, String state) {
		// TODO Auto-generated method stub
		studentsDao.activStudents(id,state);
	}

	@Override
	public Students findPassword(String  id, String email, String tel, String name) {
		// TODO Auto-generated method stub
		if(!studentsDao.findPassword(id,email,tel,name).isEmpty()){
			return studentsDao.findPassword(id,email,tel,name).get(0);
		}
		else {
			return null;
		}
	}

	@Override
	public List<Students> ListActiveStudents(String state) {
		// TODO Auto-generated method stub
		return studentsDao.ListActiveStudents(state);
	}

	@Override
	public List<Students> ListUnActiveStudents(String state) {
		// TODO Auto-generated method stub
		return studentsDao.ListUnActiveStudents(state);
	}

	@Override
	public Students findById(int id) {
		// TODO Auto-generated method stub
		if(!studentsDao.findById(id).isEmpty()){
			return studentsDao.findById(id).get(0);
		}
		else {
			return null;
		}
	}


	}

	



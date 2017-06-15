package cn.EMS.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.EMS.dao.StudentsDao;
import cn.EMS.model.Students;

@Repository("studentsDao")
public class StudentsDaoImpl extends BaseDaoImpl<Students> implements StudentsDao{

	@Override
	public List<Students> findById(String  id) {
		// TODO Auto-generated method stub
		return findByHql("from students where students_id='"+id+"'");
	}

	

	@Override
	public List<Students> findByEmail(String email) {
		// TODO Auto-generated method stub
		return findByHql("from students where email='"+email+"'");
	}



	@Override
	public List<Students> findByID_Password(String id, String password, String state) {
		// TODO Auto-generated method stub
		return findByHql("from students where students_id='"+id+"' and  password='"+password+"' and state='"+state+"'");
	}



	@Override
	public List<Students> listById(int id) {
		// TODO Auto-generated method stub
		return findByHql("from students where id="+id);
	}



	@Override
	public List<Students> listByName(String name) {
		// TODO Auto-generated method stub
		return findByHql("from students where name="+name);
	}



	@Override
	public void updatePassword(int id, String password, String newpassword) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update students  set password='"+newpassword+"',repassword='"+newpassword+"' where password='"+password+"'and id="+id).executeUpdate();
	}
	@Override
	public void updateEmail(int id, String email, String newemail) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update students  set email='"+newemail+"' where email='"+email+"'and id="+id).executeUpdate();
	}

	@Override
	public void updateById(int id, String name, String email, String grade,
			String major, String school, String tel,String password, String repassword,String sex) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update students set name='"+name+"',email='"+email+"',grade='"+grade+"',major='"+major+"',school='"+school+"',tel='"+tel+"',password='"+password+"',sex='"+sex+"',repassword='"+repassword+"'where id="+id).executeUpdate();
	}



	@Override
	public void activStudents(int id, String state) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update students set state='"+state+"' where id="+id).executeUpdate();
	}



	@Override
	public List<Students> findPassword(String  id, String email, String tel, String name) {
		// TODO Auto-generated method stub
		List<Students> list=findByHql("from students where students_id='"+id+"' and  email='"+email+"' and tel='"+tel+"' and name='"+name+"'");
		int a=list.size();
		return findByHql("from students where students_id='"+id+"' and  email='"+email+"' and tel='"+tel+"' and name='"+name+"'");
	}



	@Override
	public List<Students> ListActiveStudents(String state) {
		// TODO Auto-generated method stub
		return findByHql("from students where state='"+state+"'");
	}



	@Override
	public List<Students> ListUnActiveStudents(String state) {
		// TODO Auto-generated method stub
		return findByHql("from students where state='"+state+"'");
	}



	@Override
	public List<Students> findById(int id) {
		// TODO Auto-generated method stub
		return findByHql("from students where id="+id);
	}



	

}

package cn.EMS.dao.impl;

import java.util.List;
import org.springframework.stereotype.Repository;
import cn.EMS.dao.TeachersDao;
import cn.EMS.model.Teachers;

@Repository("teachersDao")
public class TeachersDaoImpl extends BaseDaoImpl<Teachers> implements TeachersDao{
	@Override
	public List<Teachers> Query(String id, String password) {
		// TODO Auto-generated method stub
		return findByHql("from teachers where teachers1_id='"+id+"' and password='"+password+"'");
	}

	@Override
	public List<Teachers>  FindById(String id) {
		// TODO Auto-generated method stub
		return findByHql("from teachers where teachers1_id="+id);
	}

	@Override
	public List<Teachers> FindByEmail(String email) {
		// TODO Auto-generated method stub
		return findByHql("from teachers where email='"+email+"'");
	}

	@Override
	public List<Teachers> listById(int id) {
		// TODO Auto-generated method stub
		return findByHql("from teachers where id="+id);
	}

	@Override
	public List<Teachers> listByname(String name) {
		// TODO Auto-generated method stub
		return findByHql("from teachers where name='"+name+"'");
	}

	@Override
	public void updateTeachersById(int id, String name, String email, String password,
			String repassword, String school, String sex, String tel) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update teachers  set name='"+name+"',id='"+id+"',email='"+email+"',password='"+password+"',repassword='"+repassword+"',school='"+school+"',sex='"+sex+"',tel='"+tel+"'where id="+id).executeUpdate();
	}

	@Override
	public void updatepassword(int id, String password, String newpassword) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update teachers set password='"+newpassword+"',repassword='"+password+"' where id="+id).executeUpdate();
	}
}

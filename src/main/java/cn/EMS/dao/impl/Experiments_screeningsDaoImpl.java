package cn.EMS.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.EMS.dao.Experiments_screeningsDao;
import cn.EMS.model.Experiments_Front;
import cn.EMS.model.Experiments_joinstudents;
import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Students;

@Repository("experiments_screeningsDao")
public class Experiments_screeningsDaoImpl extends BaseDaoImpl<Experiments_screenings> implements Experiments_screeningsDao{

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public java.util.List<Students> listfront(int id) {
		List<Experiments_Front> list1=this.getSession().createQuery("select id from experiments_front where experiments_id="+id).getResultList();
		
		List<Experiments_joinstudents> list=this.getSession().createQuery("select students_id from experiments_joinstudents where experiments_id >=all("+list1+")").getResultList();
		int a=0;
		return null;
	}

	@Override
	public void deleteScreenings(int experiments_id, int screenings) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("delete from experiments_screenings where experiments_id="+experiments_id+"and screenings="+screenings).executeUpdate();
		this.getSession().createQuery("delete from experiments_joinstudents where experiments_id="+experiments_id+"and screenings="+screenings).executeUpdate();
	}

	@Override
	public void reScreenings(int experiments_id, int screenings, String starttime, String endtime, String field,
			int needstudents) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments_screenings set starttime='"+starttime
				+"',endtime='"+endtime+"',field='"+field+"',needstudents="+needstudents+
				"where experiments_id="+experiments_id+"and screenings="+screenings).executeUpdate();
	}

}

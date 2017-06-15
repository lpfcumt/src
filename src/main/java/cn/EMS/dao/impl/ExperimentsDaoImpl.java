package cn.EMS.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Repository;

import cn.EMS.dao.ExperimentsDao;
import cn.EMS.model.Experiments;
import cn.EMS.model.Experiments_Front;
import cn.EMS.model.Experiments_Limit;
import cn.EMS.model.Experiments_joinstudents;
import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Experiments_unjoinstudents;
import cn.EMS.model.Students;
import cn.EMS.model.Teachers;


@Repository("experimentsDao")
public class ExperimentsDaoImpl extends BaseDaoImpl<Experiments> implements ExperimentsDao{

	@Override
	public List<Experiments> findThis(String createtime, int teachers_id) {
		// TODO Auto-generated method stub
		return findByHql("from experiments where createtime='"+createtime+"' and teachers_id="+teachers_id );
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_Front> listallfront() {
		// TODO Auto-generated method stub
		return (List<Experiments_Front>) this.getSession().createQuery("from experiments_front").getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_Limit> listalllimit() {
		// TODO Auto-generated method stub
		return (List<Experiments_Limit>) this.getSession().createQuery("from experiments_limit").getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_Front> lisfront(int id) {
		// TODO Auto-generated method stub
		return (List<Experiments_Front>) this.getSession().createQuery( "from experiments_front where experiments_id="+id).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_Limit> listlimit(int id) {
		// TODO Auto-generated method stub
		return (List<Experiments_Limit>) this.getSession().createQuery("from experiments_limit where experiments_id="+id).getResultList();
	}

	

	@SuppressWarnings({ "unchecked" })
	@Override
	public List<Students> listfrontstudent(int id) {
		// TODO Auto-generated method stub
		
			return this.getSession().createQuery("FROM students where id in"+
					"(SELECT  students_id  from experiments_joinstudents where experiments_id in"+
					" (select id  from experiments_front where experiments_id="+id+"))").getResultList();
		
		
	}

	@Override
	public List<Experiments> listById(int id) {
		// TODO Auto-generated method stub
		return findByHql("from experiments where id="+id);
	}

	@SuppressWarnings("deprecation")
	@Override
	public void addfrontstudent(int experiments_id, int students_id, String reason) {
		// TODO Auto-generated method stub
		  this.getSession().createSQLQuery("insert into experiments_unjoinstudents(experiments_id,students_id,reason) values("+experiments_id+","+students_id+",'"+reason+"')").executeUpdate();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Students> listfrontstudent1(int id) {
		
			List<Experiments_Front> list1=this.getSession().createQuery("select id from experiments_front where experiments_id="+id).getResultList();
			int n=list1.size();
			List<Object[]> list=this.getSession().createQuery("select students_id,count(*) from experiments_joinstudents"
					+ " where experiments_id in(:list1) group by students_id having count(*)="+n).setParameterList("list1", list1).getResultList();
			List<Students> list3=this.getSession().createQuery("from students where id=0").getResultList();
			for (int i = 0; i < list.size(); i++) {
				Object[] b=list.get(i);
				int c=(int) b[0];
				List<Students> list2=this.getSession().createQuery("from students where id ="+c).getResultList();
				list3.addAll(list2);
			}
			return list3;
		
		
		// TODO Auto-generated method stub
		
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Students> listlimitstudent(int id) {
		// TODO Auto-generated method stub
		List<Students> list=this.getSession().createQuery("from students where id=0").getResultList();
		List<Experiments> listid=this.getSession().createQuery("from experiments where id in (select id  from experiments_limit where experiments_id="+id+")").getResultList();
		for (Experiments experiments : listid) {
			
			if (experiments.getState().equals("已创建")) {
				List<Experiments_joinstudents> experiments_joinstudents=this.getSession().createQuery(" from experiments_joinstudents where experiments_id="+experiments.getId()).getResultList();
				for (int i=0;i<experiments_joinstudents.size();i++ ) {
					Experiments_joinstudents experiments_joinstudents2=experiments_joinstudents.get(i);
					List<Students> students=this.getSession().createQuery("from students where id ="+experiments_joinstudents2.getStudents_id()).getResultList();
					list.addAll(students);
				}
				
			}
			else{
				List<Experiments_joinstudents> experiments_joinstudents=this.getSession().createQuery("from experiments_joinstudents where state='"+"已完成"+"' and experiments_id="+experiments.getId()).getResultList();
				for (int i=0;i<experiments_joinstudents.size();i++ ) {
					Experiments_joinstudents experiments_joinstudents2=experiments_joinstudents.get(i);
					List<Students> students=this.getSession().createQuery("from students where id ="+experiments_joinstudents2.getStudents_id()).getResultList();
					list.addAll(students);
				}
			}
			
		}
		return list;
		
//			return this.getSession().createQuery(
//					"FROM students where id in"+
//							"(SELECT  students_id  from experiments_joinstudents where experiments_id in"+
//							" (select id  from experiments_limit where experiments_id="+id+"))").getResultList();
//	
		}
		

	@SuppressWarnings("unchecked")
	@Override
	public List<Students> listallstudents() {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from students").getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_unjoinstudents> listunjoinstudentsById(int students_id, int experiments_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_unjoinstudents eu where eu.students_id="+students_id+"and eu.experiments_id="+experiments_id).getResultList();
	}

	@Override
	public void updatefrontstudent(int experiments_id, int students_id, String reason) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments_unjoinstudents eu set eu.reason='"+reason+"' where eu.experiments_id="+experiments_id+" and eu.students_id="+students_id).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Students> listunjoinstudentsById(int experiments_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("select students_id as id from experiments_unjoinstudents eu where eu.experiments_id="+experiments_id).getResultList();
	}

	@SuppressWarnings({ "unchecked" })
	@Override
	public List<Students> listunjoinstudentsById(List<Students> listunjoinstudents) {
		// TODO Auto-generated method stub
		List<Students> list=this.getSession().createQuery("from experiments where id=0").getResultList();
		for (int i = 0; i < listunjoinstudents.size(); i++) {
			
		
		List<Students> list2=this.getSession().createQuery("from students where id ="+listunjoinstudents.get(i)).getResultList();
		list.addAll(list2);
	}
		return list;
		}

	@Override
	public void updateFrontcate(String frontcate, int experiments_id) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments set frontcate='"+frontcate+"' where id="+experiments_id).executeUpdate();
	}

	@SuppressWarnings("deprecation")
	@Override
	public void addscreenings(int duration, Date endtime, int experiments_id, String field, int needstudents,
			int screenings, Date starttime,int havestudents) {
		// TODO Auto-generated method stub
		 this.getSession().createSQLQuery("insert into experiments_screenings(screenings,experiments_id,duration,endtime,field,needstudents,starttime,havestudents) values("+screenings+","+experiments_id+","+duration+",'"+endtime+"','"+field+"',"+needstudents+",'"+starttime+"',"+havestudents+")").executeUpdate();
	}

	@Override
	public List<Experiments> listByteacherId(int teachers_id) {
		// TODO Auto-generated method stub
		return findByHql("from experiments where teachers_id="+teachers_id+"and state <>"+null+" order by createtime DESC, state ");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_screenings> listScreeningsById(int id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_screenings where experiments_id="+id).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_joinstudents> listjoinstudentsById(int experiments_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery(" from experiments_joinstudents where experiments_id="+experiments_id).getResultList();
	}


	@Override
	public List<Students> listallstudents(List<Experiments_joinstudents> experiments_joinstudents) {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Students> list1=this.getSession().createQuery("from students where id =0").getResultList();
		for (int i = 0; i < experiments_joinstudents.size(); i++) {
			
			Experiments_joinstudents list=experiments_joinstudents.get(i);	
			@SuppressWarnings("unchecked")
			List<Students> students=this.getSession().createQuery("from students where id ="+list.getStudents_id()).getResultList();
			
			list1.addAll(students);
		}
		
		return list1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_unjoinstudents> listoneunjoinstudentById(int id, int students_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_unjoinstudents where experiments_id="+id+" and students_id="+students_id).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_joinstudents> listonejoinstudentById(int id, int students_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_joinstudents where experiments_id="+id+" and students_id="+students_id).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_screenings> listScreeningsByStudentId(int studnets_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("").getResultList();
		
	}

	@SuppressWarnings({ "unchecked" })
	@Override
	public List<Experiments> listById(List<Experiments_screenings> liststudentscreenings) {
		// TODO Auto-generated method st
		List<Experiments> list1 = this.getSession().createQuery("from experiments where id=0").getResultList();
		for(int i = 0;i < liststudentscreenings.size();i++){
			Experiments_screenings experiments_screenings=liststudentscreenings.get(i);
			List<Experiments> list=this.getSession().createQuery("from experiments where id="+experiments_screenings.getExperiments_id()).getResultList();
			
			list1.addAll(list);
		}
		return list1;
	}

	@SuppressWarnings("deprecation")
	@Override
	public void joinExperiments(int experiments_id, int screenings, int students_id, String time) {
		// TODO Auto-generated method stub
		 @SuppressWarnings("unchecked")
		 List<Experiments_screenings> list=this.getSession().createQuery("from experiments_screenings where experiments_id="+experiments_id+" and screenings="+screenings).getResultList();
		 Experiments_screenings experiments_screenings=list.get(0);
		 int havestudents=experiments_screenings.getHavestudents()+1;
		 this.getSession().createSQLQuery("insert into experiments_joinstudents(screenings,experiments_id,students_id,time) values("+screenings+","+experiments_id+","+students_id+",'"+time+"')").executeUpdate();
		 this.getSession().createQuery("update experiments_screenings set havestudents="+havestudents+"where experiments_id="+experiments_id+"and screenings="+screenings).executeUpdate();
			
	

	}

	@SuppressWarnings("deprecation")
	@Override
	public void addfrontexperiment(String[] front, int id) {
		// TODO Auto-generated method stub
		for (int i = 0; i < front.length; i++) {
			String eid=front[i];
			int experiments_id=Integer.parseInt(front[i]);
		this.getSession().createSQLQuery("insert into experiments_front(id,experiments_id) values("+experiments_id+","+id+")").executeUpdate();
		}
	}

	@SuppressWarnings("deprecation")
	@Override
	public void addlimitexperiment(String[] limit, int id) {
		// TODO Auto-generated method stub
		for (int i = 0; i < limit.length; i++) {
			int experiments_id=Integer.parseInt(limit[i]);
		this.getSession().createSQLQuery("insert into experiments_limit(id,experiments_id) values("+experiments_id+","+id+")").executeUpdate();
		}
	}

	@Override
	public List<Experiments> listActive() {
		// TODO Auto-generated method stub
		String state="已创建";
		String pubexper="已发布";
		return findByHql("from experiments  where state='"+state+"'and pubexper='"+pubexper+"'order by createtime desc");
	}

	@Override
	public void updateExperimentsState(int id, String state) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments set state='"+state+"' where id="+id).executeUpdate();
	}

	@Override
	public List<Experiments> listunActive() {
		// TODO Auto-generated method stub
		String state="已完成";
		String pubexper="已发布";
		return findByHql("from experiments where state='"+state+"'and pubexper='"+pubexper+"'ORDER BY  createtime DESC");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Students> listStudentByScreenings(int id, int screenings) {
		// TODO Auto-generated method stub
		List<Students> students=this.getSession().createQuery("from students where id=0").getResultList();
		List<Experiments_joinstudents> liststudents=this.getSession().createQuery("from experiments_joinstudents where experiments_id="+id+"and screenings="+screenings).getResultList();
		for (int i = 0; i < liststudents.size(); i++) {
			Experiments_joinstudents experiments_joinstudents=liststudents.get(i);
			List<Students> list=this.getSession().createQuery("from students where id="+experiments_joinstudents.getStudents_id()).getResultList();
			students.addAll(list);
		}
		return students;
	}

	@Override
	public List<Experiments> listByState_Teacher(int teachers_id, String state) {
		// TODO Auto-generated method stub
		return findByHql("from experiments where teachers_id="+teachers_id+"and state='"+state+"' ORDER BY  createtime DESC ");
	}

	@SuppressWarnings("deprecation")
	@Override
	public void addStudents(int id, int screenings, int students_id) {
		// TODO Auto-generated method stub
		Date dt=new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time =format.format(dt);
		@SuppressWarnings("unchecked")
		List<Experiments_screenings> list=this.getSession().createQuery(" from experiments_screenings where experiments_id="+id+" and screenings="+screenings).getResultList();
		 Experiments_screenings experiments_screenings=list.get(0);
		 int havestudents=experiments_screenings.getHavestudents()+1;
		this.getSession().createSQLQuery("insert into experiments_joinstudents(experiments_id,screenings,students_id,time) values("+id+","+screenings+","+students_id+",'"+time+"')").executeUpdate();
		this.getSession().createQuery("update experiments_screenings set havestudents="+havestudents+"where experiments_id="+id+"and screenings="+screenings).executeUpdate();
	}

	@Override
	public void deleteStudents(int id, int screenings, int students_id) {
		// TODO Auto-generated method stub
		 @SuppressWarnings("unchecked")
		List<Experiments_screenings> list=this.getSession().createQuery("from experiments_screenings where experiments_id="+id+" and screenings="+screenings).getResultList();
		 Experiments_screenings experiments_screenings=list.get(0);
		 int havestudents=experiments_screenings.getHavestudents()-1;
		this.getSession().createQuery("delete from experiments_joinstudents where experiments_id="+id+"and screenings="+screenings+"and students_id="+students_id).executeUpdate();
		this.getSession().createQuery("update experiments_screenings set havestudents="+havestudents+"where experiments_id="+id+"and screenings="+screenings).executeUpdate();
	}

	@Override
	public void updateExperiments(int id, Double pay, Double credit, String detail, String url) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments set pay="+pay+",credit="+credit+",detail='"+detail+"',url='"+url+"' where id="+id).executeUpdate();
	}

	@Override
	public void completeExperiments(int id, String state) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments set state='"+state+"' where id="+id).executeUpdate();
		this.getSession().createQuery("update experiments_screenings set state='"+state+"' where experiments_id="+id).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_joinstudents> listjoinstudentsBystudents_id(int studnets_id, String state) {
		// TODO Auto-generated method stub
		if (state==null) {
			return this.getSession().createQuery("from experiments_joinstudents where students_id="+studnets_id+"and state="+state).getResultList();
		}else{
			return this.getSession().createQuery("from experiments_joinstudents where students_id="+studnets_id+"and state='"+state+"'").getResultList();
		}
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments> listById1(List<Experiments_joinstudents> listjoin) {
		// TODO Auto-generated method stub
		List<Experiments> list1 = this.getSession().createQuery("from experiments where id=0").getResultList();
		for (int i = 0; i < listjoin.size(); i++) {
			Experiments_joinstudents experiments_joinstudents=listjoin.get(i);
			List<Experiments> list=this.getSession().createQuery("from experiments where id="+experiments_joinstudents.getExperiments_id()).getResultList();
			list1.addAll(list);
		}
		return list1;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments> listById2(List<Experiments> listexperiments) {
		// TODO Auto-generated method stub
		String state="已创建";
		List<Experiments> experiments=this.getSession().createQuery("from experiments where id=0").getResultList();
		for (int i = 0; i < listexperiments.size(); i++) {
			Experiments experiments2=listexperiments.get(i);
			List<Experiments> list=this.getSession().createQuery("from experiments where id="+experiments2.getId()+"and state='"+state+"'").getResultList();
			experiments.addAll(list);
		}
		return experiments;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_screenings> listScreeningsByStudentId(int experiments_id, int students_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_screenings where experiments_id="+experiments_id+"and screenings="+students_id).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Teachers> listTeacherById(int teachers_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from teachers where id="+teachers_id).getResultList();
	}

	@Override
	public List<Experiments_joinstudents> listjoinstudentsById_Screenings(int id, int screenings) {
		// TODO Auto-generated method stub
		return null;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_screenings> listScreeningsById_Screenings(int id, int screenings) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_screenings where experiments_id="+id+"and screenings="+screenings).getResultList();
	}

	@Override
	public void completeStudents(int id, int students_id) {
		// TODO Auto-generated method stub
		String stae="未完成";
		getSession().createQuery("update experiments_joinstudents set state='"+stae+"' where experiments_id="+id+"and students_id="+students_id).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_joinstudents> listCompleteStudents(int id, String state) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_joinstudents where experiments_id="+id+"and state='"+state+"'").getResultList();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_joinstudents> list1CompleteStudents(int id, String state) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_joinstudents where experiments_id="+id+"and state="+null).getResultList();
	}
	@SuppressWarnings({ "unchecked" })
	@Override
	public List<Students> getStudents(int students_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from students where id="+students_id).getResultList();
	}

	@Override
	public List<Experiments> listByStarttime(String starttime) {
		// TODO Auto-generated method stub
		String state="已创建";
		return findByHql("from experiments where state='"+state+"' and starttime like '"+starttime+"%'");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Students> listjoinstudentsById(List<Experiments> experiments) {
		// TODO Auto-generated method stub
		List<Students> allstudents=this.getSession().createQuery("from students").getResultList();
		List<Students> students=this.getSession().createQuery("from students where id=0").getResultList();
		for (int i = 0; i < experiments.size(); i++) {
			Experiments experiments2=experiments.get(i);
			List<Students> list=this.getSession().createQuery("from ").getResultList();
		}
		return this.getSession().createQuery("").getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_unjoinstudents> listunjoinstudentById(int id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_unjoinstudents where experiments_id="+id).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Students> listcanjoinstudents(int id, List<Experiments_joinstudents> list2) {
		// TODO Auto-generated method stub
		
		List<Students> students=this.getSession().createQuery("from students where id=0").getResultList();
		for (int i = 0; i < list2.size(); i++) {
			Experiments_joinstudents experiments2=list2.get(i);
			List<Students> list=this.getSession().createQuery("from students where id="+experiments2.getStudents_id()).getResultList();
			students.addAll(list);
		}
		
		return students;
	}

	@Override
	public List<Experiments> listallexperiments() {
		// TODO Auto-generated method stub
		return findByHql("from experiments where pubexper='"+"已发布"+"'order by createtime Desc");
	}
	@Override
	public void addState(int students_id,int id) {
		// TODO Auto-generated method stub
		String state3="已完成";
		this.getSession().createQuery("update experiments_joinstudents set state='"+state3+"' where experiments_id="+id+"and students_id="+students_id).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Experiments_joinstudents> listjoinstudentsBystudents_id(int students_id) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from experiments_joinstudents where students_id="+students_id).getResultList();
	}

	@Override
	public void deleteExperiments(int id) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("delete from experiments where id="+id).executeUpdate();
	}

	@Override
	public void pubExperiments(int id, String pubexper) {
		// TODO Auto-generated method stub
		this.getSession().createQuery("update experiments set pubexper='"+pubexper+"' where id="+id).executeUpdate();
	}

	@Override
	public List<Experiments> listExperimentsByStateAndTime(int teachers_id,String state, String starttime, String endtime) {
		// TODO Auto-generated method stub
		return findByHql(" from experiments where teachers_id="+teachers_id+"and cate='"+state+"' and state='"+"已完成"+
				"' and unix_timestamp(createtime) between unix_timestamp('"+starttime+"') and unix_timestamp('"+endtime+"') group by id");
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Students> listjoinstudentsById(int id, String state) {
		// TODO Auto-generated method stub
		return this.getSession().createQuery("from students where id in(select students_id as id from experiments_joinstudents "+
		"where experiments_id ="+id+" and state='"+state+"')").getResultList();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> countPay(int id, List<Experiments> listExperiment) {
		// TODO Auto-generated method stub
		ArrayList<Object> listid =new ArrayList<>();
		for (Experiments experiments : listExperiment) {
			listid.add(experiments.getId());
		}
		return this.getSession().createSQLQuery("select sum(e.pay) as pay,count(*) as count from "
				+ "(select experiments_id as id from experiments_joinstudents where experiments_id in"
				+ "(:experiments_id) and students_id="+id+" group by experiments_id ) as ej inner join experiments e on e.id=ej.id")
				.setParameterList("experiments_id", listid).getResultList();
	}

	@SuppressWarnings({ "unchecked", "deprecation" })
	@Override
	public List<Object[]> countCredit(int id, List<Experiments> listExperiment) {
		// TODO Auto-generated method stub
		ArrayList<Object> listid =new ArrayList<>();
		for (Experiments experiments : listExperiment) {
			listid.add(experiments.getId());
		}
		return this.getSession().createSQLQuery("select sum(e.credit) as pay,count(*) as count from "
				+ "(select experiments_id as id from experiments_joinstudents where experiments_id in"
				+ "(:experiments_id) and students_id="+id+" group by experiments_id ) as ej inner join experiments e on e.id=ej.id")
				.setParameterList("experiments_id", listid).getResultList();
	}
	
	

}

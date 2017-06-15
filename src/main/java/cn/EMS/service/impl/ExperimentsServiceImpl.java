package cn.EMS.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;
import cn.EMS.model.Experiments;
import cn.EMS.model.Experiments_Front;
import cn.EMS.model.Experiments_Limit;
import cn.EMS.model.Experiments_joinstudents;
import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Experiments_unjoinstudents;
import cn.EMS.model.Students;
import cn.EMS.model.Teachers;
import cn.EMS.service.ExperimentsService;
@Service("experimentsService")
public class ExperimentsServiceImpl extends BaseServiceImpl<Experiments> implements ExperimentsService  {

	@Override
	public List<Experiments> findThis(String createtime, int teachers_id) {
		// TODO Auto-generated method stub
		return  experimentsDao.findThis(createtime, teachers_id);
	}

	@Override
	public List<Experiments_Front> listallfront() {
		// TODO Auto-generated method stub
		return experimentsDao.listallfront();
	}

	@Override
	public List<Experiments_Limit> listalllimit() {
		// TODO Auto-generated method stub
		return experimentsDao.listalllimit();
	}

	@Override
	public List<Experiments_Front> listfront(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.lisfront(id);
	}

	@Override
	public List<Experiments_Limit> listlimit(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.listlimit(id);
	}

	@Override
	public List<Students> listfrontstudent(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.listfrontstudent(id);
	}

	@Override
	public void addfrontstudent(int experiments_id, int students_id, String reason) {
		// TODO Auto-generated method stub
		experimentsDao.addfrontstudent(experiments_id,students_id,reason);
	}

	@Override
	public List<Experiments> listById(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.listById(id);
	}

	@Override
	public List<Students> listfrontstudent1(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.listfrontstudent1(id);
	}

	@Override
	public List<Students> listlimitstudent(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.listlimitstudent(id);
	}

	@Override
	public List<Students> listallstudents() {
		// TODO Auto-generated method stub
		return experimentsDao.listallstudents();
	}

	@Override
	public List<Experiments_unjoinstudents> listunjoinstudentsById(int students_id, int experiments_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listunjoinstudentsById(students_id,experiments_id);
	}

	@Override
	public void updatefrontstudent(int experiments_id, int students_id, String reason) {
		// TODO Auto-generated method stub
		 experimentsDao.updatefrontstudent(experiments_id,students_id,reason);
	}

	@Override
	public List<Students> listunjoinstudentsById(int experiments_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listunjoinstudentsById(experiments_id);
	}

	@Override
	public List<Students> listunjoinstudentsById(List<Students> listunjoinstudents) {
		// TODO Auto-generated method stub
		return experimentsDao.listunjoinstudentsById(listunjoinstudents);
	}

	@Override
	public void updateFrontcate(String frontcate, int experiments_id) {
		// TODO Auto-generated method stub
		experimentsDao.updateFrontcate(frontcate,experiments_id);
	}

	@Override
	public void addscreenings(int duration, Date endtime, int experiments_id, String field, int needstudents,
			int screenings, Date starttime,int havestudents) {
		// TODO Auto-generated method stub
		experimentsDao.addscreenings(duration,endtime,experiments_id,field,needstudents,screenings,starttime,havestudents);
	}

	@Override
	public List<Experiments> listByteacherId(int teachers_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listByteacherId(teachers_id);
	}

	@Override
	public List<Experiments_screenings> listScreeningsById(int id) {
		// TODO Auto-generated method stub
		return experimentsDao.listScreeningsById(id);
	}

	@Override
	public List<Experiments_joinstudents> listjoinstudentsById(int experiments_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listjoinstudentsById(experiments_id);
	}

	@Override
	public List<Students> listallstudents(List<Experiments_joinstudents> experiments_joinstudents) {
		// TODO Auto-generated method stub
		return experimentsDao.listallstudents(experiments_joinstudents);
	}

	@Override
	public List<Experiments_unjoinstudents> listoneunjoinstudentById(int id, int students_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listoneunjoinstudentById(id,students_id);
	}

	@Override
	public List<Experiments_joinstudents> listonejoinstudentById(int id, int students_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listonejoinstudentById(id,students_id);
	}

	@Override
	public List<Experiments_screenings> listScreeningsByStudentId(int studnets_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listScreeningsByStudentId(studnets_id);
	}

	@Override
	public List<Experiments> listById(List<Experiments_screenings> liststudentscreenings) {
		// TODO Auto-generated method stub
		return experimentsDao.listById(liststudentscreenings);
	}

	@Override
	public void joinExperiments(int experiments_id, int screenings, int students_id, String time) {
		// TODO Auto-generated method stub
		experimentsDao.joinExperiments( experiments_id, screenings,  students_id,  time);
	}

	@Override
	public void addfrontexperiment(String[] front, int id) {
		// TODO Auto-generated method stub
		experimentsDao.addfrontexperiment(front,id);
	}

	@Override
	public void addlimitexperiment(String[] limit, int id) {
		// TODO Auto-generated method stub
		experimentsDao.addlimitexperiment(limit,id);
	}

	@Override
	public List<Experiments> listActive() {
		// TODO Auto-generated method stub
		return experimentsDao.listActive();
	}

	@Override
	public void updateExperimentsState(int id, String state) {
		// TODO Auto-generated method stub
		experimentsDao.updateExperimentsState(id,state);
	}

	@Override
	public List<Experiments> listunActive() {
		// TODO Auto-generated method stub
		return experimentsDao.listunActive();
	}

	@Override
	public List<Students> listStudentByScreenings(int id, int screenings) {
		// TODO Auto-generated method stub
		return experimentsDao.listStudentByScreenings(id,screenings);
	}

	@Override
	public List<Experiments> listByState_Teacher(int teachers_id, String state) {
		// TODO Auto-generated method stub
		return experimentsDao.listByState_Teacher(teachers_id,state);
	}

	@Override
	public void addStudents(int id, int screenings, int students_id) {
		// TODO Auto-generated method stub
		experimentsDao.addStudents(id,screenings,students_id);
	}

	@Override
	public void deleteStudents(int id, int screenings, int students_id) {
		// TODO Auto-generated method stub
		experimentsDao.deleteStudents(id,screenings,students_id);
	}

	@Override
	public void updateExpriments(int id, Double pay, Double credit, String detail, String url) {
		// TODO Auto-generated method stub
		experimentsDao.updateExperiments(id,pay,credit,detail,url);
	}

	@Override
	public void completeExperiments(int id, String state) {
		// TODO Auto-generated method stub
		experimentsDao.completeExperiments(id,state);
	}

	@Override
	public List<Experiments_joinstudents> listjoinstudentsBystudents_id(int studnets_id, String state) {
		// TODO Auto-generated method stub
		return experimentsDao.listjoinstudentsBystudents_id(studnets_id,state);
	}

	@Override
	public List<Experiments> listById1(List<Experiments_joinstudents> listjoin) {
		// TODO Auto-generated method stub
		return experimentsDao.listById1(listjoin);
	}

	@Override
	public List<Experiments> listById2(List<Experiments> listexperiments) {
		// TODO Auto-generated method stub
		return experimentsDao.listById2(listexperiments);
	}

	@Override
	public List<Experiments_screenings> listScreeningsByStudentId(int experiments_id, int students_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listScreeningsByStudentId(experiments_id,students_id);
	}

	@Override
	public List<Teachers> listTeacherById(int teachers_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listTeacherById(teachers_id);
	}

	@Override
	public List<Experiments_joinstudents> listjoinstudentsById_Screenings(int id, int screenings) {
		// TODO Auto-generated method stub
		return experimentsDao.listjoinstudentsById_Screenings(id,screenings);
	}

	@Override
	public List<Experiments_screenings> listScreeningsById_Screenings(int id, int screenings) {
		// TODO Auto-generated method stub
		return experimentsDao.listScreeningsById_Screenings(id,screenings);
	}

	@Override
	public void completeStudents(int id, int students_id) {
		// TODO Auto-generated method stub
		experimentsDao.completeStudents(id,students_id);
	}

	@Override
	public List<Experiments_joinstudents> listCompleteStudents(int id, String state) {
		// TODO Auto-generated method stub
		return experimentsDao.listCompleteStudents(id,state);
	}
	@Override
	public List<Experiments_joinstudents> list1CompleteStudents(int id, String state) {
		// TODO Auto-generated method stub
		return experimentsDao.list1CompleteStudents(id,state);
	}
	@Override
	public List<Students> getStudents(int students_id) {
		// TODO Auto-generated method stub
		return experimentsDao.getStudents(students_id);
	}

	@Scheduled(cron="0 0 10 * * ?")
	@Override
	public void sendEmail(){
		Calendar cal = Calendar.getInstance();//使用默认时区和语言环境获得一个日历。    
		cal.add(Calendar.DAY_OF_MONTH, +1);//取当前日期的后一天.  
		java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");
		String starttime=format.format(cal.getTime());
		
		List<Experiments> list=experimentsDao.listByStarttime(starttime);
		
		System.out.println(list);
		for (int i = 0; i < list.size(); i++) {
			Experiments experiments=list.get(i);
			List<Experiments_joinstudents> list2=experimentsDao.listjoinstudentsById(experiments.getId());
			List<Students> list3=experimentsDao.listcanjoinstudents(experiments.getId(),list2);
			
			for (int j = 0; j < list3.size(); j++) {
				Students students=list3.get(j);
				try{
					Properties props = new Properties();
					props.setProperty("mail.smtp.auth", "true");
					props.setProperty("mail.transport.protocol", "smtp");
					props.setProperty("mail.smtp.host", "210.34.0.7");
					Session session = Session.getInstance(props, new Authenticator() {
						protected PasswordAuthentication getPasswordAuthentication() {
							return new PasswordAuthentication("mrs.xmu", "xmu.edu.cn");
						}
					});
					session.setDebug(true);
					String nick="";  
		            try {  
		                nick=javax.mail.internet.MimeUtility.encodeText("实验管理系统");  
		            } catch (UnsupportedEncodingException e) {  
		                e.printStackTrace();  
		            }   
					Message msg = new MimeMessage(session);
					msg.setFrom(new InternetAddress("mrs.xmu@xmu.edu.cn",nick));
					msg.setHeader("X-Mailer", "Microsoft Outlook Express 6.00.2900.2869");
					msg.setSubject("实验通知");
					
					msg.setRecipients(RecipientType.TO,
							InternetAddress.parse(students.getEmail()));
					msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
							+ "&emsp;&emsp;您好，您参与的"+experiments.getCate()+"实验：'"+experiments.getName()+"',将在"+experiments.getStarttime()+"开始，请您登陆实验管理系统查看具体场次的开始时间，并及时参加实验。"+"<a href=\"http://mrs.xmu.edu.cn\" >"+"立即登录</a>"+"</span>","text/html;charset=gbk");
					Transport.send(msg);
				}catch (Exception e) {    
		            e.printStackTrace(); 
			}
		}
	}
		try{
			Properties props = new Properties();
			props.setProperty("mail.smtp.auth", "true");
			props.setProperty("mail.transport.protocol", "smtp");
			props.setProperty("mail.smtp.host", "210.34.0.7");
			Session session = Session.getInstance(props, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("mrs.xmu", "xmu.edu.cn");
				}
			});
			session.setDebug(true);
			String nick="";  
            try {  
                nick=javax.mail.internet.MimeUtility.encodeText("实验管理系统");  
            } catch (UnsupportedEncodingException e) {  
                e.printStackTrace();  
            }   
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress("mrs.xmu@xmu.edu.cn",nick));
			msg.setHeader("X-Mailer", "Microsoft Outlook Express 6.00.2900.2869");
			msg.setSubject("实验通知");
			
			msg.setRecipients(RecipientType.TO,
					InternetAddress.parse("1009925846@qq.com"));
			msg.setContent("<span>"+"亲爱的同学<br />"
					+ ""+list.size()+""+"</span>","text/html;charset=gbk");
			Transport.send(msg);
		}catch (Exception e) {    
            e.printStackTrace(); 
	}
	
}

	@Override
	public List<Experiments> listallexperiments() {
		// TODO Auto-generated method stub
		return experimentsDao.listallexperiments();
	}
	
	@Override
	public void addState(int students_id,int id) {
		// TODO Auto-generated method stub
		experimentsDao.addState(students_id,id);
	}

	@Override
	public List<Experiments_joinstudents> listjoinstudentsBystudents_id(int students_id) {
		// TODO Auto-generated method stub
		return experimentsDao.listjoinstudentsBystudents_id(students_id);
	}

	@Override
	public void deleteExperiments(int id) {
		// TODO Auto-generated method stub
		experimentsDao.deleteExperiments(id);
	}
	@Override
	public void pubExperiments(int id ,String pubexper) {
		// TODO Auto-generated method stub
		experimentsDao.pubExperiments(id,pubexper);
	}

	@Override
	public List<Experiments> listExperimentsByStateAndTime(int teachers_id,String state, String starttime, String endtime) {
		// TODO Auto-generated method stub
		return experimentsDao.listExperimentsByStateAndTime(teachers_id,state, starttime, endtime);
	}

	@Override
	public List<Students> listjoinstudentsById(int id, String state) {
		// TODO Auto-generated method stub
		return experimentsDao.listjoinstudentsById(id, state);
	}

	@Override
	public List<Object[]> countPay(int id, List<Experiments> listExperiment,String cate) {
		// TODO Auto-generated method stub
		if (cate.equals("现场现金实验")) {
			return experimentsDao.countPay(id, listExperiment);
		}
		else if(cate.equals("现场学分实验")){
			return experimentsDao.countCredit(id,listExperiment);
		}
		else{
			return null;
		}
		
	}
}

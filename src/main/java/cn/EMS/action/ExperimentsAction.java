package cn.EMS.action;

import java.io.UnsupportedEncodingException;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import cn.EMS.model.Experiments;
import cn.EMS.model.Experiments_Front;
import cn.EMS.model.Experiments_Limit;
import cn.EMS.model.Experiments_joinstudents;
import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Experiments_unjoinstudents;
import cn.EMS.model.Students;
import cn.EMS.model.Teachers;
import cn.EMS.service.impl.CountPay;


public class ExperimentsAction extends BaseAction<Experiments>{

	/**
	 * 
	 */
	@Autowired 
	private CountPay countPay;
	private static final long serialVersionUID = 1L;
	private Map<String, Object> jsonMap=new HashMap<String, Object>();
	private int experiments_id;
	private int screenings;
	private Date starttime;
	private Date endtime;
	private int duration;//时长
	private int needstudents;
	private int students_id;
	private String field;
	private int pageCount;
	private int pageSize;
	private int current;
	private int fromindex;
	private int toindex;
	private String state;
//	private String[] limit;
//	private String[] front;
//	
//	public String[] getLimit() {
//		return limit;
//	}
//	public void setLimit(String[] limit) {
//		this.limit = limit;
//	}
//	public String[] getFront() {
//		return front;
//	}
//	public void setFront(String[] front) {
//		this.front = front;
//	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	public int getFromindex() {
		return fromindex;
	}
	public void setFromindex(int fromindex) {
		this.fromindex = fromindex;
	}
	public int getToindex() {
		return toindex;
	}
	public void setToindex(int toindex) {
		this.toindex = toindex;
	}
	public int getStudents_id() {
		return students_id;
	}
	public void setStudents_id(int students_id) {
		this.students_id = students_id;
	}
	public int getExperiments_id() {
		return experiments_id;
	}
	public void setExperiments_id(int experiments_id) {
		this.experiments_id = experiments_id;
	}
	public int getScreenings() {
		return screenings;
	}
	public void setScreenings(int screenings) {
		this.screenings = screenings;
	}
	public Date getStarttime() {
		return starttime;
	}
	public void setStarttime(Date starttime) {
		this.starttime = starttime;
	}
	public Date getEndtime() {
		return endtime;
	}
	public void setEndtime(Date endtime) {
		this.endtime = endtime;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public int getNeedstudents() {
		return needstudents;
	}
	public void setNeedstudents(int needstudents) {
		this.needstudents = needstudents;
	}
	public String getField() {
		return field;
	}
	public void setField(String field) {
		this.field = field;
	}
	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}
	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}
	
	
	/*选择实验类型*/
	public String ChooseExperimentsCate() throws Exception{
		session.put("experiments_cate", model.getCate());
		return SUCCESS;
	}
	
	/*第一步：添加实验内容*/
	public String Add1Experiments() throws Exception{
		/*Date currentTime = new Date();
		   SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		   String dateString = formatter.format(currentTime);
		   ParsePosition pos = new ParsePosition(8);
		   Date currentTime_2 = formatter.parse(dateString, pos);*/
		
		Date dt=new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time =format.format(dt);
		model.setCreatetime(time);
		String experiments_cate=(String)session.get("experiments_cate");
		model.setCate(experiments_cate);
		HttpServletRequest request=ServletActionContext.getRequest();
		String outline=request.getParameter("outline");
		String detail=request.getParameter("detail");
		int  teachers_id=(int)session.get("teachers_id");
		String teachers_name=(String)session.get("teachers_name");
		String teachers_email=(String)session.get("teachers_email");
		String teachers_tel=(String)session.get("teachers_tel");
		model.setTeachers_email(teachers_email);
		model.setTeachers_name(teachers_name);
		model.setTeachers_tel(teachers_tel);
		model.setDetail(detail);
		model.setOutline(outline);
		model.setTeachers_id(teachers_id);
		model.setPubexper("未发布");
		List<Experiments> listteacherexperiment=experimentsService.listByteacherId(teachers_id);
		experimentsService.save(model);
		 
	    List<Experiments> listthisexperiments=experimentsService.findThis(model.getCreatetime(),model.getTeachers_id());
	    Experiments experiments=listthisexperiments.get(0);
	    session.put("thisexperiments_id", experiments.getId());
		session.put("listthisexperiments", listthisexperiments);
		session.put("listteacherexperiment", listteacherexperiment);
	    return SUCCESS;
	}
	
	/*第二步：确定前置实验和限制实验*/
	public String Add2Experiments() throws Exception{
		@SuppressWarnings("unchecked")
		List<Experiments> listthisexperiments=(List<Experiments>)session.get("listthisexperiments");
		Experiments thisexperiment=listthisexperiments.get(0);
		model.setId(thisexperiment.getId());
		HttpServletRequest request=ServletActionContext.getRequest();
		String[] front=request.getParameterValues("front[]");
		String[] limit=request.getParameterValues("limit[]");
		
		String frontcate=request.getParameter("frontcate");
		model.setFrontcate(frontcate);
		if (front==null) {
			
		}
		else{
			experimentsService.addfrontexperiment(front,model.getId());
		}
		if (limit==null) {
			
		}
		else{
			experimentsService.addlimitexperiment(limit,model.getId());
		}
		List<Students> allstudent=experimentsService.listallstudents();
		List<Students> allstudent1=experimentsService.listallstudents();
		List<Experiments_Limit> listlimit=experimentsService.listlimit(model.getId());
		
		/*前置实验*/
		List<Experiments_Front> listfront=experimentsService.listfront(model.getId());
		if(model.getFrontcate().equals("任一")){
			List<Students> listfrontstudent=experimentsService.listfrontstudent(model.getId());
			allstudent.removeAll(listfrontstudent);
			String reason="未参加前置实验：";
			for (int j = 0; j < listfront.size(); j++) {
				Experiments_Front experiments_Front=listfront.get(j);
				Experiments experiments=experimentsService.listById(experiments_Front.getId()).get(0);
				reason=reason+experiments.getName()+""+"或";
			}
			for (int i = 0; i < allstudent.size(); i++) {
				Students students=allstudent.get(i);
				experimentsService.addfrontstudent(model.getId(),students.getId(),reason);
			}
			
			/*限制实验*/
			List<Students> listlimitstudent=experimentsService.listlimitstudent(model.getId());
			
			allstudent.retainAll(listlimitstudent);//交集
			listlimitstudent.removeAll(allstudent);//差集
			String reason2="参加过限制实验：";
			
			for (int i = 0; i < listlimit.size(); i++) {
				Experiments_Limit experiments_Limit=listlimit.get(i);
				Experiments experiments=experimentsService.listById(experiments_Limit.getId()).get(0);
				reason2=reason2+experiments.getName()+""+"或";
			}
			
			
			/*限制实验与前置实验都不满足*/
			for (int i = 0; i < allstudent.size(); i++) {
				Students students=allstudent.get(i);
				Experiments_unjoinstudents unjoinstudents=experimentsService.listunjoinstudentsById(students.getId(),model.getId()).get(i);
				String reason3=unjoinstudents.getReason();
				experimentsService.updatefrontstudent(model.getId(),students.getId(),reason3+"，并且"+reason);
				
			}
			
			/*只不满足限制实验*/
			for (int i = 0; i < listlimitstudent.size(); i++) {
				Students students2=listlimitstudent.get(i);
				experimentsService.addfrontstudent(model.getId(),students2.getId(),reason2);
			}
		}
		else if(model.getFrontcate().equals("全部")){
			List<Students> listfrontstudent1=experimentsService.listfrontstudent1(model.getId());
			allstudent.removeAll(listfrontstudent1);
			String reason1="未参加前置实验：";
			for (int j = 0; j < listfront.size(); j++) {
				Experiments_Front experiments_Front=listfront.get(j);
				Experiments experiments=experimentsService.listById(experiments_Front.getId()).get(0);
				reason1=reason1+experiments.getName()+""+"和";
			}
			for (int i = 0; i < allstudent.size(); i++) {
			
			
			Students students=allstudent.get(i);
			experimentsService.addfrontstudent(model.getId(),students.getId(),reason1);
		}
			
			/*限制实验*/
			List<Students> listlimitstudent=experimentsService.listlimitstudent(model.getId());
			
			allstudent.retainAll(listlimitstudent);//交集
			listlimitstudent.removeAll(allstudent);//差集
			String reason2="参加过限制实验：";
			
			for (int i = 0; i < listlimit.size(); i++) {
				Experiments_Limit experiments_Limit=listlimit.get(i);
				Experiments experiments=experimentsService.listById(experiments_Limit.getId()).get(0);
				reason2=reason2+experiments.getName()+""+"或";
			}
		
			/*限制实验与前置实验都不满足*/
			for (int i = 0; i < allstudent.size(); i++) {
				Students students=allstudent.get(i);
				Experiments_unjoinstudents unjoinstudents=experimentsService.listunjoinstudentsById(students.getId(),model.getId()).get(i);
				String reason3=unjoinstudents.getReason();
				experimentsService.updatefrontstudent(model.getId(),students.getId(),reason3+"，并且"+reason1);
				
			}
			
			/*只不满足限制实验*/
			for (int i = 0; i < listlimitstudent.size(); i++) {
				Students students2=listlimitstudent.get(i);
				experimentsService.addfrontstudent(model.getId(),students2.getId(),reason2);
				
			}
			
			}
		else if(model.getFrontcate().equals("无前置实验")){
			List<Students> listlimitstudent=experimentsService.listlimitstudent(model.getId());
			String reason2="参加过限制实验：";
			
			for (int i = 0; i < listlimit.size(); i++) {
				Experiments_Limit experiments_Limit=listlimit.get(i);
				Experiments experiments=experimentsService.listById(experiments_Limit.getId()).get(0);
				reason2=reason2+experiments.getName()+""+"或";
			}
			for (int i = 0; i < listlimitstudent.size(); i++) {
				Students students2=listlimitstudent.get(i);
				experimentsService.addfrontstudent(model.getId(),students2.getId(),reason2);
				
			}
		
		}
		else {

			/*限制实验*/
			List<Students> listlimitstudent=experimentsService.listlimitstudent(model.getId());
			allstudent.removeAll(listlimitstudent);
			String reason2="参加过限制实验：";
			for (int i = 0; i < listlimit.size(); i++) {
				Experiments_Limit experiments_Limit=listlimit.get(i);
				Experiments experiments=experimentsService.listById(experiments_Limit.getId()).get(0);
				reason2=reason2+experiments.getName()+""+"或";
			}
			for (int i = 0; i < allstudent.size(); i++) {
				Students students2=allstudent.get(i);
				experimentsService.addfrontstudent(model.getId(),students2.getId(),reason2);
			}
		}
		experimentsService.updateFrontcate(model.getFrontcate(),model.getId());
		List<Students> listunjoinstudents=experimentsService.listunjoinstudentsById(model.getId());
		List<Students> students1=experimentsService.listunjoinstudentsById(listunjoinstudents);
		allstudent1.removeAll(students1);
		session.put("liststudents", allstudent1);
		
		return "Add2Experiments";
		
	}
	
	/*第三步教师手动排除学生：*/
	public String  Add3Experiments() throws Exception{
		@SuppressWarnings("unchecked")
		List<Experiments> listthisexperiments=(List<Experiments>)session.get("listthisexperiments");
		Experiments thisexperiment=listthisexperiments.get(0);
		model.setId(thisexperiment.getId());
		HttpServletRequest request=ServletActionContext.getRequest();
		String[] listhanddelstudents=request.getParameterValues("studentsid[]");
		if (listhanddelstudents==null) {
			
		}
		else{
		String reason ="教师手动排除";
		for (int i = 0; i < listhanddelstudents.length; i++) {
			int students_id = Integer.parseInt(listhanddelstudents[i]);
			experimentsService.addfrontstudent(model.getId(),students_id,reason);
		}
		}
		return "Add3Experiments";
	}
	
	/*第四步：建立场次*/
	public String Add4Experiments() throws Exception{
		
		
		String state="已创建";
		experimentsService.updateExperimentsState(model.getId(),state);
		List<Experiments> listoneexperiments=experimentsService.listById(model.getId());
		List<Experiments_screenings> listscreenings=experimentsService.listScreeningsById(model.getId());
		
		session.put("listoneexperiments", listoneexperiments);
		session.put("listscreenings", listscreenings);
		Experiments experiments=listoneexperiments.get(0);
		int teachers_id=(int)session.get("teachers_id");
		if (experiments.getTeachers_id()==teachers_id) {
			List<Experiments_joinstudents> experiments_joinstudents=experimentsService.listjoinstudentsById(model.getId());
			List<Students> listjoinstudents=experimentsService.listallstudents(experiments_joinstudents);
			session.put("listjoinstudents", listjoinstudents);
		}
		else{
			
		}
		List<Students> allstudent1=experimentsService.listallstudents();
		List<Students> listunjoinstudents=experimentsService.listunjoinstudentsById(model.getId());
		List<Students> students1=experimentsService.listunjoinstudentsById(listunjoinstudents);
		allstudent1.removeAll(students1);
		session.put("liststudents", allstudent1);
		
		/*从这开始*/
		/*Students students=null;
	    Experiments experiments1=null;
		for (int i=0;i<allstudent1.size();i++)
		try{
			Properties props = new Properties();
			props.setProperty("mail.smtp.auth", "true");
			props.setProperty("mail.transport.protocol", "smtp");
			props.setProperty("mail.smtp.host", "smtp.vip.sina.com");
			Session session = Session.getInstance(props, new Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("xmuscxxems", "xmuems.123");
				}
			});
			session.setDebug(true);
			Message msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress("xmuscxxems@vip.sina.com"));
			msg.setHeader("X-Mailer", "Microsoft Outlook Express 6.00.2900.2869");
			msg.setSubject("实验通知");
			List<Experiments> teaexperiments=experimentsService.listById(model.getId());
			students=new Students();
			experiments1=new Experiments();
			students=allstudent1.get(i);
			experiments1=teaexperiments.get(0);
			msg.setRecipients(RecipientType.TO,
					InternetAddress.parse(students.getEmail()));
			msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
					+ "&emsp;&emsp;您好，快去实验管理系统上看一下吧！您的老师"+experiments1.getTeachers_name()+"在"+experiments1.getCreatetime()+"发布了一个"+experiments1.getName()+"实验，请注意查看并参加。<br />"+"<a href=\"http://121.192.191.106/"+"\" >"+"点击参加</a>"+"</span>","text/html;charset=gbk");
			Transport.send(msg);
		}catch (Exception e) {    
            e.printStackTrace();    
        }*/
		return SUCCESS;
	} 

	/*输出所有实验1*/
	public String ListAllExperiments() throws Exception{
		List<Experiments> listallexperiment = experimentsService.listallexperiments();
		session.put("listallexperiment", listallexperiment);
		jsonMap.put("listallexperiment", listallexperiment);
		int size=listallexperiment.size();
		if(size<10){
			jsonMap.put("listallexperiment1", listallexperiment.subList(0,size));
		}
		else{
			jsonMap.put("listallexperiment1", listallexperiment.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		jsonMap.put("pagesize", this.getPageSize());
		return "ListAllExperiments";
	}
	
	public String ListAllExperiments1() throws Exception{
		List<Experiments> listallexperiment = experimentsService.listallexperiments();
		int size=listallexperiment.size();
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("listallexperiment", listallexperiment.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listallexperiment", listallexperiment.subList(this.getFromindex(), this.getToindex()));
		}
		
		return "ListAllExperiments1";
	}

	public String ListAllExperiments2() throws Exception{
		List<Experiments> listallexperiment = experimentsService.listallexperiments();
		List<Experiments> listactiveexperiments= experimentsService.listActive();
		List<Experiments> listunactiveexperiments=experimentsService.listunActive();
		int size1=listallexperiment.size();
		int size2=listactiveexperiments.size();
		int size3=listunactiveexperiments.size();
		if(size1<10){
			session.put("listallexperiment1", listallexperiment.subList(0,size1));
		}
		else{
			session.put("listallexperiment1", listallexperiment.subList(0,10));
		}
		if (size1%10>0) {
			this.setPageSize(size1/10+1);
		} else {
			this.setPageSize(size1/10);
		}
		if (size2%10>0) {
			size2=size2/10+1;
		} else {
			size2=size2/10;
		}
		if (size3%10>0) {
			size3=size3/10+1;
		} else {
			size3=size3/10;
		}
		session.put("pagesize1", this.getPageSize());
		session.put("pagesize2",size2 );
		session.put("pagesize3",size3 );
		return SUCCESS;
	}
	
	
	
	/*根据老师ID输出实验*/
	public String ListTeacherExperiments() throws Exception{
		int teachers_id=(int)session.get("teachers_id");
		List<Experiments> listteacherexperiments=experimentsService.listByteacherId(teachers_id);
		session.put("listteacherexperiments1", listteacherexperiments);
		int size=listteacherexperiments.size();
		if(size<10){
			session.put("listteacherexperiments", listteacherexperiments.subList(0,size));
		}
		else{
			session.put("listteacherexperiments", listteacherexperiments.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		session.put("pagesize", this.getPageSize());
		return SUCCESS;
	}
	
	public String ListTeacherExperiments1() throws Exception{
		int teachers_id=(int)session.get("teachers_id");
		List<Experiments> listteacherexperiments=experimentsService.listByteacherId(teachers_id);
		jsonMap.put("listteacherexperiments1", listteacherexperiments);
		int size=listteacherexperiments.size();
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("listteacherexperiments", listteacherexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listteacherexperiments", listteacherexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		return "ListTeacherExperiments1";
	}
	
	/*老师根据实验ID输出实验*/
	public String ListOneExperiments() throws Exception{
		List<Experiments> listoneexperiments=experimentsService.listById(model.getId());
		List<Experiments_screenings> listscreenings=experimentsService.listScreeningsById(model.getId());
		Experiments_screenings experiments_screenings=listscreenings.get(listscreenings.size()-1);
		session.put("screnings", experiments_screenings.getScreenings());
		session.put("listoneexperiments", listoneexperiments);
		session.put("listscreenings", listscreenings);
		Experiments experiments=listoneexperiments.get(0);
		int teachers_id=(int)session.get("teachers_id");
		if (experiments.getTeachers_id()==teachers_id) {
			String state="未完成";
			List<Experiments_joinstudents> experiments_joinstudents=experimentsService.listjoinstudentsById(model.getId());
			List<Experiments_joinstudents> experiments_joinstudents2=experimentsService.listCompleteStudents(model.getId(),state);
			List<Students> listuncomstudents=experimentsService.listallstudents(experiments_joinstudents2);
			
			List<Students> listjoinstudents=experimentsService.listallstudents(experiments_joinstudents);
			session.put("listjoinstudents", listjoinstudents);
			session.put("experiments_id", experiments.getId());
			session.put("listuncomstudents", listuncomstudents);
			listjoinstudents.removeAll(listuncomstudents);
			session.put("listcomstudents", listjoinstudents);
			
		}
		else{
			
		}
		return SUCCESS;
	}
	
	/*输出能参加的学生*/
	public String ListCanStudents() throws Exception{
		List<Students> experiments_unjoinstudents=experimentsService.listunjoinstudentsById(model.getId());
		List<Students> students=experimentsService.listunjoinstudentsById(experiments_unjoinstudents);
		List<Students> students2=experimentsService.listallstudents();
		List<Experiments_joinstudents> experiments_joinstudents=experimentsService.listjoinstudentsById(model.getId());
		List<Students> listjoinstudents=experimentsService.listallstudents(experiments_joinstudents);
		students2.removeAll(students);
		students2.removeAll(listjoinstudents);
		jsonMap.put("listcanstudents", students2);
		return "ListCanStudents";
	}
	
	/*老师根据实验ID和场次输出学生*/
	public String ListStudentByScreenings() throws Exception{
		List<Students> liststudentbyscreenings=experimentsService.listStudentByScreenings(model.getId(),model.getScreenings());
		jsonMap.put("liststudentbyscreenings", liststudentbyscreenings);
		return "ListStudentByScreenings";
	}
	
	/*输出近期实验2*/
	public String ListResentExperiments() throws Exception{
		int teachers_id=(int)session.get("teachers_id");
		String state="已创建";
		List<Experiments> listresentexperiments=experimentsService.listByState_Teacher(teachers_id,state);
		session.put("listresentexperiments", listresentexperiments);
		return SUCCESS;
	}
	
	/*学生根据实验ID输出实验*/
	public String ListOneExperiments1() throws Exception{
		List<Experiments> listoneexperiments=experimentsService.listById(model.getId());
		List<Experiments_screenings> listscreenings=experimentsService.listScreeningsById(model.getId());
		int students_id=(int)session.get("students_id");
		List<Experiments_unjoinstudents> listunjoinstudent=experimentsService.listoneunjoinstudentById(model.getId(),students_id);
		List<Experiments_joinstudents> listjoinstudent=experimentsService.listonejoinstudentById(model.getId(), students_id);
		if (listunjoinstudent.size()==0) {
			session.put("unjoinstudents", listunjoinstudent);
		}
		else {
			
			session.put("unjoinstudents",listunjoinstudent);
		}
		if (listjoinstudent.size()==0) {
			session.put("joinstudents", listjoinstudent);
		} 
		else {
			Experiments_joinstudents experiments_joinstudents=listjoinstudent.get(0);
			List<Experiments_screenings> listscreenings2=experimentsService.listScreeningsByStudentId(experiments_joinstudents.getExperiments_id(),experiments_joinstudents.getScreenings());
			session.put("joinstudents", listjoinstudent);
			session.put("listscreenings2", listscreenings2);
		}
		session.put("listoneexperiments1", listoneexperiments);
		session.put("listscreenings1", listscreenings);
		
		return SUCCESS;
	}
	/*管理员根据ID输出实验*/
	public String ListOneExperiments2() throws Exception{
		List<Experiments> listoneexperiments=experimentsService.listById(model.getId());
		List<Experiments_screenings> listscreenings=experimentsService.listScreeningsById(model.getId());
		session.put("listoneexperiments", listoneexperiments);
		session.put("listscreenings", listscreenings);
		Experiments experiments=listoneexperiments.get(0);
	
			String state="未完成";
			List<Experiments_joinstudents> experiments_joinstudents=experimentsService.listjoinstudentsById(model.getId());
			List<Experiments_joinstudents> experiments_joinstudents2=experimentsService.listCompleteStudents(model.getId(),state);
			List<Students> listuncomstudents=experimentsService.listallstudents(experiments_joinstudents2);
			
			List<Students> listjoinstudents=experimentsService.listallstudents(experiments_joinstudents);
			session.put("listjoinstudents", listjoinstudents);
			session.put("experiments_id", experiments.getId());
			session.put("listuncomstudents", listuncomstudents);
			listjoinstudents.removeAll(listuncomstudents);
			session.put("listcomstudents", listjoinstudents);
			
		return SUCCESS;
	}
	
/*输出有效实验3*/
	public String ListActiveExperiments() throws Exception{
		List<Experiments> listactiveexperiments= experimentsService.listActive();
		int size=listactiveexperiments.size();
		if(size<10){
			jsonMap.put("listactiveexperiments", listactiveexperiments.subList(0,size));
			session.put("listactiveexperiments", listactiveexperiments.subList(0,size));
		}
		else{
			jsonMap.put("listactiveexperiments", listactiveexperiments.subList(0,10));
			session.put("listactiveexperiments", listactiveexperiments.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		session.put("pageSize2", this.getPageSize());
		return "ListActiveExperiments";
	}
	
	public String ListActiveExperiments1() throws Exception{
		List<Experiments> listactiveexperiments= experimentsService.listActive();
		int size=listactiveexperiments.size();
		
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("listactiveexperiments", listactiveexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listactiveexperiments", listactiveexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		return "ListActiveExperiments1";
	}
	
	/*输出过期实验4*/
	public String ListUnactiveExperiments() throws Exception{
		List<Experiments> listunactiveexperiments=experimentsService.listunActive();
		int size=listunactiveexperiments.size();
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("listunactiveexperiments", listunactiveexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listunactiveexperiments", listunactiveexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		return "ListUnactiveExperiments";
	}
	
	public String ListUnactiveExperiments1() throws Exception{
		List<Experiments> listunactiveexperiments=experimentsService.listunActive();
		int size=listunactiveexperiments.size();
		if(size<10){
			jsonMap.put("listunactiveexperiments", listunactiveexperiments.subList(0,size));
		}
		else{
			jsonMap.put("listunactiveexperiments", listunactiveexperiments.subList(0,10));
		}
		return "ListUnactiveExperiments1";
	}
	
	/*学生查看已自己正在进行的实验*/
	public String ListJOinExperiments() throws Exception{
		int studnets_id=(int)session.get("students_id");
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(studnets_id,state);
		List<Experiments_joinstudents> listjoin1=experimentsService.listjoinstudentsBystudents_id(studnets_id,"已完成");
		List<Experiments_joinstudents> listjoin2=experimentsService.listjoinstudentsBystudents_id(studnets_id,"未完成");
		List<Experiments> liststudentexperiments=experimentsService.listById1(listjoin);
		int size=liststudentexperiments.size();
		int size2=listjoin1.size();
		int size3=listjoin2.size();
		if(size<10){
			session.put("liststudentexperiments", liststudentexperiments.subList(0,size));
		}
		else{
			session.put("liststudentexperiments", liststudentexperiments.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if (size2%10>0) {
			size2=size2/10+1;
		} else {
			size2=size2/10;
		}
		if (size3%10>0) {
			size3=size3/10+1;
		} else {
			size3=size3/10;
		}
		session.put("pagesize4", this.getPageSize());
		session.put("pagesize5", size2);
		session.put("pagesize6", size3);
		return SUCCESS;
	}
	
	
	public String ListJOinExperiments1() throws Exception{
		int studnets_id=(int)session.get("students_id");
		String state="";
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(studnets_id,state);
		List<Experiments> liststudentexperiments=experimentsService.listById1(listjoin);

		int size=liststudentexperiments.size();
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("liststudentexperiments", liststudentexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("liststudentexperiments", liststudentexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		return "ListJOinExperiments1";
	}
	
	/*学生查看已自己已完成的实验*/
	public String ListJOinedExperiments() throws Exception{
		int studnets_id=(int)session.get("students_id");
		String state="已完成";
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(studnets_id,state);
		
		List<Experiments> liststudentexperiments=experimentsService.listById1(listjoin);
		
		
		int size=liststudentexperiments.size();
		if(size<10){
			jsonMap.put("listjoinedexperiments", liststudentexperiments.subList(0,size));
		}
		else{
			jsonMap.put("listjoinedexperiments", liststudentexperiments.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		
		
		return "ListJOinedExperiments";
	}
	
	
	public String ListJOinedExperiments1() throws Exception{
		int studnets_id=(int)session.get("students_id");
		String state="已完成";
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(studnets_id,state);
		List<Experiments> liststudentexperiments=experimentsService.listById1(listjoin);

		int size=liststudentexperiments.size();
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("listjoinedexperiments", liststudentexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listjoinedexperiments", liststudentexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		return "ListJOinedExperiments1";
	}
	
	/*学生查看已自己未完成的实验*/
	public String ListunJOinExperiments() throws Exception{
		int studnets_id=(int)session.get("students_id");
		String state="未完成";
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(studnets_id,state);
		
		List<Experiments> liststudentexperiments=experimentsService.listById1(listjoin);
		
		
		int size=liststudentexperiments.size();
		if(size<10){
			jsonMap.put("listunjoinexperiments", liststudentexperiments.subList(0,size));
		}
		else{
			jsonMap.put("listunjoinexperiments", liststudentexperiments.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		return "ListunJOinExperiments";
	}
	
	
	public String ListunJOinExperiments1() throws Exception{
		int studnets_id=(int)session.get("students_id");
		String state="未完成";
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(studnets_id,state);
		List<Experiments> liststudentexperiments=experimentsService.listById1(listjoin);

		int size=liststudentexperiments.size();
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if(size<10){
			this.setFromindex(0);
			this.setToindex(size);
		}
		else{
			this.setFromindex(0);
			this.setToindex(10);
		}
		
		
		if(this.getCurrent()==0 || this.getCurrent()==1){
			jsonMap.put("listunjoinexperiments", liststudentexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listunjoinexperiments", liststudentexperiments.subList(this.getFromindex(), this.getToindex()));
		}
		return "ListunJOinExperiments1";
	}
	
	/*学生参加实验*/
	public String JoinExperiments() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		int students_id=0;
		students_id=(int) session.get("students_id");
		List<Experiments_screenings> list =experimentsService.listScreeningsById_Screenings(model.getId(), model.getScreenings());
		Experiments_screenings experiments_screenings=list.get(0);
		if(students_id==0){
			if (experiments_screenings.getHavestudents()-experiments_screenings.getNeedstudents()>=0) {
				jsonMap.put("flog", false);
			}
			else {
				students_id= Integer.parseInt(request.getParameter("students_id"));
				experimentsService.addStudents(model.getId(),model.getScreenings(),students_id);
				jsonMap.put("flog", true);
			}
				
		}else{
			if (experiments_screenings.getHavestudents()-experiments_screenings.getNeedstudents()>=0) {
				jsonMap.put("flog", false);
			}
			else{
				experimentsService.addStudents(model.getId(),model.getScreenings(),students_id);
				jsonMap.put("flog", true);
			}
				
		}
		
		return "JoinExperiments";
	}
	
	/*添加参加实验学生*/
	public String AddStudents() throws Exception{
		List<Experiments_screenings> list =experimentsService.listScreeningsById_Screenings(model.getId(), model.getScreenings());
		Experiments_screenings experiments_screenings=list.get(0);
		if (experiments_screenings.getHavestudents()-experiments_screenings.getNeedstudents()>=0) {
			jsonMap.put("flog", false);
		}
		else{
			experimentsService.addStudents(model.getId(),model.getScreenings(),this.getStudents_id());
			jsonMap.put("flog", true);
		}

		return "AddStudents";
	}
	
	/*删除参加实验学生*/
	public String DeleteStudents() throws Exception{
		experimentsService.deleteStudents(model.getId(),model.getScreenings(),this.getStudents_id());
		jsonMap.put("flog", true);
		return "DeleteStudents";
	}
	/*发布实验*/
    public String PubExperiments() throws Exception{
    	String pubexper="已发布";
		experimentsService.pubExperiments(model.getId(),pubexper);
		List<Students> allstudent1=experimentsService.listallstudents();
		List<Students> listunjoinstudents=experimentsService.listunjoinstudentsById(model.getId());
		List<Students> students1=experimentsService.listunjoinstudentsById(listunjoinstudents);
		allstudent1.removeAll(students1);
		Students students=null;
	    Experiments experiments1=null;
		for (int i=0;i<allstudent1.size();i++)
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
			List<Experiments> teaexperiments=experimentsService.listById(model.getId());
			students=new Students();
			experiments1=new Experiments();
			students=allstudent1.get(i);
			experiments1=teaexperiments.get(0);
			msg.setRecipients(RecipientType.TO,
					InternetAddress.parse(students.getEmail()));
			msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
					+ "&emsp;&emsp;您好，快去实验管理系统上看一下吧！您的老师"+experiments1.getTeachers_name()+"在"+experiments1.getCreatetime()+"发布了一个'"+experiments1.getName()+"'实验，请注意查看并参加。<br />"+"<a href=\"http://mrs.xmu.edu.cn\" >"+"立即登录</a>"+"</span>","text/html;charset=gbk");
			Transport.send(msg);
		}catch (Exception e) {    
            e.printStackTrace();    
        }
	    jsonMap.put("flog", true);
		return "pubExperiments";
	}




	/*更新实验*/
	public String UpdateExperiments() throws Exception{
		
		experimentsService.updateExpriments(model.getId(),model.getPay(),model.getCredit(),model.getDetail(),model.getUrl());
		List<Experiments_joinstudents> list=experimentsService.listjoinstudentsById(model.getId());
		List<Students> liststudents=experimentsService.listallstudents(list);
		Students students=null;
	    Experiments experiments=null;
	    Date date=new Date();
	    SimpleDateFormat k = new SimpleDateFormat("yyyy-MM-dd,HH-mm-ss");
	    String time = k.format(date);
	    for (int i=0;i<liststudents.size();i++)
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
			msg.setSubject("实验修改");
			List<Experiments> teaexperiments=experimentsService.listById(model.getId());
			students=new Students();
			experiments=new Experiments();
			students=liststudents.get(i);
			experiments=teaexperiments.get(0);
			msg.setRecipients(RecipientType.TO,
					InternetAddress.parse(students.getEmail()));
			msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
					+ "&emsp;&emsp;您好，快去实验管理系统上看一下吧！您的老师"+experiments.getTeachers_name()+"在"+time+"更新了'"+experiments.getName()+"'实验，请注意查看。"+"<a href=\"http://mrs.xmu.edu.cn\" >"+"立即登录</a>"+"</span>","text/html;charset=gbk");
			Transport.send(msg);
		}catch (Exception e) {    
            e.printStackTrace();    
        }
	    jsonMap.put("flog", true);
		return "UpdateExperiments";
	}
	
	/*完成实验*/
	public String CompleteExperiments() throws Exception{
		String state="已完成";
		experimentsService.completeExperiments(model.getId(),state);
		HttpServletRequest request=ServletActionContext.getRequest();
		String[] studentsid=request.getParameterValues("studentsid");
		List<Experiments> teaexperiments=experimentsService.listById(model.getId());
		List<Experiments_joinstudents> unfinishtime=experimentsService.listjoinstudentsById(model.getId());
		if (studentsid==null) {
			
		} else {
			for (int i = 0; i < studentsid.length; i++) {
				int students_id=Integer.parseInt(studentsid[i]);
				experimentsService.completeStudents(model.getId(),students_id);
				List<Students> unfinishstudents = experimentsService.getStudents(students_id);
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
				msg.setSubject("实验完成");
				Students students=new Students();
				Experiments experiments=new Experiments();
				Experiments_joinstudents experiments_joinstudents=new Experiments_joinstudents();
				students=unfinishstudents.get(0);
				experiments=teaexperiments.get(0);
				experiments_joinstudents=unfinishtime.get(0);
				msg.setRecipients(RecipientType.TO,
						InternetAddress.parse(students.getEmail()));
				msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
						+ "&emsp;&emsp;您好，您的老师"+experiments.getTeachers_name()+"在"+experiments_joinstudents.getTime()+"结束了 '"+experiments.getName()+"' 实验，很遗憾您未完成该实验，详情请登录实验管理系统查看自己信息。"+"<a href=\"http://mrs.xmu.edu.cn\" >"+"立即登录</a>"+"</span>","text/html;charset=gbk");
				Transport.send(msg);
				}catch (Exception e) {    
		            e.printStackTrace();    
		        }
			}
		}
		List<Experiments_joinstudents> finishstudents=experimentsService.list1CompleteStudents(model.getId(), "未完成");
		
		if (finishstudents==null){
			
		}
		else{
	    for(int l=0;l<finishstudents.size();l++ ){
	    Experiments_joinstudents experiments_joinstudents1=finishstudents.get(l);
		List<Students> finish1students = experimentsService.getStudents(experiments_joinstudents1.getStudents_id());
		experimentsService.addState(experiments_joinstudents1.getStudents_id(),model.getId());
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
		msg.setSubject("实验完成");
		Students students=finish1students.get(0);
		Experiments experiments=teaexperiments.get(0);
		Experiments_joinstudents experiments_joinstudents=unfinishtime.get(0);
		msg.setRecipients(RecipientType.TO,
				InternetAddress.parse(students.getEmail()));
		msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
				+ "&emsp;&emsp;您好，您的老师"+experiments.getTeachers_name()+"在"+experiments_joinstudents.getTime()+"结束了'"+experiments.getName()+"'实验，恭喜您完成该实验，详情请登录实验管理系统查看自己信息。"+"<a href=\"http://mrs.xmu.edu.cn\" >"+"立即登录</a>"+"</span>","text/html;charset=gbk");
		Transport.send(msg);
	    }catch (Exception e) {    
            e.printStackTrace();    
        }
		}
	}
	return SUCCESS;
}
	
	/*输出学生最近实验*/
	public String ListStudentsResent() throws Exception{
		int students_id=(int)session.get("students_id");
		List<Experiments_joinstudents> listjoin=experimentsService.listjoinstudentsBystudents_id(students_id);
		List<Experiments> listexperiments=experimentsService.listById1(listjoin);
		List<Experiments> liststudentsresent=experimentsService.listById2(listexperiments);
		Collections.reverse(liststudentsresent);
		session.put("liststudentsresent", liststudentsresent);
		return SUCCESS;
	}
	
	/*输出老师个人信息*/
	public String ListTeachersInfo() throws Exception{
		int teachers_id =(int)session.get("teachers_id");
		List<Teachers> listteachersinfo=experimentsService.listTeacherById(teachers_id);
		session.put("listteachersinfo", listteachersinfo);
		return SUCCESS;
	}
	
	/*打印参加实验学生名单*/
	public String PrintStudents() throws Exception{
		List<Students> liststudents2=experimentsService. listStudentByScreenings(model.getId(),model.getScreenings());
		List<Experiments_screenings> listscreenings3=experimentsService.listScreeningsById_Screenings(model.getId(),model.getScreenings());
		List<Experiments> listexperiments2=experimentsService.listById(model.getId());
		session.put("liststudents2",liststudents2 );
		session.put("listscreenings3",listscreenings3 );
		session.put("listexperiments2",listexperiments2 );
		return SUCCESS;
	}
	
	//打印参加实验所有学生名单
	
	public String printAll() throws Exception{
		List<Experiments> listexperiments=experimentsService.listById(model.getId());
		List<Experiments_screenings> listscreenings=experimentsService.listScreeningsById(model.getId());
		ArrayList<Students> printallstudents=new ArrayList<>();
		for (int i = 0; i < listscreenings.size(); i++) {
			Experiments_screenings experiments_screenings=listscreenings.get(i);
			List<Students> liststudents=experimentsService. listStudentByScreenings(model.getId(),experiments_screenings.getScreenings());
			String screenings=experiments_screenings.getScreenings()+"";
			for (int j = 0; j < liststudents.size(); j++) {
				Students students=liststudents.get(j);
				students.setTime(screenings);
				printallstudents.add(students);
			}
		}
		session.put("printexperiment", listexperiments);
		session.put("printallstudents", printallstudents);
		return SUCCESS;
		
	}
	
	//打印学生参加是呀总数及应付金额或学分
	public String printsPay() throws Exception{
		int teachers_id=(int)session.get("teachers_id");
		HttpServletRequest request=ServletActionContext.getRequest();
		String cate=request.getParameter("cate");
		jsonMap.put("printspayorcredit", countPay.countPay(teachers_id,cate,model.getStarttime(),model.getEndtime()));
		jsonMap.put("cate", cate);
		return "printsPay";
	}
	
	/*删除实验*/
	public String deleteExperiemnts() throws Exception{
		experimentsService.deleteExperiments(model.getId());
		return "deleteExperiemnts";
	}
	
	
	
	public String  a() throws Exception{
//		countPay.countPay();

		return SUCCESS;
		
	}
}

package cn.EMS.action;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import cn.EMS.model.Experiments;
import cn.EMS.model.Students;
import cn.EMS.service.impl.CountPay;

public class StudentsAction extends BaseAction<Students>{
	
	/**
	 * 
	 */

	private static final long serialVersionUID = 1L;
	private Map<String, Object> jsonMap=new HashMap<String, Object>();
	private int id;
	private String password;
	private String repassword;
	private String newpassword;
	private String newemail;
	private String students_password;
	private int pageCount;
	private int pageSize;
	private int current;
	private int fromindex;
	private int toindex;
	private String subject;
	private String content;
	
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

	public String getNewemail() {
		return newemail;
	}

	public void setNewemail(String newemail) {
		this.newemail = newemail;
	}
	
	
	public String getStudents_password() {
		return students_password;
	}

	public void setStudents_password(String students_password) {
		this.students_password = students_password;
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRepassword() {
		return repassword;
	}

	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}

	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}

	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}
	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}


	/*检查学号是否重复*/
	public String Check_StudentsId() throws Exception{
		Students students=studentsService.findById(model.getStudents_id());
		if (students==null) {
			 jsonMap.put("flag", true);
		}
		else {
			jsonMap.put("flag", false);
		}
		
		
		return "Check_StudentsId";
		
	} 
	
	/*检查邮箱是否重复*/
	public String Check_StudentsEmail() throws Exception{
		Students students=studentsService.findByEmail(model.getEmail());
		if (students==null) {
			 jsonMap.put("flag", true);
		}
		else {
			jsonMap.put("flag", false);
		}
		;
		
		return "Check_StudentsEmail";
	}
	
	/*学生注册*/
	public String StudentsRegister() throws Exception{
		Date dt=new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time =format.format(dt);
	
		model.setTime(time);
		model.setState("未激活");
		studentsService.save(model);
		return SUCCESS;	
	}
	
	/*学生账号激活*/
	public String ActivStudents() throws Exception{
		String state="已激活";
		studentsService.activeStudents(model.getId(),state);
		Students students=studentsService.findById(model.getId());
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
			msg.setSubject("账号申请成功");
			msg.setRecipients(RecipientType.TO,
					InternetAddress.parse(students.getEmail()));
			msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
					+ "&emsp;&emsp;您的实验管理系统账号:"+students.getStudents_id()+"已注册成功，快去登录看看有没有要参加的实验去吧！动起来！。"+"<a href=\"http://mrs.xmu.edu.cn\" >"+"立即登录</a>"+"</span>","text/html;charset=gbk");
			Transport.send(msg);
		}catch (Exception e) {    
            e.printStackTrace();    
        }
		return SUCCESS;
	}
	
	/*检查账号密码*/
	public String Check_StudentsLogin() throws Exception{
		String state="已激活";
		Students students=studentsService.findByID_Password(model.getStudents_id(),model.getPassword(),state);
		if (students==null) {
			 jsonMap.put("flag", false);
		}
		else {
			jsonMap.put("flag", true);
			session.put("students_idcs", students.getId());
			session.put("students_id", students.getId());
			session.put("students1_id", students.getStudents_id());
			session.put("students_name", students.getName());
			session.put("students_email", students.getEmail());
			session.put("students_sex", students.getSex());
			session.put("students_tel", students.getTel());
			session.put("students_grade", students.getGrade());
			session.put("students_major", students.getMajor());
			session.put("students_school", students.getSchool());
			session.put("students_password", students.getPassword());
		}
		;
		
		return "Check_StudentsLogin";
	}
	
	/*学生登录*/
	public String StudentsLogin() throws Exception{
		String state="已激活";
		Students students=studentsService.findByID_Password(model.getStudents_id(),model.getPassword(),state);
		session.put("students_idcs", students.getId());
		session.put("students_id", students.getId());
		session.put("students1_id", students.getStudents_id());
		session.put("students_name", students.getName());
		session.put("students_email", students.getEmail());
		session.put("students_sex", students.getSex());
		session.put("students_tel", students.getTel());
		session.put("students_grade", students.getGrade());
		session.put("students_major", students.getMajor());
		session.put("students_school", students.getSchool());
		session.put("students_password", students.getPassword());
		System.out.println("1233");
		return ERROR;
	}
	
	/*根据学号输出学生*/
	public String ListStudentsById() throws Exception{
		
		List<Students> listStudentsById=studentsService.listById(model.getId());
		session.put("listStudentsById", listStudentsById);
		return SUCCESS;
	}
	
	/*根据学号输出学生*/
	public String ListStudentsById1() throws Exception{
		int id=(int)session.get("students_id");
		List<Students> listStudentsById=studentsService.listById(id);
		session.put("listStudentsById", listStudentsById);
		return SUCCESS;
	}
	
	/*根据名字输出学生*/
	public String ListStudentsByName() throws Exception{
		List<Students> listStudentsByName=studentsService.listByName(model.getName());
		session.put("listStudentsByName", listStudentsByName);
		return SUCCESS;
	}
	
	/*输出已激活学生*/
	public String ListAllStudents() throws Exception{
		String state="已激活";
		List<Students> listAllStudents=studentsService.ListActiveStudents(state);
		List<Students> list=studentsService.ListUnActiveStudents("未激活");
		int size=listAllStudents.size();
		int size1=list.size();
		if(size<10){
			session.put("listAllStudents", listAllStudents.subList(0,size));
		}
		else{
			session.put("listAllStudents", listAllStudents.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		if (size1%10>0) {
			size1=size1/10+1;
		} else {
			size1=size1/10;
		}
		session.put("pagesize", this.getPageSize());
		session.put("pagesize1", size1);
		return SUCCESS;
	}
	
	public String ListAllStudents1() throws Exception{
		String state="已激活";
		List<Students> listAllStudents=studentsService.ListActiveStudents(state);
		int size=listAllStudents.size();
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
			jsonMap.put("listAllStudents", listAllStudents.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listAllStudents", listAllStudents.subList(this.getFromindex(), this.getToindex()));
		}
		
		return "ListAllStudents1";
	
	}
	
	/*输出未激活学生*/
	public String ListUnActiveStudents() throws Exception{
		String state="未激活";
		List<Students> listunactivestudents=studentsService.ListUnActiveStudents(state);
		int size=listunactivestudents.size();
		if(size<10){
			jsonMap.put("listunactivestudents", listunactivestudents.subList(0,size));
		}
		else{
			jsonMap.put("listunactivestudents", listunactivestudents.subList(0,10));
		}
		if (size%10>0) {
			this.setPageSize(size/10+1);
		} else {
			this.setPageSize(size/10);
		}
		jsonMap.put("pagesize", this.getPageSize());
		return "ListUnActiveStudents";
	}
	
	public String ListUnActiveStudents1() throws Exception{
		String state="未激活";
		List<Students> listunactivestudents=studentsService.ListUnActiveStudents(state);
		int size=listunactivestudents.size();
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
			jsonMap.put("listunactivestudents", listunactivestudents.subList(this.getFromindex(), this.getToindex()));
		}
		
		else{
			this.setFromindex((this.getCurrent()-1)*10);
			this.setToindex(this.getCurrent()*10<size?this.getCurrent()*10:size);
			jsonMap.put("listunactivestudents", listunactivestudents.subList(this.getFromindex(), this.getToindex()));
			int a =listunactivestudents.subList(this.getFromindex(), this.getToindex()).size();
		}
		
		return "ListUnActiveStudents1";
	
	}
	
	/*修改密码*/
	public String UpdatePassword() throws Exception{
		studentsService.updatePassword(model.getId(),model.getPassword(),this.getNewpassword());
		return SUCCESS;
	}
	/*修改邮箱*/
	public String UpdateEmail() throws Exception{
		studentsService.updateEmail(model.getId(),model.getEmail(),this.getNewemail());
		return SUCCESS;
	}
	/*修改学生个人信息*/
	public String UpdateStudents() throws Exception{
		studentsService.updateById(model.getId(),model.getName(),model.getEmail(),model.getGrade(),
				model.getMajor(),model.getSchool(),model.getTel(),model.getPassword(),model.getRepassword(),model.getSex());
		return SUCCESS;
	} 
	
	/*忘记密码*/
	public String ForgetPassword() throws Exception{
		Students students=studentsService.findPassword(model.getStudents_id(),model.getEmail(),model.getTel(),model.getName());
		if (students!=null) {
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
				msg.setSubject("密码找回");
				msg.setRecipients(RecipientType.TO,
						InternetAddress.parse(students.getEmail()));
				msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
						+ "&emsp;&emsp;您的密码为:"+students.getPassword()+"，请勿告诉他人。"+"</span>","text/html;charset=gbk");
				Transport.send(msg);
			}catch (Exception e) {    
	            e.printStackTrace();    
	        }
			jsonMap.put("flog", true);
		} else {
			jsonMap.put("flog", false);
		}
		
		return "ForgetPassword";	
	}
	
	//测试发邮件
	public String testEmail() throws Exception {
		List<Students> list=studentsService.query();
		for (int i = 0; i < list.size(); i++) {
			Students students=list.get(i);
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
				msg.setSubject("实验管理系统测试邮件");
				msg.setRecipients(RecipientType.TO,
						InternetAddress.parse(students.getEmail()));
				msg.setContent("<span>"+"亲爱的"+students.getName()+"同学<br />"
						+ "&emsp;&emsp;这是一条测试邮件"+"，收到请回复Y。谢谢您的配合！"+"</span>","text/html;charset=gbk");
				Transport.send(msg);
			}catch (Exception e) {    
	            e.printStackTrace();    
	        }
		}
		jsonMap.put("sum", list.size());
		return "testEmail";
	}
	
	//管理员群发邮件
	public String massEmail() throws Exception{
		List<Students> list=studentsService.query();
		
		for (int i = 0; i < list.size(); i++) {
			Students students=list.get(i);
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
				msg.setSubject(this.getSubject());
				msg.setRecipients(RecipientType.TO,
						InternetAddress.parse(students.getEmail()));
				msg.setContent("<span style='word-break:normal; width:auto; display:block; white-space:pre-wrap;word-wrap : break-word ;overflow: hidden ;'>"+
						"亲爱的"+students.getName()+"同学:<br />"
						+this.getContent()+"</span>","text/html;charset=gbk");
				Transport.send(msg);
			}catch (Exception e) {    
	            e.printStackTrace();    
	        }
		}
		jsonMap.put("sum", list.size());
		return "massEmail";
	}

	public String Exitmain() throws ServletException, IOException,Exception {
		   HttpServletRequest request=ServletActionContext.getRequest();
			HttpSession session = request.getSession();//防止创建Session
			if(session == null){
			return SUCCESS;
			}
			else{
			session.invalidate();
			}
			return SUCCESS;
	}
	
	

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
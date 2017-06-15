package cn.EMS.action;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Controller;

import cn.EMS.model.Admins;
import cn.EMS.model.Teachers;


@SuppressWarnings("serial")
@Controller("teachersAction")
public class TeachersAction extends BaseAction<Teachers>{
	private Map<String, Object> jsonMap=new HashMap<String, Object>();
	private String students_password;
	private int id;
	private String newpassword;
	
	
	public String getNewpassword() {
		return newpassword;
	}

	public void setNewpassword(String newpassword) {
		this.newpassword = newpassword;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudents_password() {
		return students_password;
	}

	public void setStudents_password(String students_password) {
		this.students_password = students_password;
	}
	
	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}
	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}
	
	/*����ְ��ѧ���Ƿ��ظ�*/

	 public String Check_TeachersId() throws Exception{
		 Teachers teachers=teachersService.FindById(model.getTeachers1_id());
		 if (teachers==null) {
			 jsonMap.put("flag", true);
		}
		 else{
			 jsonMap.put("flag", false);
		 }
		 return "Check_TeachersId";
	 }
	 
	 /*����ְ�������Ƿ��ظ�*/
	 public String Check_TeachersEmail() throws Exception{
		 Teachers teachers=teachersService.FindByEmail(model.getEmail());
		 if (teachers==null) {
			 jsonMap.put("flag", true);
		}
		 else{
			 jsonMap.put("flag", false);
		 }
		 return "Check_TeachersEmail";
	 }
	 
	/*��ʦע��*/
	public String TeachersRegister() throws Exception{
		Date dt=new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time =format.format(dt);
		model.setTime(time);
		teachersService.save(model);
		return SUCCESS;
	}
	
	/*��ʦ��¼*/
	public String TeachersLogin() throws Exception{


		Teachers teachers=teachersService.Query(model.getTeachers1_id(),model.getPassword());
		session.put("teachers_idcs",teachers.getId());
		session.put("teachers_id",teachers.getId());
		session.put("teachers1_id",teachers.getTeachers1_id());
		session.put("teachers_name", teachers.getName());
		session.put("teachers_email", teachers.getEmail());
		session.put("teachers_tel", teachers.getTel());
		return SUCCESS;	
	}
	
	/*����ʦ�˺�����*/
	public String Check_TeachersLogin() throws Exception{
		Teachers teachers=teachersService.Query(model.getTeachers1_id(),model.getPassword());
		if (teachers==null) {
			jsonMap.put("flag", false);	
	}
	    else{
		    jsonMap.put("flag", true);	
   }
		return "Check_TeachersLogin";
  }
	
	/*���ݽ�ְ���������ʦ*/
	public String ListTeachersById() throws Exception{
		List<Teachers> listTeachersById=teachersService.listById(model.getId());
		session.put("listTeachersById", listTeachersById);
		return SUCCESS;
	}
	/*�������������ʦ*/
	public String ListTeachersByName() throws Exception{
		List<Teachers> listTeachersByName=teachersService.listByName(model.getName());
		session.put("listTeachersByName", listTeachersByName);
		return SUCCESS;
	}
	/*���������ʦ*/
	public String ListAllTeachers() throws Exception{
		List<Teachers> listAllTeachers=teachersService.query();
		session.put("listAllTeachers", listAllTeachers);
		return SUCCESS;
	}
	/*��ʦ�޸ĸ�����Ϣ*/
	public String updateTeachersById() throws Exception{
		 teachersService.updateTeachersById(model.getId(),model.getName(),
				 model.getEmail(),model.getPassword(),model.getRepassword(),
				 model.getSchool(),model.getSex(),model.getTel()); 
	
		return SUCCESS;
		
		
	}
	
	/*��ʦ�޸�����*/
	public String UpdateTeachersPassword() throws Exception{
		int id=(int)session.get("teachers_id");
		
		List<Teachers> list=teachersService.listById(id);
		Teachers teachers=list.get(0);
		String password=teachers.getPassword();
		String  password1=model.getPassword();
		if (password.equals(password)==password1.equals(password1)) {
			teachersService.updatepassword(id,model.getPassword(),this.getNewpassword());
			jsonMap.put("flog",true);
		} 
		else {
			jsonMap.put("flog",false);
		}
		return "UpdateTeachersPassword";
	}
	
	
}
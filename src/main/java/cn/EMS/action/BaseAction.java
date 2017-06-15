package cn.EMS.action;

import java.lang.reflect.ParameterizedType;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.EMS.service.AdminsService;
import cn.EMS.service.ExperimentsService;
import cn.EMS.service.Experiments_FrontService;
import cn.EMS.service.Experiments_LimitService;
import cn.EMS.service.Experiments_joinstudentsService;
import cn.EMS.service.Experiments_screeningsService;
import cn.EMS.service.Experiments_unjoinstudentsService;
import cn.EMS.service.StudentsService;
import cn.EMS.service.TeachersService;






public class BaseAction<T> extends ActionSupport implements RequestAware,SessionAware, ApplicationAware,ModelDriven<T>{
	private static final long serialVersionUID = 1L;
	//注入service

	/*@Resource(name="usersService")
	protected UsersService usersService;
	@Resource(name="usersprojectService")
	protected ProjectsService projectsService;*/
	@Resource(name="adminsService")
	protected AdminsService adminsService;
	@Resource(name="experiments_joinstudentsService")
	protected Experiments_joinstudentsService experiments_joinstudentsService;
	@Resource(name="experiments_screeningsService")
	protected Experiments_screeningsService experiments_screeningsService;
	@Resource(name="experiments_unjoinstudentsService")
	protected Experiments_unjoinstudentsService experiments_unjoinstudentsService;
	@Resource(name="experimentsService")
	protected ExperimentsService experimentsService;
	@Resource(name="studentsService")
	protected StudentsService studentsService;
	@Resource(name="teachersService")
	protected TeachersService teachersService;
	@Resource(name="experiments_LimitService")
    protected Experiments_LimitService experiments_LimitService;
	@Resource(name="experiments_FrontService")
	protected Experiments_FrontService experiments_FrontService;
	
	
	//在调用构造方法的时候给model赋值
	protected T model;
	public BaseAction() {
		ParameterizedType type = (ParameterizedType) this.getClass()
				.getGenericSuperclass();
		Class clazz = (Class) type.getActualTypeArguments()[0];
		try {
			model = (T) clazz.newInstance();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}
	
	//返回的对象将要压栈
	@Override
	public T getModel() {
		return model;
	}
	protected Map<String,Object> request;
	protected Map<String,Object> session;
	protected Map<String,Object> application;
	@Override
	public void setApplication(Map<String, Object> application) {
		this.application=application;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request=request;
	}
	
	
	

}

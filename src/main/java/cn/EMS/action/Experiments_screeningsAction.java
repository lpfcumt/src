package cn.EMS.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import cn.EMS.model.Experiments;
import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Students;

public class Experiments_screeningsAction extends BaseAction<Experiments_screenings>{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Map<String, Object> jsonMap=new HashMap<String, Object>();
	public Map<String, Object> getJsonMap() {
		return jsonMap;
	}
	public void setJsonMap(Map<String, Object> jsonMap) {
		this.jsonMap = jsonMap;
	}
	
	public String add() throws Exception{
		@SuppressWarnings("unchecked")
		List<Experiments> listthisexperiments=(List<Experiments>)session.get("listthisexperiments");
		Experiments thisexperiment=listthisexperiments.get(0);
		model.setExperiments_id(thisexperiment.getId());
		model.setState("已创建");
		experiments_screeningsService.save(model);
		return "add";
	}
	
	//添加场次
	public String addScreenings() throws Exception{		
		model.setState("已创建");
		experiments_screeningsService.save(model);
		jsonMap.put("flog", true);
		return "addScreenings";
	}
	
	public String deleteScreenings() throws Exception{
		experiments_screeningsService.deleteScreenings(model.getExperiments_id(),model.getScreenings());
		jsonMap.put("flog", true);
		return "deleteScreenings";
		
	}
	
	//修改场次信息
	public String reScreenings() throws Exception{
		experiments_screeningsService.reScreenings(model.getExperiments_id(),model.getScreenings(),model.getStarttime(),model.getEndtime(),
				model.getField(),model.getNeedstudents());
				jsonMap.put("flog", true);
		return "reScreenings";
	}
	
	
	public  String a() throws Exception{
		int id=52;
		List<Students> list=experiments_screeningsService.listfront(id);
		System.out.println(list);
		return SUCCESS;
	}
}

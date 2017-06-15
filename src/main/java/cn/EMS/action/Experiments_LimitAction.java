package cn.EMS.action;


import java.util.HashMap;
import java.util.Map;

import cn.EMS.model.Experiments_Limit;
public class Experiments_LimitAction extends BaseAction<Experiments_Limit>{

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
	
	public String SaveLimit() throws Exception{
		experiments_LimitService.save(model);
		jsonMap.put("flag", false); 
		return "SaveLimit";
	}
}

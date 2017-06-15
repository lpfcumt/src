package cn.EMS.action;

import java.util.HashMap;
import java.util.Map;

import cn.EMS.model.Experiments_Front;

public class Experiments_FrontAction extends BaseAction<Experiments_Front>{

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
	public String SaveFront() throws Exception{
		
		experiments_FrontService.save(model);
		jsonMap.put("flag", false); 
		return "SaveFront";
	}
}

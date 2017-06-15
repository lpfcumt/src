package cn.EMS.dao;

import java.util.List;

import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Students;

public interface Experiments_screeningsDao extends BaseDao<Experiments_screenings>{

	List<Students> listfront(int id);

	void deleteScreenings(int experiments_id, int screenings);

	void reScreenings(int experiments_id, int screenings, String starttime, String endtime, String field,
			int needstudents);

}

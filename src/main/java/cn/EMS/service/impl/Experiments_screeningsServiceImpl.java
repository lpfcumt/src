package cn.EMS.service.impl;


import java.util.*;

import org.springframework.stereotype.Service;

import cn.EMS.model.Experiments_screenings;
import cn.EMS.model.Students;
import cn.EMS.service.Experiments_screeningsService;
@Service("experiments_screeningsService")
public class Experiments_screeningsServiceImpl extends BaseServiceImpl<Experiments_screenings> implements Experiments_screeningsService  {

	@Override
	public List<Students> listfront(int id) {
		// TODO Auto-generated method stub
		return experiments_screeningsDao.listfront(id);
	}

	@Override
	public void deleteScreenings(int experiments_id, int screenings) {
		// TODO Auto-generated method stub
		experiments_screeningsDao.deleteScreenings(experiments_id, screenings);
	}

	@Override
	public void reScreenings(int experiments_id, int screenings, String starttime, String endtime, String field,
			int needstudents) {
		// TODO Auto-generated method stub
		experiments_screeningsDao.reScreenings(experiments_id, screenings, starttime, endtime, field, needstudents);
	}

	

}

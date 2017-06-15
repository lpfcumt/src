package cn.EMS.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.EMS.dao.AdminsDao;
import cn.EMS.model.Admins;

@Repository("adminsDao")
public class AdminsDaoImpl extends BaseDaoImpl<Admins> implements AdminsDao{

	@Override
	public List<Admins> findById_Password(int id, String password) {
		// TODO Auto-generated method stub
		return findByHql("from admins where id="+id+" and password='"+password+"'");
	}

}

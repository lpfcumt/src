package cn.EMS.dao;

import java.util.List;

import cn.EMS.model.Admins;

public interface AdminsDao extends BaseDao<Admins>{

	List<Admins> findById_Password(int admins_id, String admins_password);

}

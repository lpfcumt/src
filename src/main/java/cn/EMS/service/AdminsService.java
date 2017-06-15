package cn.EMS.service;

import cn.EMS.model.Admins;
	public interface AdminsService extends BaseService<Admins> {

		Admins findById_Password(int admins_id, String admins_password);

	}
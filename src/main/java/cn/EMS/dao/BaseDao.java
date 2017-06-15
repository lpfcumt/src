package cn.EMS.dao;

import java.util.List;



public interface BaseDao<T>{

	void save(T t);

	void update(T t);
	// ɾ��ʵ��
	void delete(T t);
	//����IDɾ��ʵ��
	void delete(int id);
	// ������ѯ��ǰ����, ��֧�ּ�����ѯ
	List<T> query();
	//����ID����ʵ��
	T get(int id);
	

	//��ҳ
	List<T> findByPage(String hql,int page,int rows);
	//��ѯ����
	long count(String hql);
	//����������ѯ
	List<T> findByHql(String hql);

	

	/*void save1(ProjectsRepay t);
	
	void save3(CollectProject t);
	
	void save4(SupportProject t);*/
}

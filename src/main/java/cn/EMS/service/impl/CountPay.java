package cn.EMS.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import cn.EMS.model.Experiments;
import cn.EMS.model.Students;
import cn.EMS.service.ExperimentsService;

@Component
public class CountPay {
	@Resource(name="experimentsService")
	private ExperimentsService experimentsService;
	
	public ArrayList<Students> countPay(int teachers_id,String cate,String starttime,String endtime){
		final String STATE="已完成";
		ArrayList<Students> printspayorcredit=new ArrayList<>();
		ArrayList<Students> printspayorcredit3=new ArrayList<>();
		/*获取参加该时间段实验的所有学生*/
		List<Experiments> listExperiment = experimentsService.listExperimentsByStateAndTime(teachers_id,cate,starttime,endtime);
		for (Experiments experiments : listExperiment) {
		
			List<Students> liststudents=experimentsService.listjoinstudentsById(experiments.getId(),STATE);
			for (Students students : liststudents) {
				printspayorcredit.add(students);				
			}
				
		}
		/*去除printspayorcredit的重复数据*/
		for (int i = 0; i < printspayorcredit.size(); i++) {
			Students students1=printspayorcredit.get(i);
			int n=0;
			for (int j = 0; j < printspayorcredit.size(); j++) {
				
				Students students2=printspayorcredit.get(j);
				if (students1.getId()==students2.getId()) {
					n+=1;
					if (n>1) {
						printspayorcredit.remove(j);
					}
				}
			}
			
		}
		/*结算次数和支付*/
		for (int i = 0; i < printspayorcredit.size(); i++) {
			Students students=printspayorcredit.get(i);
			List<Object[]> list=experimentsService.countPay(students.getId(),listExperiment,cate);
			for (Object[] objects : list) {
				Double pay =(Double) objects[0];
				String count=objects[1].toString();
				students.setCount(Integer.parseInt(count));
				students.setPay(pay);
			}
			printspayorcredit3.add(students);
		}

		return printspayorcredit3;
	}
	
}

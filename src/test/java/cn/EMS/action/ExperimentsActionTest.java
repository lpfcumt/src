package cn.EMS.action;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.AbstractJUnit4SpringContextTests;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.EMS.model.Experiments;
import cn.EMS.model.Students;
import cn.EMS.service.ExperimentsService;
import cn.EMS.service.impl.CountPay;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext-public.xml")
public class ExperimentsActionTest extends AbstractJUnit4SpringContextTests{
	@Resource(name="experimentsService")
	private ExperimentsService experimentsService;
	@Autowired
	private  CountPay countPay;
	@Test
	public  void test() {
//		String cate="现场现金实验";
//		Float credit=null;
//		Float pay=null;
//		String state="已完成";
//		int count=0;
//		int n=0;
//		ArrayList<Students> printspayorcredit=new ArrayList<>();
//		ArrayList<Students> printspayorcredit1=new ArrayList<>();
//		List<Experiments> listExperiment = experimentsService.listExperimentsByStateAndTime(1,cate,"2017-05-10 00:00:00","2017-05-16 00:00:00");
//		if (cate.equals("现场现金实验")) {
//			for (Experiments experiments : listExperiment) {
//				List<Students> liststudents=experimentsService.listjoinstudentsById(experiments.getId(),state);
//				pay=Float.parseFloat(experiments.getPay());
//				count=1;
//				for (Students students : liststudents) {
//					students.setCount(1);
//					students.setPay(Float.parseFloat(experiments.getPay()));
//					printspayorcredit.add(students);				
//			}
//				
//			}
//		}
//		countPay.countPay();
		
//		printspayorcredit1.addAll(printspayorcredit);
//		ArrayList<Students> printspayorcredit3=new ArrayList<>();
//		System.out.println(printspayorcredit1.size());
//		/*去除printspayorcredit的重复数据*/
//		for (int i = 0; i < printspayorcredit.size(); i++) {
//			Students students1=printspayorcredit.get(i);
////			Students students=printspayorcredit.get(i);
//			n=0;
//			count=0;
//			pay=0.0;
//			for (int j = 0; j < printspayorcredit1.size(); j++) {
//				Students students2=printspayorcredit1.get(j);
//				if (students1.getId()==students2.getId()) {
//					n+=1;
//					pay=students2.getPay()+pay;
//					if (n>1) {
//						System.out.println(n);
//						students1.setCount(n);
//						students1.setPay(pay);
//						
//					}
//					printspayorcredit1.remove(j);
//					
//				}
//			}
//			
//			printspayorcredit3.add(students1);
//		}
//		printspayorcredit1.addAll(printspayorcredit3);
//		for (int i = 0; i < printspayorcredit1.size(); i++) {
//			Students students1=printspayorcredit1.get(i);
//			n=0;
//			for (int j = 0; j < printspayorcredit1.size(); j++) {
//				Students students2=printspayorcredit1.get(j);
//				if (students1.getId()==students2.getId()) {
//					n+=1;
//					if (n>1) {
//						printspayorcredit1.remove(j);
//					}
//				}
//			}
//			
//		}
//		System.out.println(printspayorcredit1.size());
//		for (Students students : printspayorcredit1) {
//			System.out.println(students.getCount()+" "+students.getPay());
//		}
//		

	}
	
	@Test
	public void test2() {
		

	}
}

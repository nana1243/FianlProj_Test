package app;

import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import top.controller.HeadquarterController;
import top.vo.ChainVO;
import top.vo.NotiVO;

public class Test {

	public static void main(String[] args) {
		AbstractApplicationContext factory = new GenericXmlApplicationContext("myspring.xml");
//		
//		
//		
//		
//		String hqid = (String) session.getAttribute("loginId");
////		logger.info(hqid);
//
//		// step1. hq�� �ô� chainid�� ��� �ҷ��´�
//		ArrayList<String> chainIdList = new ArrayList<String>();
//		ArrayList<ChainVO> clist = chainbiz.getbyhq(hqid);
//	
//		System.out.println("clist :" +  clist);
//		for (ChainVO element : clist) {
//			String chainid = element.getChainID();
//			System.out.println(chainid);
//			chainIdList.add(chainid);
//
//		}
//		System.out.println(chainIdList);
//
//		// STEP2. �ش��ϴ� CHAINID�� ���� ��� noti�� �ҷ��´�
//		// �̋��� notification�� refresh ="true"�϶��� �ҷ��´�
//
//		ArrayList<NotiVO> notiList = new ArrayList<NotiVO>();
//
//		for (int i = 0; i < chainIdList.size(); i++) {
//			NotiVO noti = notibiz.get(chainIdList.get(i));
//			if (noti != null) {
//				System.out.println(noti);
//				notiList.add(noti);
//			}
//		}
//		System.out.println("check notiList size : " + notiList.size());
//
//		// step3. ������ �ڹٽ�ũ��Ʈ�� ���� �ֵ鸸 !
//		// and ajax�� �����ٸ� -> update�� ���¸� �ٲ��ش�
//
//		JSONArray array = new JSONArray();
//		for (NotiVO element : notiList) {
//			JSONObject data = new JSONObject();
//			String applycnt = element.getApplycnt();
//
//			System.out.println("applycnt" + applycnt);
//			String chainid = element.getChainid();
//			System.out.println("chainid" + chainid);
//			data.put("chainid", chainid);
//			data.put("applycnt", applycnt);
////			notibiz.refreshstate(chainid);
//			array.add(data);
//		}
//
//		System.out.println(array);
//		System.out.println("success ajax!");
//		return array;
	
//		Logger logger = LoggerFactory.getLogger(top.controller.HeadquarterController.class);
//		String msg = "hi";
//		
//
//		logger.info(msg);
//		logger.error(msg);
//		logger.debug(msg);
//		logger.info(msg);
//	
	}

}

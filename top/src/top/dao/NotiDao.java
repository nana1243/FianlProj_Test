package top.dao;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import top.frame.Dao;
import top.mapper.NotiMapper;
import top.vo.NotiVO;

@Repository("notidao")
public class NotiDao implements Dao<String, NotiVO>{
	
	
	// ���⼭�� INSERT�� USER_APPLY�� ��ü�� �������ش�
	
	
	
	@Autowired
	NotiMapper notimapper;

	@Override
	public NotiVO select(String id) {
		return notimapper.select(id);
	}
	
	@Override
	public void updatestate(String chainid) {
		notimapper.updaterefresh(chainid);
	}

	@Override
	public ArrayList<NotiVO> selectall() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public NotiVO selectname(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(NotiVO model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void insert(NotiVO model) {
		notimapper.insert(model);
		
	}

	@Override
	public void applycnt(NotiVO model) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ArrayList<NotiVO> selectnotifi(String hqid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
	
	
	
	
	

}

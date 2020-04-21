package top.mapper;

import java.util.ArrayList;

import top.vo.ChainVO;

public interface ChainMapper {

	public ChainVO select(String chainID);

	public ArrayList<ChainVO> selectall();
	
	
	
	// hq�� ���� chain�� ��� �ҷ����� ���ؼ�
	public ArrayList<ChainVO> selectnotifi(String hqid);
	
	
	public void insert(ChainVO chainvo);
	
	public ChainVO selectchainname(String chainid);
	
	public void update(ChainVO chainvo);
	
	public void applycnt(ChainVO chainvo);
	
	

}
package top.mapper;

import top.vo.NotiVO;

public interface NotiMapper {

	public void insert(NotiVO notivo);
	
	
	// hq�� �ô� ������ chainId�� �ش��ϴ� noti�� ��� �ҷ��´�
	public NotiVO  select(String chainId);
	
	
	//refresh ���°� �ٲ�� ��!
	public void updaterefresh(String chainId);
	
	
	
	
}

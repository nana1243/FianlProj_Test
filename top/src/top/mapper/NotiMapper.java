package top.mapper;

<<<<<<< HEAD
import java.util.ArrayList;

=======
>>>>>>> 40f9fadf40938334de6bf4230644184efe8f4633
import top.vo.NotiVO;

public interface NotiMapper {

	public void insert(NotiVO notivo);
	
	
	// hq�� �ô� ������ chainId�� �ش��ϴ� noti�� ��� �ҷ��´�
	public NotiVO  select(String chainId);
	
	
	//refresh ���°� �ٲ�� ��!
	public void updaterefresh(String chainId);
	
<<<<<<< HEAD
	public ArrayList<NotiVO> selectall();
=======
	
>>>>>>> 40f9fadf40938334de6bf4230644184efe8f4633
	
	
}

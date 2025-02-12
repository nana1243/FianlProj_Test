package top.biz;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import top.frame.Biz;
import top.frame.Dao;
import top.vo.UserVO;

@Service("ubiz")
public class UserBiz implements Biz<String, UserVO> {

	@Resource(name = "userdao")
	Dao<String, UserVO> dao;
	
	@Override
	public UserVO get(String userID) {
		return dao.select(userID);
	}

	@Override
	public ArrayList<UserVO> get() {
		return dao.selectall();
	}
	
	@Override
	public void register(UserVO model) throws Exception {
		dao.insert(model);
		
	}

	



}
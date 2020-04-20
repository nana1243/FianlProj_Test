package top.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;




import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import top.frame.Biz;
import top.vo.ChainVO;
import top.vo.HeadquarterVO;
import top.vo.NotiVO;
import top.vo.UserVO;

@Controller
public class UserController {
	

	@Resource(name = "ubiz")
	Biz<String, UserVO> ubiz;

	@Resource(name = "hqbiz")
	Biz<String, HeadquarterVO> hqbiz;

	@Resource(name = "chainbiz")
	Biz<String, ChainVO> chainbiz;
	
	
	/*
	 * 1.login (�Ϸ�)
	 * 2.logout( �Ϸ�)
	 * 3.logincheck up(�Ϸ�)
	 * 4.apply.top (user��û�� page)
	 *  
	 * */
	

	// login
	@RequestMapping("/login.top")
	public ModelAndView login(HttpServletRequest request) {

		System.out.println("entered login.top");
		ModelAndView mv = new ModelAndView();
		mv.addObject("center", "../user/login");
		mv.setViewName("main/main");
		return mv;
	}

	// logout
	@RequestMapping("/logout.top")
	public String logout(HttpServletRequest request, ModelAndView mv) {
		HttpSession session = request.getSession();
		if (session != null) {
			session.invalidate();
		}
		return "redirect:main.top";
	}

	// login ID available check up START!!
	
	/*
	 * 1. ajax�� ���� parameter(id, pwd, radio_button) ���޴´�
	 * 2. �׸��� ���� radio������ hq/ user������ �����ϰ�
	 * 3. ���̵� Ȥ�� ��� �� �ϳ��� Ʋ���� str="No" ���̿ܿ��� "Yes"
	 * */

	@RequestMapping(value = "/logincheckup.top", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public @ResponseBody String AjaxView(@RequestParam("ID") String id, @RequestParam("password") String pwd,
			@RequestParam("radio") String radio, String str, HttpServletRequest request)
			throws UnsupportedEncodingException {
		request.setCharacterEncoding("UTF-8");
		System.out.println("enter into login check!");
		str = "";
		try {
			// login �ϴ� ����� user�϶�
			if (radio.equals("user")) {
				UserVO user = ubiz.get(id);
				System.out.println(user);
				if (user.getUserPwd().equals(pwd)) {
					str = "Yes";
				} else {
					str = "NO";

				}
				// login �ϴ� ����� hq�ϋ�
			} else if (radio.equals("hq")) {
				HeadquarterVO hq = hqbiz.get(id);
				System.out.println(hq);
				if (hq.getHqPwd().equals(pwd)) {
					str = "Yes";
				} else {
					str = "NO";
				}
			}

		} catch (Exception e) {
			str = "NO";
			return str.trim();
		}
		System.out.println(str);
		return str;
	}

	// loginimpl
	@RequestMapping("/loginimpl.top")
	public String loginimpl(HttpServletRequest request, ModelAndView mv) {
		
		// step1. form���� ���� �ʿ��� name�� �޾ƿ´�
		String id = request.getParameter("ID").trim();
		String pwd = request.getParameter("password");
		String[] radio = request.getParameterValues("radio");

		// step2. �ʿ��� vo��ü�� �ҷ����� ���� pwd�� ��ġ�ϴ��� Ȯ��
		if (radio[0].equals("hq")) {
			HeadquarterVO dbhquser = new HeadquarterVO();
			HttpSession session = request.getSession();
			session.setAttribute("loginId", id);
			session.setAttribute("chaincnt", dbhquser.getChainCount());	
		}
		 else {
			UserVO dbuser = null;
			HttpSession session = request.getSession();
			session.setAttribute("loginId", id);
		 }				
		return "redirect:main.top";
	}



	// user ��û�� �޴� page

	@RequestMapping("/apply.top")
	public ModelAndView apply(HttpServletRequest request) {
		System.out.println("entered apply.top");
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String usrid = (String) session.getAttribute("loginId");
		System.out.println("in apply.top check hqid : " + usrid);

		// user�Ѱ��� chain ��
		String chainId=ubiz.get(usrid).getChainID();
		System.out.println(chainId);
		
		ChainVO chainvo = chainbiz.getname(chainId);
		System.out.println(chainvo);
		String cname = chainbiz.getname(chainId).getChainName();
		System.out.println(cname);
		mv.addObject("center", "../user/apply");
		mv.addObject("cname", cname);
		mv.setViewName("main/main");
		return mv;
	}

	// ��û�ڸ� �ް� ���� admin page�� user�� ��û�ڼ��� �Ѱܶ�

	@RequestMapping("/applyimpl.top")
	public ModelAndView applyimpl(HttpServletRequest request) {
		System.out.println("entered applyimpl.top");
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		String usrid = (String) session.getAttribute("loginId");
		String chainId=ubiz.get(usrid).getChainID();
		String ucnt = request.getParameter("ucnt");	
		ChainVO chainvo = new ChainVO(chainId,ucnt);
		chainbiz.modifycnt(chainvo);
		System.out.println("success!");


				
		mv.addObject("center", "../user/apply");
		mv.setViewName("main/main");
		return mv;
	}

	// show mypage

	// modify mypage

}

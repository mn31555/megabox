package com.megabox.member.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.megabox.member.dto.Member;
import com.megabox.member.service.MemberService;
import com.megabox.store.service.ProductService;

//로그인 - 회원가입 컨트롤러

// - 로그인(DB비교) / 회원가입(id중복확인) / 마이페이지(회원정보수정) / ID찾기 / PW 찾기 

@Controller
@RequestMapping("/member")
public class MemberController {

	// 얘를 호출하면 MemberServiceImpl이 딸려들어옴
	@Autowired
	private MemberService MemberService;
	private ProductService ProductService;

	// 로그인 화면 - (완성)
	// @RequestMapping(value = "/moviestar/login", method = RequestMethod.GET)
	@GetMapping("/login")
	public ModelAndView login() throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/login");

		return mav;
	}

	// 마이 페이지
	// - 여기에 로그인 된 유저의 회원정보를 불러온다.(getReadData)
	@RequestMapping(value = "/mypage", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView myPage(HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {

		ModelAndView mav = new ModelAndView();

		Member info = (Member) session.getAttribute("memberInfo");
		Member mem = MemberService.getReadData(info.getMemberId());
		request.setAttribute("mem", mem);

		mav.setViewName("/mypage");
		return mav;
	}

	// 마이 페이지 처리(DB에 수정된 값 저장)
	@RequestMapping(value = "/mypage_ok", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView myPage_ok(Member m, HttpServletRequest request, HttpServletResponse response,
			HttpSession session) throws Exception {

		System.out.println("마이 페이지 처리");

		ModelAndView mav = new ModelAndView();

		Member info = (Member) session.getAttribute("memberInfo");

		m.setMemberId(info.getMemberId());
		MemberService.updateMember(m);

		mav.setViewName("redirect:/main");
		return mav;
	}

	// 로그인 처리 - (완성)
	@RequestMapping(value = "/login_ok", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView login_ok(HttpServletResponse response, HttpServletRequest request) throws Exception {

		ModelAndView mav = new ModelAndView();

		HttpSession session = request.getSession();
		String id = request.getParameter("memberId");

		// String id_rem = request.getParameter("idsave"); // 아아디 저장(쿠키활용)

		Member member = MemberService.getReadData(id); // 하나의 유저 정보 가져오기

		session.setAttribute("memberInfo", member);

		mav.setViewName("redirect:/main");

		return mav;
	}

	// 로그인 DB판별 Ajax
	@RequestMapping(value = "/loginAjax", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int loginAjax(@RequestParam("memberId") String memberId, @RequestParam("mPassword") String mPassword)
			throws Exception {

		int count = 0;
		count = MemberService.memberLogin(memberId, mPassword);

		return count;
	}

	// 회원탈퇴 처리
	@RequestMapping(value = "/delete", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView delete(HttpSession session, @RequestParam("memberId") String memberId,
			@RequestParam("mPassword") String mPassword) throws Exception {
		ModelAndView mav = new ModelAndView();
		// 삭제
		MemberService.deleteMember(memberId, mPassword);
		// 세션 종료
		session.invalidate();
		// 세션 종료하고 메인 페이지로 리다이렉트(이동)
		mav.setViewName("redirect:/main");
		return mav;

	}

	// 로그아웃 처리 - (완성)
	@GetMapping("/logout")
	public ModelAndView logout(HttpSession session) {

		ModelAndView mav = new ModelAndView();
		// 세션 종료
		session.invalidate();

		// 세션 종료하고 메인 페이지로 리다이렉트(이동)
		mav.setViewName("redirect:/main");

		return mav;
	}

	// 회원가입 화면 - (완성)
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public ModelAndView join() throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/join");

		return mav;
	}

	// 주소 OpenAPI
	@RequestMapping(value = "/jusoPopup")
	public ModelAndView juso() throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/jusoPopup");

		return mav;
	}

	// 회원가입 처리 - (완성)
	@RequestMapping(value = "/join_ok", method = RequestMethod.POST)
	public ModelAndView join_ok(Member m) throws Exception {
		ModelAndView mav = new ModelAndView();

		MemberService.memberJoin(m);
		System.out.println("Insert 성공");
		mav.setViewName("/join_ok");

		return mav;
	}

	// ID 중복확인
	@RequestMapping(value = "/idcheck", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public int idcheck(@RequestParam("memberId") String memberId) throws Exception {

		int count = MemberService.idcheck(memberId);
		return count;
	}

	// ID 찾기 화면
	@RequestMapping(value = "/searchId", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView searchId(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/searchId");

		return mav;
	}

	// ID찾기 화면 처리
	@RequestMapping(value = "/searchId_ok", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView searchId_ok(String mName, String mEmail, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		String id = MemberService.findId(mName, mEmail);
		request.setAttribute("id", id);

		// return "/movie/searchId_com";
		mav.setViewName("/searchId_ok");

		return mav;
	}

	// Id 찾기 DB판별 Ajax
	@RequestMapping(value = "/idAjax", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String idAjax(@RequestParam("mName") String mName, @RequestParam("mEmail") String mEmail) throws Exception {
		String id = MemberService.findId(mName, mEmail);
		return id;
	}

	// PW 찾기 화면
	@RequestMapping(value = "/searchPw", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView searchPw(HttpServletRequest request, HttpServletResponse response) {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/searchPw");

		return mav;
	}

	// PW 찾기 화면 처리
	@RequestMapping(value = "/searchPw_ok", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView searchPw_ok(String memberId, String mName, String mEmail, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ModelAndView mav = new ModelAndView();
		String pw = MemberService.findPw(memberId, mName, mEmail);
		request.setAttribute("pw", pw);

		mav.setViewName("/searchPw_ok");

		return mav;
	}

	// PW 찾기 DB 판별 Ajax
	@RequestMapping(value = "/pwAjax", method = { RequestMethod.GET, RequestMethod.POST })
	@ResponseBody
	public String pwAjax(@RequestParam("memberId") String memberId, @RequestParam("mName") String mName,
			@RequestParam("mEmail") String mEmail) throws Exception {

		String pw = MemberService.findPw(memberId, mName, mEmail);
		System.out.println(pw);
		return pw;
	}

}

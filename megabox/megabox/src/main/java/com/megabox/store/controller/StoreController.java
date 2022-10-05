package com.megabox.store.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.megabox.store.service.ProductService;
import com.megabox.member.dto.Member;
import com.megabox.member.service.MemberService;
import com.megabox.store.dto.Product;

@Controller
@RequestMapping("/store")
public class StoreController {

	// 얘를 호출하면 MemberServiceImpl이 딸려들어옴
	@Autowired
	private ProductService ProductService;
	private MemberService MemberService;

	@GetMapping("/main")
	public ModelAndView store() throws Exception {

		ModelAndView mav = new ModelAndView();
		List<Product> productList = ProductService.getProductData();
		List<Product> productList2 = ProductService.getProductData2();
		mav.addObject("productList", productList);	
		mav.addObject("productList2", productList2);	
		System.out.println(productList);
		System.out.println(productList2);
		mav.setViewName("/store");

		return mav;
	}
	
	@GetMapping("/event")
	public ModelAndView event() throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/event");

		return mav;
	}
	@RequestMapping(value = "/payment", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView payment(String productNo, String amount, String sum) throws Exception {

		ModelAndView mav = new ModelAndView();
		Product product = ProductService.getInfo(productNo);
		mav.addObject("product", product);
		mav.addObject("amount",amount);
		mav.addObject("sum",sum);
		System.out.println(product + amount + sum);
		mav.setViewName("/payment");

		return mav;
	}
	
	@RequestMapping(value = "/payment_gift", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView payment_gift(String productNo, String amount, String sum) throws Exception {

		ModelAndView mav = new ModelAndView();
		Product product = ProductService.getInfo(productNo);
		mav.addObject("product", product);
		mav.addObject("amount",amount);
		mav.addObject("sum",sum);
		System.out.println(product + amount + sum);
		mav.setViewName("/payment_gift");

		return mav;
	}
	
	@RequestMapping(value = "/buy", method = { RequestMethod.POST, RequestMethod.GET })
	@ResponseBody
	public ModelAndView buy(String productNo, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		Product product = ProductService.getInfo(productNo);
		mav.addObject("product", product);
		mav.setViewName("/prdt");
		return mav;
	}
	
	@RequestMapping(value = "/payment_ok", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView get_ok(HttpSession session, String productNo, String bAmount, String bSum) throws Exception {
		ModelAndView mav = new ModelAndView();
		Member info = (Member) session.getAttribute("memberInfo");
		String memberId = info.getMemberId();
		ProductService.insertInfo(productNo, memberId, bAmount, bSum);
		System.out.println(productNo + memberId + bAmount + bSum);
		mav.setViewName("/payment_ok");
		return mav;
	}
	
	@RequestMapping(value = "/buypage", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView buypage(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView();
		Member info = (Member) session.getAttribute("memberInfo");
		String memberId = info.getMemberId();
		mav.setViewName("/buypage");
		return mav;
	}
}

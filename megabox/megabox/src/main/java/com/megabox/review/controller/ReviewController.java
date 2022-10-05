package com.megabox.review.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.megabox.movie.service.MovieService;

@Controller
@RequestMapping("/review")
public class ReviewController {

	@GetMapping("/main")
	public ModelAndView review() throws Exception {

		ModelAndView mav = new ModelAndView();

		mav.setViewName("/post");

		return mav;
	}
}

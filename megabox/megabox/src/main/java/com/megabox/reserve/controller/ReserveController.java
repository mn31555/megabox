package com.megabox.reserve.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.megabox.movie.dto.Movie;
import com.megabox.movie.service.MovieService;

@Controller
public class ReserveController {

	@Autowired
	private MovieService MovieService;

	@RequestMapping(value = "/reserve", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) throws Exception {

		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("/reserve");


		return mav;
	}
	

}

package com.megabox.main;

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
public class MainController {

	@Autowired
	private MovieService MovieService;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest request) throws Exception {

		ModelAndView mav = new ModelAndView();

		// main에서 list형식으로 뿌릴거니 List에 담는다.
		List<Movie> movieList = MovieService.getMovieData();
		List<Movie> movieList2 = MovieService.getMovieData2();
		List<Movie> movieList3 = MovieService.getMovieData3();
		List<Movie> movieList4 = MovieService.getMovieData4();
		
		mav.addObject("movieList", movieList);
		mav.addObject("movieList2", movieList2);
		mav.addObject("movieList3", movieList3);
		mav.addObject("movieList4", movieList4);
		
		System.out.println(movieList);
		System.out.println(movieList2);
		System.out.println(movieList3);
		System.out.println(movieList4);
		
		mav.setViewName("/main");


		return mav;
	}
	
	@RequestMapping(value = "/main/support", method = RequestMethod.GET)
	public ModelAndView support(HttpServletRequest request) throws Exception {

		ModelAndView mav = new ModelAndView();		
		mav.setViewName("/support");
		return mav;
	}
}

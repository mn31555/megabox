package com.megabox.movie.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.megabox.movie.dto.Movie;
import com.megabox.movie.service.MovieService;

@Controller
@RequestMapping("/movie")
public class MovieController {

	// 얘를 호출하면 MemberServiceImpl이 딸려들어옴
	@Autowired
	private MovieService MovieService;

	@GetMapping("/main")
	public ModelAndView movie() throws Exception {

		ModelAndView mav = new ModelAndView();
		
		List<Movie> movieList = MovieService.getMovieData();
		List<Movie> movieList2 = MovieService.getMovieData2();
		List<Movie> movieList3 = MovieService.getMovieData3();
		List<Movie> movieList4 = MovieService.getMovieData4();
		
		mav.addObject("movieList", movieList);	
		mav.addObject("movieList2", movieList2);	
		mav.addObject("movieList3", movieList3);	
		mav.addObject("movieList4", movieList4);	
		
		mav.setViewName("/movie");

		return mav;
	}
}

package com.megabox.movie.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.megabox.mapper.MovieMapper;
import com.megabox.movie.dto.Movie;

//MovieService 인터페이스를 구현한 클래스
@Service
public class MovieServiceImpl implements MovieService {
	//movieMapper에 있는 sql문을 MovieListServiceImpl로 읽어와서 의존성 주입후 객체생성
		@Autowired
		private MovieMapper movieMapper;//의존성 주입

	@Override
	public List<Movie> getMovieData() throws Exception {
		List<Movie> result = movieMapper.getMovieData();
		return result;
	}
	
	@Override
	public List<Movie> getMovieData2() throws Exception {
		List<Movie> result = movieMapper.getMovieData2();
		return result;
	}
	
	@Override
	public List<Movie> getMovieData3() throws Exception {
		List<Movie> result = movieMapper.getMovieData3();
		return result;
	}
	
	@Override
	public List<Movie> getMovieData4() throws Exception {
		List<Movie> result = movieMapper.getMovieData4();
		return result;
	}

}

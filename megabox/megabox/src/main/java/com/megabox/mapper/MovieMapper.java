package com.megabox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.megabox.movie.dto.Movie;

@Mapper
public interface MovieMapper {
	public List<Movie> getMovieData() throws Exception;
	public List<Movie> getMovieData2() throws Exception;
	public List<Movie> getMovieData3() throws Exception;
	public List<Movie> getMovieData4() throws Exception;
}

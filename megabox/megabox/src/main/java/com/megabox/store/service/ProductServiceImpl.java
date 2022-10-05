package com.megabox.store.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.megabox.mapper.ProductMapper;
import com.megabox.store.dto.Product;

//MovieService 인터페이스를 구현한 클래스
@Service
public class ProductServiceImpl implements ProductService {
	//movieMapper에 있는 sql문을 MovieListServiceImpl로 읽어와서 의존성 주입후 객체생성
		@Autowired
		private ProductMapper productMapper;//의존성 주입

	@Override
	public List<Product> getProductData() throws Exception {
		List<Product> result = productMapper.getProductData();
		return result;
	}
	
	@Override
	public List<Product> getProductData2() throws Exception {
		List<Product> result = productMapper.getProductData2();
		return result;
	}
	@Override
	public Product getInfo(String productNo) throws Exception {
		Product product = productMapper.getInfo(productNo);
		return product;
	}
	@Override
	public void insertInfo(String productNo, String memberId, String bAmount, String bSum) throws Exception {
		productMapper.insertInfo(productNo,memberId,bAmount,bSum);
	}

}

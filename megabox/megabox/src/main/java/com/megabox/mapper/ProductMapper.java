package com.megabox.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.megabox.store.dto.Product;

@Mapper
public interface ProductMapper {
	public List<Product> getProductData() throws Exception;
	public List<Product> getProductData2() throws Exception;
	public Product getInfo(String productNo) throws Exception;
	public void insertInfo(String productNo, String memberId, String bAmount, String bSum) throws Exception; 

}

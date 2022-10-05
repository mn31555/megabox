package com.megabox.store.service;

import java.util.List;

import com.megabox.store.dto.Product;

public interface ProductService {
	public List<Product> getProductData() throws Exception;
	public List<Product> getProductData2() throws Exception;
	public Product getInfo(String productNo) throws Exception; 
	public void insertInfo(String productNo, String memberId, String bAmount, String bSum) throws Exception; 
}


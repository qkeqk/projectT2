package com.korea.k2.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDao  dao;
	
	@Override
	public void insert(CartVO vo) {
		dao.insert(vo);
		
	}

	@Override
	public List<CartVO> selectAll(CartVO vo) {
		return dao.selectAll(vo);
	}

	@Override
	public void deleteOne(CartVO vo) {
		dao.deleteOne(vo);
	}

	@Override
	public void deleteAll(CartVO vo) {
		dao.deleteAll(vo);
		
	}

	@Override
	public void update(CartVO vo) {
		dao.update(vo);
		
	}

	@Override
	public void insertOrderJumunseo(OrderJumunseoVO vo) {
		dao.insertOrderJumunseo(vo);
		
	}

	@Override
	public void insertOrderMoney(OrderMoneyVO vo) {
		dao.insertOrderMoney(vo);
		
	}

	@Override
	public OrderMoneyVO orderG(OrderMoneyVO vo) {
		return dao.orderG(vo);
	}

}

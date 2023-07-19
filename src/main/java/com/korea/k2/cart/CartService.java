package com.korea.k2.cart;

import java.util.List;

public interface CartService {
  // 1. 장바구니 추가
  void  insert(CartVO vo);
  
  // 2. 장바구니 1개 삭제
  void  deleteOne(CartVO vo);
    
  // 3. 장바구니 전체삭제
  void  deleteAll(CartVO vo);
  
  // 4. 장바구니 업데이트
  void  update(CartVO vo);
  
  // 5. 주문서 저장하기
  void  insertOrderJumunseo(OrderJumunseoVO vo);
  
  // 6. 주문금액 저장하기
  void  insertOrderMoney(OrderMoneyVO vo);
  
  // 7. 주문그룹 추가하기
  OrderMoneyVO orderG(OrderMoneyVO vo);
  
  // . 장바구니 목록보기
  List<CartVO> selectAll(CartVO vo); 
}

package com.korea.k2.openApi;

import java.util.List;

public interface CompanyDao {
	  void  insert(CompanyVO vo);
	  void  insertEv(EvSearchVO vo);
	  
	  List<CompanyVO> list(CompanyVO vo);
	  CompanyVO selectOne(CompanyVO vo);
	  
	  List<EvSearchVO> listEv(EvSearchVO vo);
	  EvSearchVO EvselectOne(EvSearchVO vo);
	  
}

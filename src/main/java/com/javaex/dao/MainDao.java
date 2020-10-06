package com.javaex.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.ShopVo;

@Repository
public class MainDao {
	
	@Autowired
	private SqlSession sqlsession;
	
	//신규순
	public List<ShopVo> getStoreList(){
		return sqlsession.selectList("main.getStoreList");
	}
	//인기순
	public List<ShopVo> getStoreList2(){
		return sqlsession.selectList("main.getStoreList2");
	}
	
	//리스트로 찾기
	public List<ShopVo> list(){
		return sqlsession.selectList("store.list");
	}

}

package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.EVPboardVO;
import kr.co.laura.mvc.vo.EVboardVO;

@Repository
public class EVboardDao implements EVboardDaoInter{

	@Autowired
	private SqlSessionTemplate ss;
	
	
	
	@Override
	public void addEVboard(EVboardVO vo) {
		ss.insert("evboard.add",vo);
		//System.out.println("dao�� ����:"+vo.getEvTitle());
	}
	
	@Override 
	public List<EVboardVO> listEVboard(Map<String, String> map) {
		return ss.selectList("evboard.list",map);
	}

	@Override
	public void upHit(int evNum) {
		//System.out.println("��ȸ�� dao num:"+evNum);
		ss.update("evboard.hit",evNum);
	}
	
	@Override
	public EVboardVO evBoardDetail(int evNum) {
		return ss.selectOne("evboard.detail", evNum);
	}
	
	@Override
	public void evBoardModify(EVboardVO vo) {
		ss.update("evboard.modify", vo);
	}

	@Override
	public void evBoardDel(int evNum) {
		ss.delete("evboard.delete",evNum);
	}

	@Override
	public int getTotal(Map<String, String> map) {
		return ss.selectOne("evboard.totalCount", map);
	}
	
	
	
	//��� : �̺�Ʈ ���� �κ� 
	@Override
	public void addEvpComm(EVPboardVO vo) {
		ss.insert("evboard.addComm", vo);
	}

	/*
	 * @Override public List<EVPboardVO> listCommBoard(int evNum) { //return
	 * ss.selectList("evboard.listComm",evNum); }
	 */
	
	
	@Override
	public List<EVPboardVO> listCommBoard(Map<String, String> map) {
		return ss.selectList("evboard.listComm",map);
	}
	

	@Override
	public void evCommDel(int evpNum) {
		ss.delete("evboard.delComm", evpNum);
	}

	@Override
	public void evCommModify(EVPboardVO pvo) {
		ss.update("evboard.modComm", pvo);
	}
	
	//��� ����¡
	@Override
	public int getCommTotal(Map<String, String> map) {
		return ss.selectOne("evboard.commTotalCount",map);
	}  // ����(�Ķ����)�� �ϳ��礷 #{}�� ���ε� �ȴ�.  ���� ��� 

	
	
	

}

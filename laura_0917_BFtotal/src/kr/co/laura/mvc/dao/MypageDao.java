package kr.co.laura.mvc.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.laura.mvc.vo.FBoardVO;
import kr.co.laura.mvc.vo.FundingPartiVO;

@Repository
public class MypageDao implements MypageDaoInter {

	@Autowired
	private SqlSessionTemplate ss;

	@Override
	public List<FBoardVO> fplist(int fmem_num) {
		return ss.selectList("mypage.fplist", fmem_num);
	}

}

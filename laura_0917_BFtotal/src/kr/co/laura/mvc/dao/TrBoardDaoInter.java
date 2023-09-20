package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.TrCommVO;
import kr.co.laura.mvc.vo.TradeVO;

public interface TrBoardDaoInter {

	// ±Û ÀÛ¼º
	public void addTrBoard(TradeVO trvo);

	// ï¿½ï¿½È¯ï¿½ï¿½ list
	public List<TradeVO> listTrBoard(Map<String, String> trmap);

	// ï¿½ï¿½È¸ï¿½ï¿½
	public void uptrHit(int trnum);

	// ï¿½ï¿½È¯ï¿½ï¿½ ï¿½ó¼¼ºï¿½ï¿½ï¿½
	public TradeVO trboardDetail(int trnum);

	// ï¿½ï¿½ï¿½ï¿½
	public void trboardModify(TradeVO trvo);

	// ï¿½ï¿½ï¿½ï¿½
	public void trboardDelete(int trnum);

	//////////////////////// ´ñ±Û ºÎºÐ ////////////////////////////

	// ´ñ±Û ÀÛ¼º
	public void traddComm(TrCommVO trvo);

	// ´ñ±Û Ãâ·Â
	public List<TrCommVO> trcommList(int trnum);

	// ´ñ±ÛÆäÀÌÂ¡ Ãâ·Â
	public int getTotaltrComm(Map<String, String> trmap);
	
	// ´ñ±Û»èÁ¦
	public void delTrComm(int trnum);
	
	// ÆäÀÌÂ¡ Ã³¸®
	public int gettrTotal(Map<String, String> trmap);
}

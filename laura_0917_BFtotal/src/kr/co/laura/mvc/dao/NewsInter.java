package kr.co.laura.mvc.dao;

import java.util.List;
import java.util.Map;

import kr.co.laura.mvc.vo.NewsVO;

public interface NewsInter {

	// ���� �ۼ�
	public void addNews(NewsVO nvo);

	// ���� ���
	public List<NewsVO> listNews(Map<String, String> map);

	// ��ȸ��
	public void upHit(int nnum);

	// ���� �󼼺���
	public NewsVO newsDetail(int nnum);

	// ���� ����
	public void newsModify(int nnum);

	// ���� ����
	public void newsDelete(NewsVO nvo);

	// ����¡ó��
	public int getTotal(Map<String, String> map);
}

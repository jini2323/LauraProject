package kr.co.laura.mvc.controller.event;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.laura.mvc.dao.EVboardDaoInter;
import kr.co.laura.mvc.vo.EVPPageVO;
import kr.co.laura.mvc.vo.EVPboardVO;
import kr.co.laura.mvc.vo.EVboardVO;
import kr.co.laura.mvc.vo.EVpageVO;

@Controller
public class EVboardController {

	// �񵿱�� ��� ó��?
	private List<Map<String, String>> evCommList;

	public EVboardController() {
		evCommList = new ArrayList<Map<String, String>>();
	}
	// �񵿱�� ��� ó�� ��

	@Autowired
	private EVboardDaoInter evboardDaoInter;

	@Autowired
	private EVpageVO evPageVO;

	@Autowired
	private EVPPageVO evpPageVO;

	@GetMapping("/eventform") // ���ε� ��
	public String eventForm() {
		return "event/eventForm";
	}

	///// ����� �̺�Ʈ

	@RequestMapping("/eventEnd")
	public String endEventPage(Model model) {

		return "event/evEndList";
	}

	@RequestMapping("/eventMain") // ����¡ó�� +�˻� ��� �Ϸ�
	public String evBoardList(Model model, @RequestParam Map<String, String> paramMap) {

		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		evPageVO.setTotalRecord(evboardDaoInter.getTotal(paramMap));

		int totalRecord = evPageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);

		evPageVO.setTotalPage((int) Math.ceil(totalRecord / (double) evPageVO.getNumPerPage()));
		evPageVO.setTotalBlock((int) Math.ceil((double) evPageVO.getTotalPage() / evPageVO.getPagePerBlock()));

		if (cPage != null) {
			evPageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			evPageVO.setNowPage(1);
		}

		evPageVO.setBeginPerPage((evPageVO.getNowPage() - 1) * evPageVO.getNumPerPage() + 1);
		evPageVO.setEndPerPage((evPageVO.getBeginPerPage() - 1) + evPageVO.getNumPerPage());

		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(evPageVO.getBeginPerPage()));
		map.put("end", String.valueOf(evPageVO.getEndPerPage()));
		// map�� parmaMap�� ��ġ��
		map.putAll(paramMap);
		List<EVboardVO> evList = evboardDaoInter.listEVboard(map);

		int startPage = (int) ((evPageVO.getNowPage() - 1) / evPageVO.getPagePerBlock()) * evPageVO.getPagePerBlock()
				+ 1;

		int endPage = startPage + evPageVO.getPagePerBlock() - 1;

		if (endPage > evPageVO.getTotalPage()) {
			endPage = evPageVO.getTotalPage();
		}
		// �˻����� view�� ����

		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));

		model.addAttribute("startPage", startPage);// ��Ͽ� ������������
		model.addAttribute("endPage", endPage);// ��Ͽ� ������������
		model.addAttribute("page", evPageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("evList", evList);

		return "event/evDoingList";
	}

	// �۾��� �Ϸ� ���Ƶ�Ʈ ����Ʈ
	@PostMapping("/evInsert")
	public String evboardInsert(Model model, EVboardVO vo, HttpServletRequest request) {

		String img_path = "resources\\img\\eventImg"; // ����(������) �̹��� ����! ������ ���� ����
		// ��Ŭ���� �󿡼� ������ ���
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// Ȯ��
		System.out.println("r_path:" + r_path);

		MultipartFile mf = vo.getEvfile();
		MultipartFile mf2 = vo.getEvfile2();

		String originalFN = mf.getOriginalFilename();
		String originalFN2 = mf2.getOriginalFilename();
		System.out.println("ofn:" + originalFN);
		System.out.println("ofn2:" + originalFN2);

		// full ���
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// full ���2
		StringBuffer pathT = new StringBuffer();
		pathT.append(r_path).append(img_path).append("\\");
		pathT.append(originalFN2);
		System.out.println("FullpathT:" + pathT);

		// �߻��� (�̹����� ������ ��� ) File ��ü�� ����
		File f = new File(path.toString());
		File fB = new File(pathT.toString());

		try {
			mf.transferTo(f);
			vo.setEvImg(originalFN);
			System.out.println("�̹��� �̸�" + vo.getEvImg());
			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		try {
			mf2.transferTo(fB);
			vo.setEvVeo(originalFN2);
			System.out.println("�̹��� �̸�2" + vo.getEvVeo());
			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e2) {
			e2.printStackTrace();
		}

		System.out.println("Event ���ε� ���� ��� ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");

		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // ��� ���� �̸��� ����Ʈ�� �޾ƿ���

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("Event  ���ε� ���� ��� ===========================");

		// dao �� ����
		evboardDaoInter.addEVboard(vo);
		// �׽�Ʈ
		// System.out.println("����: " + vo.getEvTitle());

		return "redirect:/eventMain";
	}

	// ��ȸ�� ó��
	@GetMapping("/eventHit")
	public String evboardHit(int evNum) {
		evboardDaoInter.upHit(evNum);
		return "redirect:eventDetail?evNum=" + evNum;
	}

	// �Խù� ����
	@GetMapping("/eventDel")
	public String evboardDel(int evNum) {
		evboardDaoInter.evBoardDel(evNum);
		System.out.println("control:" + evNum);
		return "redirect:eventMain";
	}

	// �Խù� ����ó��
	// 1. ���� ��
	@GetMapping("/eventModForm") // ���ε� ��
	public String eventModForm(Model model, int evNum) {

		System.out.println("�Խñ� ���� �� �Ķ���� Ȯ��:" + evNum);
		EVboardVO vo = evboardDaoInter.evBoardDetail(evNum);
		// System.out.println("test reward:"+vo.getReward());
		// System.out.println("test �̺�Ʈ������:"+vo.getEvSdate());
		// �������� ��¥�� �����ͷ� �ٲ㺸��>???
		String evSdate = vo.getEvSdate();
		vo.setEvSdate(evSdate);
		vo.setEvNum(evNum);
		model.addAttribute("vo", vo);

		return "event/evModifyForm";
	}

	// 2. ����post
	@PostMapping("/evModify")
	public String evboardModify(Model model, @RequestParam int evNum, EVboardVO vo, HttpServletRequest request) {

		System.out.println("evModify �Ķ���� �׽�Ʈ:" + evNum); // ������ �� �޾�����

		System.out.println("===================�Ķ���� �⺻ �׽�Ʈ ");

		String img_path = "resources\\img\\eventImg"; // ����(������) �̹��� ����! ������ ���� ����
		// ��Ŭ���� �󿡼� ������ ���
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// Ȯ��
		System.out.println("r_path:" + r_path);

		MultipartFile mf = vo.getEvfile();
		MultipartFile mf2 = vo.getEvfile2();

		String originalFN = mf.getOriginalFilename();
		String originalFN2 = mf2.getOriginalFilename();
		System.out.println("ofn:" + originalFN);
		System.out.println("ofn2:" + originalFN2);

		// full ���
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// full ���2
		StringBuffer pathT = new StringBuffer();
		pathT.append(r_path).append(img_path).append("\\");
		pathT.append(originalFN2);
		System.out.println("FullpathT:" + pathT);

		// �߻��� (�̹����� ������ ��� ) File ��ü�� ����
		File f = new File(path.toString());
		File fB = new File(pathT.toString());

		try {
			mf.transferTo(f);
			vo.setEvImg(originalFN);
			System.out.println("�̹��� �̸�" + vo.getEvImg());
			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		try {
			mf2.transferTo(fB);
			vo.setEvVeo(originalFN2);
			System.out.println("�̹��� �̸�2" + vo.getEvVeo());
			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e2) {
			e2.printStackTrace();
		}

		System.out.println("���� Event ���ε� ���� ��� ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");

		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // ��� ���� �̸��� ����Ʈ�� �޾ƿ���

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("���� Event  ���ε� ���� ��� ===========================");

		/*
		 * System.out.println("==============vo�׽�Ʈ"); System.out.println(vo.getEvNum());
		 * System.out.println(vo.getEvTitle()); System.out.println(vo.getEvContent());
		 * System.out.println("�̹����̸� "+vo.getEvImg());
		 * System.out.println("�����̸� "+vo.getEvVeo());
		 * System.out.println("���� "+vo.getReward());
		 */

		// dao �� ���� //���⼭ ����
		evboardDaoInter.evBoardModify(vo);
		// �׽�Ʈ
		System.out.println("modify con=> ����: " + vo.getEvTitle());

		return "redirect:eventDetail?evNum=" + evNum;
	}

	/*
	 * // hitSearch ���� �ʿ� ����
	 * 
	 * @GetMapping("/hitSearch") public void hitSearch(Model
	 * model, @RequestParam(required = true) String sv) { System.out.println(sv); }
	 */

	// ��ۿ���////////////////////////////////////////////////
	// eventCommInsert �θ�Ű�� �޾ƿ;��ϴ� ������
	@PostMapping("/evCommInsert")
	public String evCommInsert(EVPboardVO pvo, Model model, @RequestParam int evNum) {

		// System.out.println("��� evNum Ȯ��:"+evNum);
		pvo.setEvboardNum(evNum);
		evboardDaoInter.addEvpComm(pvo);

		return "redirect:eventDetail?evNum=" + pvo.getEvboardNum() + "&type=comm#comm";
	}

	
	
	
	
// boardDetail // ���� ������ �޼ҵ� �� �����Ѱ� ������� //�񵿱�� ��� ����Ʈ 
	@GetMapping("/eventDetail")
	public String evboardDetail(Model model, @RequestParam int evNum,
			@RequestParam(defaultValue = "Detail") String type, @RequestParam Map<String, String> paramMap) {
		
		// ��� �� ���°� �ƴϸ� �� ��ȸ���� �ø���
		if (!type.equals("comm")) {
			evboardDaoInter.upHit(evNum);
		} else {
			//
		}
		
		// 1. �Խ��� �󼼺���  
		EVboardVO vo = evboardDaoInter.evBoardDetail(evNum);
		model.addAttribute("vo", vo);
		
		 //2. evNum => evboardNum�� �����ϱ� 
		paramMap.put("evboardNum", String.valueOf(evNum));
		
		
		// 3. ��� ����Ʈ�� �� �� ���ϱ� 
		evpPageVO.setTotalRecord(evboardDaoInter.getCommTotal(paramMap));
		System.out.println("��Ʈ�ѷ� ��� �� �� Ȯ��: "+evboardDaoInter.getCommTotal(paramMap));
		
		//��� ����¡ó�� 
		String cPage = paramMap.get("cPage");
		//System.out.println("cpage:"+cPage);
		
		int totalRecord = evpPageVO.getTotalRecord();
		System.out.println("1. ���- TotalRecord :" + totalRecord);

		evpPageVO.setTotalPage((int) Math.ceil(totalRecord / (double) evpPageVO.getNumPerPage()));
		evpPageVO.setTotalBlock((int) Math.ceil((double) evpPageVO.getTotalPage() / evpPageVO.getPagePerBlock()));

		if (cPage != null) {
			evpPageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			evpPageVO.setNowPage(1);
		}

		evpPageVO.setBeginPerPage((evpPageVO.getNowPage() - 1) * evpPageVO.getNumPerPage() + 1);
		evpPageVO.setEndPerPage((evpPageVO.getBeginPerPage() - 1) + evpPageVO.getNumPerPage());

		
		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(evpPageVO.getBeginPerPage()));
		map.put("end", String.valueOf(evpPageVO.getEndPerPage()));
		
		
		
		map.putAll(paramMap); // map�� parmaMap�� ��ġ��
		
		List<EVPboardVO> evListComm = evboardDaoInter.listCommBoard(map);  
		
		int startPage = (int) ((evpPageVO.getNowPage() - 1) / evpPageVO.getPagePerBlock()) * evpPageVO.getPagePerBlock()
				+ 1;

		int endPage = startPage + evpPageVO.getPagePerBlock() - 1;

		if (endPage > evpPageVO.getTotalPage()) {
			endPage = evpPageVO.getTotalPage();
		}

		model.addAttribute("startPage", startPage);// ��Ͽ� ������������
		model.addAttribute("endPage", endPage);// ��Ͽ� ������������
		model.addAttribute("page", evpPageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("evListComm", evListComm);
		
		
		return "event/evDoingDetail";
	} // boardDetail//////////////

	
	
	
	// ��� ����
	@GetMapping("evCommDel")
	public String evCommDel(EVPboardVO pvo, Model model, EVboardVO vo) {
		// System.out.println("�Խñ� evNum:"+vo.getEvNum());
		// System.out.println("��� evpNum:"+pvo.getEvpNum());
		int evpNum = pvo.getEvpNum();
		evboardDaoInter.evCommDel(evpNum);
		return "redirect:eventDetail?evNum=" + vo.getEvNum() + "&type=comm#comm";
	}

	// ��� ����
	@PostMapping("evCommMod")
	public String evCommMod(EVPboardVO pvo, Model model) {
		// System.out.println("��� evpNum:"+pvo.getEvpNum());
		// System.out.println("status: "+pvo.getEvStatus());
		evboardDaoInter.evCommModify(pvo);
		return "redirect:eventDetail?evNum=" + pvo.getEvboardNum() + "&type=comm#comm";
	}
	
	
	
	//////////////////////////////////////////////////
	// eventDetail?evNum= ������ �⺻�� ���
	// @GetMapping("/eventDetail")
	public String evboardDetail(Model model, @RequestParam int evNum) {

		EVboardVO vo = evboardDaoInter.evBoardDetail(evNum);
		model.addAttribute("vo", vo);
		// System.out.println("controller �Խ��� �ѹ�:"+vo.getEvNum());

		return "event/evDoingDetail";
	}

}

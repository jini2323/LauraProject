package kr.co.laura.mvc.controller.news;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.laura.mvc.dao.NewsInter;
import kr.co.laura.mvc.vo.NewsVO;
import kr.co.laura.mvc.vo.PageVO;

@Controller
public class NewsController {

	@Autowired
	private NewsInter newsInter;

	@Autowired
	private PageVO pageVO;

	// 뉴스 업로드 폼
	@GetMapping("/news_upload")
	public String uploadForm() {
		return "news/newsUpload2";
	}

	// 뉴스 기사 추가
	@PostMapping("/news_uploading")
	public String uploadComplete(Model model, NewsVO nvo, HttpServletRequest request) {
		// fboard_img
		String img_path = "resources\\img\\news"; // 여기(서버에) 이미지 저장! 스프링 내부 ㄴㄴ
		// 이클립스 상에서 저장할 경로
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// 확인
		System.out.println("r_path:" + r_path);

		MultipartFile mf = nvo.getMfile();
		String originalFN = mf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full 경로
		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		path.append(originalFN);
		System.out.println("Fullpath:" + path);

		// 추상경로 (이미지를 저장할 경로 ) File 객체로 생성
		File f = new File(path.toString());

		try {
			mf.transferTo(f);
			nvo.setNimgn(originalFN);
			// 이미지 이름을 db에 저장하기 위해서 vo 값에 재설정
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		System.out.println("업로드 파일 목록 ===========================");

		StringBuffer path2 = new StringBuffer();
		path2.append(r_path).append(img_path).append("\\");
		File f2 = new File(path2.toString());
		File[] flist = f2.listFiles(); // 모든 파일 이름을 리스트로 받아옥디

		for (File e : flist) {
			System.out.println(e.getName());
		}
		System.out.println("업로드 파일 목록 ===========================");

		// dao 값 전달
		newsInter.addNews(nvo);
		// 테스트
		System.out.println("제목: " + nvo.getNtitle());

		return "redirect:/newsList";

	}

	// 뉴스 리스트
	@RequestMapping("/newsList")
	public String newsList(Model model, @RequestParam Map<String, String> paramMap) {
		String stype = paramMap.get("searchType");
		String sname = paramMap.get("searchValue");
		String cPage = paramMap.get("cPage");

		pageVO.setTotalRecord(newsInter.getTotal(paramMap));
		int totalRecord = pageVO.getTotalRecord();
		System.out.println("1. TotalRecord :" + totalRecord);

		pageVO.setTotalPage((int) Math.ceil(totalRecord / (double) pageVO.getNumPerPage()));
		pageVO.setTotalBlock((int) Math.ceil((double) pageVO.getTotalPage() / pageVO.getPagePerBlock()));

		if (cPage != null) {
			pageVO.setNowPage(Integer.parseInt(cPage));
		} else {
			pageVO.setNowPage(1);
		}

		pageVO.setBeginPerPage((pageVO.getNowPage() - 1) * pageVO.getNumPerPage() + 1);
		pageVO.setEndPerPage((pageVO.getBeginPerPage() - 1) + pageVO.getNumPerPage());

		Map<String, String> map = new HashMap<String, String>();
		map.put("begin", String.valueOf(pageVO.getBeginPerPage()));
		map.put("end", String.valueOf(pageVO.getEndPerPage()));
		// map에 parmaMap을 합치기
		map.putAll(paramMap);
		List<NewsVO> newsList = newsInter.listNews(map);

		int startPage = (int) ((pageVO.getNowPage() - 1) / pageVO.getPagePerBlock()) * pageVO.getPagePerBlock() + 1;

		int endPage = startPage + pageVO.getPagePerBlock() - 1;

		if (endPage > pageVO.getTotalPage()) {
			endPage = pageVO.getTotalPage();
		}

		// 검색값을 view로 전달
		model.addAttribute("searchType", map.get("searchType"));
		model.addAttribute("searchValue", map.get("searchValue"));

		model.addAttribute("startPage", startPage);// 블록에 시작페이지값
		model.addAttribute("endPage", endPage);// 블록에 시작페이지값
		model.addAttribute("page", pageVO); // nowPage,pagePerBlock,totalPage
		model.addAttribute("newsList", newsList);

		return "news/newsList";
	}

	// 뉴스 상세보기
	@GetMapping("/newsDetail")
	public String newsDetail(Model model, @RequestParam int nnum) {
		NewsVO nvo = newsInter.newsDetail(nnum);
		model.addAttribute("nvo", nvo);

		return "news/newsDetail";
	}

	// 조회수 증가
	@GetMapping("/upNewsHit")
	public String upNewsHit(int nnum) {
		newsInter.upHit(nnum);

		return "redirect:newsDetail?nnum=" + nnum;
	}
}

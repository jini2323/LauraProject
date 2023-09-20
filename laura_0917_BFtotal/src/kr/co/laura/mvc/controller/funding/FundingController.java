package kr.co.laura.mvc.controller.funding;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.co.laura.mvc.dao.MemDaoInter;
import kr.co.laura.mvc.vo.MemVO;

@Controller
public class FundingController {

	@Autowired
	private MemDaoInter memberDaointer;

	@GetMapping("/pageone")
	public String pageOne(Model model, @RequestParam(required = false, value = "email") String email) {
		MemVO mvo = memberDaointer.myPage(email);
		model.addAttribute("mvo", mvo);
		return "funding_ing/makingFunding";
	}

	@GetMapping("/pagetwo")
	public String pageTwo() {
		return "funding_ing/fundingProcess";
	}

	@GetMapping("/pagethree")
	public String pageThree() {
		return "funding_ing/fundingProcess2";
	}

	@GetMapping("/pagefour")
	public String pageFour() {
		return "funding_ing/fundingProcess3";
	}

	@GetMapping("/pagefive")
	public String pageFive() {
		return "funding_ing/fundingProcess4";
	}

	@GetMapping("/pagesix")
	public String pageSix() {
		return "funding_ing/fundingProcess5";
	}

	// ������ ���� ����
	@PostMapping("/updateart")
	public String updateMem(Model m, MemVO vo, HttpServletRequest request, HttpSession session) {
		String img_path = "resources\\img\\arprofiles" + vo.getNum();
		// ��Ŭ���� �󿡼� ������ ���
		String r_path = request.getSession().getServletContext().getRealPath("/");
		// Ȯ��
		System.out.println("r_path:" + r_path);

		MultipartFile armf = vo.getArprfile();
		String originalFN = armf.getOriginalFilename();
		System.out.println("ofn:" + originalFN);

		// full ���
		StringBuffer prpath = new StringBuffer();
		prpath.append(r_path).append(img_path).append("\\");
		prpath.append(originalFN);
		System.out.println("Fullpath:" + prpath);

		// �߻��� (�̹����� ������ ��� ) File ��ü�� ����
		File prf = new File(prpath.toString());

		try {
			armf.transferTo(prf);
			vo.setArprofilepic(originalFN);

			// �̹��� �̸��� db�� �����ϱ� ���ؼ� vo ���� �缳��
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace(); 
		}
		System.out.println("���ε� ���� ��� ===========================");

		StringBuffer path = new StringBuffer();
		path.append(r_path).append(img_path).append("\\");
		File f2 = new File(path.toString());
		File[] flist = f2.listFiles(); // ��� ���� �̸��� ����Ʈ�� �޾ƿ���

		/*
		 * for (File e : flist) { System.out.println(e.getName()); }
		 */
		System.out.println("���ε� ���� ��� ===========================");

		memberDaointer.upartist(vo);
		// session.setAttribute("ssesionArtist", vo.getArstatus());
		// System.out.println(session.getAttribute("ssesionArtist"));
		// System.out.println("��������: " + vo.getArstatus());
		return "redirect:/pagetwo";
	}
}

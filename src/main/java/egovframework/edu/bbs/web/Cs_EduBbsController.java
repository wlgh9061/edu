package egovframework.edu.bbs.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import egovframework.edu.bbs.service.Cs_EduBbsService;

@Controller
public class Cs_EduBbsController {

	@Resource(name = "EduBbsService")
    private Cs_EduBbsService eduBbsService;
	
	
	@RequestMapping("/frontPage.do")
	public String frontPageView(Model model) {
		List<?> list =eduBbsService.selectBoardAdminList();
		model.addAttribute("list", list);
		return "egovframework/edu/bbs/frontPage";
	}
	
	@RequestMapping("/adminPage.do")
	public String adminPageView(Model model) {
		List<?> list =eduBbsService.selectBoardAdminListView();
		model.addAttribute("list", list);
		return "egovframework/edu/bbs/admin/adminPageList";
	}
	@RequestMapping("/adminBoardDelete.do")
	public String adminBoardDelete(@RequestParam HashMap<String, Object> command) {
		eduBbsService.adminBoardDelete(command);
		return "redirect:adminPage.do";
	}
	@RequestMapping("/adminPageInsert.do")
	public String adminPageInsert() {
		return "egovframework/edu/bbs/admin/adminPageInsert";
	}
	@RequestMapping("/adminBoardInsertOk.do")
	public String adminBoardInsertOk(@RequestParam HashMap<String, Object> command) {
		eduBbsService.adminBoardInsertOk(command);
		return "redirect:adminPage.do";
	}
	@RequestMapping("/bbsPage.do")
	public String bbsPageList(@RequestParam HashMap<String, Object> command,Model model) {
		Map<String, Object> map = eduBbsService.bbsList(command);
		model.addAttribute("map",map);
		model.addAttribute("list",(List<?>) map.get("list"));
		return "egovframework/edu/bbs/bbs/bbsPageList";
	}
	@RequestMapping("/bbsPageDetail.do")
	public String bbsPageDetail(@RequestParam HashMap<String, Object> command,Model model) {
		Map<String, Object> map = eduBbsService.bbsDetail(command);
		model.addAttribute("map",map);
		return "egovframework/edu/bbs/bbs/bbsPageDetail";
	}
	@RequestMapping("/bbsModiPage.do")
	public String bbsModiPage(@RequestParam HashMap<String, Object> command,Model model) {
		Map<String, Object> map = eduBbsService.bbsDetail(command);
		model.addAttribute("map",map);
		return "egovframework/edu/bbs/bbs/bbsPageUpdate";
	}
	@RequestMapping("/bbsModiPageOk.do")
	public String bbsModiPageOk(@RequestParam HashMap<String, Object> command,Model model) {
		eduBbsService.bbsUpdate(command);
		return "redirect:bbsPageDetail.do?bbsNo="+command.get("bbsNo");
	}
	@RequestMapping("bbsDelPage.do")
	public String bbsDelPageOk(@RequestParam HashMap<String, Object> command,Model model) {
		eduBbsService.bbsDel(command);
		return "redirect:bbsPage.do?bbsIndex="+command.get("bbsIndex")+"&boardName="+command.get("boardName");
	}
	@RequestMapping("bbsPageInsert.do")
	public String bbsInsertPage(@RequestParam HashMap<String, Object> command,Model model) {
		Map<String, Object> map = eduBbsService.bbsInsert(command);
		model.addAttribute("map", map);
		return "egovframework/edu/bbs/bbs/bbsPageInsert";
	}
	@RequestMapping("bbsPageInsertOk.do")
	public String bbsInsertPageOk(@RequestParam HashMap<String, Object> command,Model model) {
		eduBbsService.bbsInsertOk(command);
		return "redirect:bbsPage.do?bbsIndex="+command.get("bbsIndex");
	}
}
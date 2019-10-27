package egovframework.edu.bbs.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

public interface Cs_EduBbsService {
	
	public List<?> selectBoardAdminList();
	public List<?> selectBoardAdminListView();
	public void adminBoardDelete(HashMap<String, Object> command);
	public void adminBoardInsertOk(HashMap<String, Object> command);
	
	
	//만든 게시판가져오는 로직
	public Map<String, Object> bbsList(HashMap<String, Object> command);
	//게시판상세내용
	public Map<String, Object> bbsDetail(HashMap<String, Object> command);
	
	public void bbsUpdate(HashMap<String, Object> command);
	public void bbsDel(HashMap<String, Object> command);
	public Map<String, Object> bbsInsert(HashMap<String, Object> command);
	public void bbsInsertOk(HashMap<String, Object> command);
}

package egovframework.edu.bbs.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.edu.bbs.service.Cs_EduBbsService;
import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;

@Service("EduBbsService")
public class Cs_EduBbsServiceImpl extends EgovAbstractServiceImpl implements Cs_EduBbsService {
	protected Logger logger = LoggerFactory.getLogger(Cs_EduBbsServiceImpl.class);
	@Resource
	private Cs_EduBbsDAO eduBbsDAO;

	
	@Override
	public List<?> selectBoardAdminList() {
		// TODO Auto-generated method stub
		return eduBbsDAO.selectBoardAdminList();
	}
	@Override
	public List<?> selectBoardAdminListView() {
		// TODO Auto-generated method stub
		return eduBbsDAO.selectBoardAdminList();
	}
	@Override
	public void adminBoardDelete(HashMap<String, Object> command) {
		eduBbsDAO.adminBoardDelete(command);
	}
	@Override
	public void adminBoardInsertOk(HashMap<String, Object> command) {
		eduBbsDAO.adminBoardInsertOk(command);
	}
	@Override
	public Map<String, Object> bbsList(HashMap<String, Object> command) {
		List<?> list =  eduBbsDAO.bbsList(command);
		Map<String, Object> map=eduBbsDAO.bbsListInfo(command);
		map.put("list", list);
		
		return map;
	}
	@Override
	public Map<String, Object> bbsDetail(HashMap<String, Object> command) {
		eduBbsDAO.bbsHit(command);
		return eduBbsDAO.bbsDetail(command);
	}
	@Override
	public void bbsUpdate(HashMap<String, Object> command) {
		eduBbsDAO.bbsUpdate(command);
	}
	@Override
	public void bbsDel(HashMap<String, Object> command) {
		eduBbsDAO.bbsDel(command);
	}
	@Override
	public Map<String, Object> bbsInsert(HashMap<String, Object> command) {
		return eduBbsDAO.bbsListInfo(command);
	}
	@Override
	public void bbsInsertOk(HashMap<String, Object> command) {
		eduBbsDAO.bbsInsertOk(command);
	}
}

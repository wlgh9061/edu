package egovframework.edu.bbs.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractMapper;


@Repository("EduBbsDAO")
public class Cs_EduBbsDAO extends EgovAbstractMapper {
	
	
	public List<?> selectBoardAdminList(){
		return selectList("eduBbs.selectBoardAdminList");
	}
	public void adminBoardDelete(HashMap<String, Object> command) {
		update("eduBbs.adminBoardDelete", command);
	}
	public void adminBoardInsertOk(HashMap<String, Object> command){
		insert("eduBbs.adminBoardInsert", command);
	}
	public List<?> bbsList(HashMap<String, Object> command){
		return selectList("eduBbs.bbsList", command);
	}
	public Map<String, Object> bbsListInfo(HashMap<String, Object> command){
		return selectOne("eduBbs.bbsListInfo", command);
	}
	public Map<String, Object> bbsDetail(HashMap<String, Object> command){
		return selectOne("eduBbs.bbsDetail", command);
	}
	public void bbsHit(HashMap<String, Object> command){
		update("eduBbs.bbsHit",command);
	}
	public void bbsUpdate(HashMap<String, Object> command) {
		update("eduBbs.bbsUpdate", command);
	}
	public void bbsDel(HashMap<String, Object> command) {
		update("eduBbs.bbsDelete", command);
	}
	public void bbsInsertOk(HashMap<String, Object> command) {
		insert("eduBbs.bbsInsert", command);
	}
	
}

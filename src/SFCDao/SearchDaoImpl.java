package SFCDao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import SFCommon.MyBatisDao;
import SFVo.ProductVO;

public class SearchDaoImpl extends MyBatisDao implements ISearchDao{
	
	private static SearchDaoImpl dao;
	
	private SearchDaoImpl() {}
	
	public static ISearchDao getInstance() {
		if(dao == null) {
			dao = new SearchDaoImpl();
		}
		return dao;
	}
	
	@Override
	public List<ProductVO> search(String search) throws SQLException {
		
		return selectList("search.searchName", search);
	}

}

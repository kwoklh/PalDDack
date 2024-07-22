package SFService;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import SFCDao.ISearchDao;
import SFCDao.SearchDaoImpl;
import SFVo.ProductVO;

public class SearchServiceImpl implements ISearchService{
	
	private static ISearchService service;
	private ISearchDao dao;
	
	// 싱글톤
	private SearchServiceImpl() {
		dao = SearchDaoImpl.getInstance();
	}
	
	public static ISearchService getInstance() {
		if(service == null) {
			service = new SearchServiceImpl();
			
		}
		return service;
	}

	@Override
	public List<ProductVO> searchProd(String search) {
		
		List<ProductVO> searchProd = null;
		
		try {
			searchProd = dao.search(search);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return searchProd;
	}

}

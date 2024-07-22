package SFService;

import java.util.List;
import java.util.Map;

import SFVo.ProductVO;

public interface ISearchService {
	
	public List<ProductVO> searchProd(String search);

}

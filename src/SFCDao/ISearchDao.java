package SFCDao;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import SFVo.ProductVO;

public interface ISearchDao {
	public List<ProductVO> search(String search) throws SQLException;
}

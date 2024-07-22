package SFCDao;

import java.sql.SQLException;
import java.util.Map;

public interface ILoginDao {
	
	//로그인 id-pw검증
	public String loginCheck(Map<String,Object>map) throws SQLException;
}

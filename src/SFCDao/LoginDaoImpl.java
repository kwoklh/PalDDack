package SFCDao;

import java.sql.SQLException;
import java.util.Map;

import SFCommon.MyBatisDao;

public class LoginDaoImpl extends MyBatisDao implements ILoginDao{
	
	private static LoginDaoImpl dao;
	
	// 싱글톤
	private LoginDaoImpl() {}
	
	public static ILoginDao getInstance() {
		if(dao == null) {
			dao = new LoginDaoImpl();
		}
		return dao;
	}

	@Override
	public String loginCheck(Map<String, Object> map) throws SQLException {
		
		// member.xml
		// namespace = member / select id = loginCheck
		return selectOne("member.loginCheck", map);
	}
	
}

package SFService;

import java.sql.SQLException;
import java.util.Map;

import SFCDao.ILoginDao;
import SFCDao.LoginDaoImpl;

public class LoginServiceImpl implements ILoginService{
	
	private static ILoginService service;
	private ILoginDao dao;
	
	// 싱글톤
	private LoginServiceImpl() {
		dao = LoginDaoImpl.getInstance();
	}
	
	public static ILoginService getInstance() {
		
		if(service == null) service = new LoginServiceImpl();
		
		return service;
	}

	@Override
	public String loginCheck(Map<String, Object> map) {
		
		String loginId = "";
		try {
			loginId = dao.loginCheck(map);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return loginId;
	}

}

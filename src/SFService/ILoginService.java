package SFService;

import java.util.Map;

public interface ILoginService {

	//로그인 id-pw검증
	public String loginCheck(Map<String,Object> map);
}

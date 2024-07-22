package SFController;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import SFService.ISearchService;
import SFService.SearchServiceImpl;
import SFVo.ProductVO;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

@WebServlet("/Search")
public class Search extends HttpServlet {
	//로깅
	   private static final Logger SQL_LOGGER = 
		         LogManager.getLogger("log4jexam.sql.Query");
	   private static final Logger PARAM_LOGGER = 
		         LogManager.getLogger("log4jexam.sql.Parameter");
	   private static final Logger RESULT_LOGGER = 
		         LogManager.getLogger(Search.class);
	
	private static final long serialVersionUID = 1L;
       
    public Search() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String search = request.getParameter("searchName");
		System.out.println(search);
		
		
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("search", search);
		
		ISearchService service = SearchServiceImpl.getInstance();
		
		List<ProductVO> searchList = service.searchProd(search);
		RESULT_LOGGER.fatal("Search result: " + searchList);

		for(int i=0; i<searchList.size(); i++) {
			System.out.println(searchList.get(i).getProCode());
			System.out.println(searchList.get(i).getProName());
			System.out.println(searchList.get(i).getProSellCost());
			System.out.println(searchList.get(i).getProCon());
		}
		
		
		if(searchList != null) {
			HttpSession session = request.getSession();
			session.setAttribute("searchList", searchList);
			session.setAttribute("search", search);
			
			response.sendRedirect(request.getContextPath());
		}
		
		
//		response.sendRedirect(request.getContextPath());
	}

}

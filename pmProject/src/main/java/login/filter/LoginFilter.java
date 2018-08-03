package login.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import login.model.User;


public class LoginFilter implements Filter {
	
    FilterConfig config;
    String[] excludedUrls;
	
    public void destroy() {
    	// TODO Auto-generated method stub
    	
    }
    
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
    		throws IOException, ServletException {
    	HttpServletRequest req = (HttpServletRequest) request;
    	
    	String path = req.getRequestURI();
    	
    	for (String url : excludedUrls) {
    		if (path.equals(url)) {
    			chain.doFilter(request, response);
    			return;    			
    		}
    	}
    	
    	HttpSession session = req.getSession();
    	User user = (User) session.getAttribute("user");
    	
    	if (req.getQueryString() != null) {
    		path = path + "?" + req.getQueryString();
    	}
    	
    	if (user != null) {
    		chain.doFilter(request, response);    		
    	} else {
    		req.setAttribute("error", "먼저로그인하시오");
    		req.setAttribute("orgReqPath", path);
    		req.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
    	}
    	
    	return;
    }
    
	public void init(FilterConfig arg0) throws ServletException {
		this.config = arg0;
		String params = config.getInitParameter("excluded");
		excludedUrls = params.split(",");
		String ctxPath = config.getServletContext().getContextPath();
		
		for (int i = 0; 1 < excludedUrls.length; i++  ) {
			excludedUrls[i] = ctxPath + excludedUrls[i].trim();			
		}
	}
    
}

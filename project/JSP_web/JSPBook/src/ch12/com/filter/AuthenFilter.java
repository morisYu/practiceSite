package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class AuthenFilter implements Filter{
	
	// 필터를 초기화
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter01 초기화...");
	}
	
	// 필터를 리소스에 적용
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("Filter01.jsp 수행...");
		
		// 폼 페이지에서 입력한 한글이 응답 페이지에서 깨져서 나올 때 인코딩 설정해야 함
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		
		// 폼 페이지에서 전송된 요청 파라미터가 없으면 응답 웹 페이지에 메세지를 출력하도록 설정
		if(name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null 입니다";
			writer.println(message);
			return;
		}
		
		// 연속적으로 필터가 있으면 다음 필터로 제어를 넘기도록 함
		filterChain.doFilter(request, response);
	}

	@Override
	public void destroy() {
		System.out.println("Filter01 해제...");
	}





}

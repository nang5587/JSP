package ServletStudy;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/ServletStudy/Myservlet04.do")
public class Myservlet04 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html;charset=UTF-8");
		PrintWriter out = resp.getWriter();
		out.println("<html>");
			out.println("<head><title>study</title></head>");
				out.println("<h2>나라와 수도</h2>");
					out.println("<table>");
						out.println("<tr>");
							out.println("<td>");out.println("번호");out.println("</td>");
							out.println("<td>");out.println("나라");out.println("</td>");
							out.println("<td>");out.println("수도");out.println("</td>");
						out.println("</tr>");
						out.println("<tr>");
							out.println("<td>");out.println("1");out.println("</td>");
							out.println("<td>");out.println("한국");out.println("</td>");
							out.println("<td>");out.println("서울");out.println("</td>");
						out.println("</tr>");
						out.println("<tr>");
							out.println("<td>");out.println("2");out.println("</td>");
							out.println("<td>");out.println("미국");out.println("</td>");
							out.println("<td>");out.println("워싱턴");out.println("</td>");
						out.println("</tr>");
							out.println("<td>");out.println("3");out.println("</td>");
							out.println("<td>");out.println("일본");out.println("</td>");
							out.println("<td>");out.println("도쿄");out.println("</td>");
						out.println("</tr>");
					out.println("</table>");
		out.println("</html>");
	}
	
}

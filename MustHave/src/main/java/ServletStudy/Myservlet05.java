package ServletStudy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

class Nation{
	private int num;
	private String nat;
	private String cp;
	public Nation(int num, String nat, String cp) {
		this.cp =cp;
		this.nat=nat;
		this.num=num;
	}
	public int getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}
	public String getNat() {
		return nat;
	}
	public void setNat(String nat) {
		this.nat = nat;
	}
	public String getCp() {
		return cp;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
}
@WebServlet("/ServletStudy/Myservlet05.do")
public class Myservlet05 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Nation> list =new ArrayList<>();
		list.add(new Nation(1, "대한민국", "서울"));
		list.add(new Nation(2, "미국", "워싱턴"));
		list.add(new Nation(3, "일본", "도쿄"));
		
		req.setAttribute("list", list);
		req.getRequestDispatcher("/ServletStudy/Myservlet05.jsp").forward(req, resp);
	}
}

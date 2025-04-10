package membership;

import common.NewJDBConnect;

public class NewMemberDAO extends NewJDBConnect {
	public NewMemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	public static void main(String[] args) {
		NewMemberDAO dao = new NewMemberDAO(
				"com.mysq.cj.jdbc.Driver", "jdbc:mysql://localhost:3306/musthave",
				"musthave", "tiger");
		NewMemberDTO dto = dao.getMemberDTO("musthave", "1234");
		System.out.println(dto);
				
	}
	public NewMemberDTO getMemberDTO(String uid, String upass) {
		NewMemberDTO dto = new NewMemberDTO();
		String query = "Select * from member where id=? and pass=?";
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString(3));
				dto.setRegidate(rs.getString(4));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
}

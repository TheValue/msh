package D01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.HanConv;

public class QueryString extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		// 한글처리
		// request.setCharacterEncoding("euc-kr");
		response.setContentType("text/html;charset=euc-kr");

		String id = "";
		String pw = "";
		String name = "";
		String vclass = "";
		String phone1 = "";
		String phone2 = "";
		String phone3 = "";

		id = request.getParameter("id");
		pw = request.getParameter("pw");
		name = request.getParameter("name");
		// name = new String(name.getBytes("8859_1"), "euc-kr");
		name = HanConv.toKor(name);

		vclass = request.getParameter("vclass");
		// vclass = new String(vclass.getBytes("8859_1"), "euc-kr");
		vclass = HanConv.toKor(vclass);

		phone1 = request.getParameter("phone1");
		phone2 = request.getParameter("phone2");
		phone3 = request.getParameter("phone3");

		// 파일 저장 로직
		String filename = "filesaved.txt";
//		String result;
		PrintWriter writer = null;

		try {
			String filePath = getServletContext().getRealPath(
					"/WEB-INF/bbs/" + filename);
			writer = new PrintWriter(filePath);
			writer.printf("아이디: %s\n", id);
			writer.printf("패스워드: %s\n", pw);
			writer.printf("이름: %s\n", name);
			writer.printf("등급: %s\n", vclass);
			writer.printf("전화번호: %s-%s-%s\n", phone1, phone2, phone3);
//			result = "SUCCESS";
		} catch (IOException ice) {
//			result = "FAIL";
		} finally {
			try {
				writer.close();
			} catch (Exception e) {
			}
		}
//		response.sendRedirect("jsp/Day01Practice01/QueryStringResult.jsp?RESULT="
//				+ result);
		// 파일저장 성공유무를 JSP로 전달

	}

}

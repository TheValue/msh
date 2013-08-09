package D01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class fibonazzi2
 */
public class fibonazzi2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public fibonazzi2() {
		super();
	}

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		Integer[] arr = new Integer[20];
		arr[0] = 1;
		arr[1] = 1;
		for (int k = 2; k < arr.length; k++) {
			arr[k] = arr[k - 2] + arr[k - 1];
		}
		request.setAttribute("result", arr);
		RequestDispatcher rd =request.getRequestDispatcher("D01/fibonazzi2.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	}

}

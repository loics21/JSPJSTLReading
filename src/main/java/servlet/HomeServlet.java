package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mypkg.Faculty;

@WebServlet("/Faculty")
public class HomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Faculty> facultyList = new ArrayList<Faculty>();
		Faculty emp1 = new Faculty();
		emp1.setId(1); emp1.setName("Bruce");emp1.setRole("Chair");
		Faculty emp2 = new Faculty();
		emp2.setId(2); emp2.setName("Bob");emp2.setRole("Faculty");
		facultyList.add(emp1);facultyList.add(emp2);
		request.setAttribute("empList", facultyList);
		
		request.setAttribute("url", "https://usm.maine.edu");
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/faculty.jsp");
		rd.forward(request, response);
	}

}
package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.helper.FactoryProvider;
import com.student.form.StudentDetails;

/**
 * Servlet implementation class SaveDetailsServlet
 */
public class SaveDetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SaveDetailsServlet() {
		super();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			
			String fName = request.getParameter("fName");
			String lName = request.getParameter("lName");
			String mName = request.getParameter("mName");
			String faName = request.getParameter("faName");
			String address = request.getParameter("address");
			long phNumber = Long.parseLong(request.getParameter("phNumber"));
			String gender = request.getParameter("gender");
			String state = request.getParameter("state");
			String city = request.getParameter("city");
			String dob = request.getParameter("dob");
			int pincode = Integer.parseInt(request.getParameter("pincode"));
			String course = request.getParameter("course");
			String email = request.getParameter("email");
			
			StudentDetails detail = new StudentDetails(fName, lName, mName, faName, address, phNumber, gender, state, city, dob, pincode, course, email);
			
	//		System.out.println(note.getId()+ " : "+ note.getTitle());
	//		hibernate.save to database
			Session session = FactoryProvider.getFactory().openSession();
			Transaction tx = session.beginTransaction();
			
			System.out.println(detail.getCity());
			session.save(detail);
			
			tx.commit();
			session.close();
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.println("<h1 style='text-align:center;'>Form submited successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='index.jsp'>Submit another form</a></h1>");
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

}

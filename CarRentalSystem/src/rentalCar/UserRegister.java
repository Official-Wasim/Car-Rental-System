package rentalCar;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int userId=0;
		String status="Active";
		String userfullname=request.getParameter("userfullname");
		String email=request.getParameter("email");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String mobile=request.getParameter("mobile");
		String upass=request.getParameter("upass");
		HttpSession hs=request.getSession();
		try {
			Connection con = ConnectionProvider.getConnection();
			Statement st=con.createStatement();
			int i=st.executeUpdate("insert into user(userId,name,email,address,city,phone,pwd,active)values('"+userId+"','"+userfullname+"','"+email+"','"+address+"','"+city+"','"+mobile+"','"+upass+"','"+status+"')");
			if(i>0) {
				String message="User registered sucessfully.";
				hs.setAttribute("success", message);
				response.sendRedirect("user-register.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}

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
 * Servlet implementation class EditUserProfile
 */
@WebServlet("/EditUserProfile")
public class EditUserProfile extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname=request.getParameter("fullname");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		String address=request.getParameter("address");
		String city=request.getParameter("city");
		String upass=request.getParameter("upass");
		
		HttpSession hs=request.getSession();
		try {
			Connection con = ConnectionProvider.getConnection();
			Statement st = con.createStatement();
			int editProfile=st.executeUpdate("update user set name='"+fullname+"',email='"+email+"',address='"+address+"',city='"+city+"',phone='"+mobile+"',pwd='"+upass+"' where userId='"+hs.getAttribute("userid")+"'");
			if(editProfile>0) {
				String message="User info edited successfully.";
				hs.setAttribute("edit", message);
				response.sendRedirect("user-edit-profile.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}

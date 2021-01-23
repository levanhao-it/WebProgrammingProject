package vn.edu.nlu.controller;

import org.omg.CORBA.portable.ApplicationException;
import vn.edu.nlu.Utility.EmailUtility;
import vn.edu.nlu.Utility.ServletUtility;
import vn.edu.nlu.Utility.UserMode;
import vn.edu.nlu.beans.User;
import vn.edu.nlu.email.EmailMessage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ForgetPasswordCTL", urlPatterns = "/ForgetPasswordCTL")

public class ForgetPasswordCTL extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email").trim();
        EmailMessage emailbean = new EmailMessage();
//        UserMode user = UserMode.FindUserPassword(email);
        UserMode u = new UserMode();
        User user = u.FindUserPassword(email);
        emailbean.setTo(email);
        emailbean.setMessage("Xin Chào "+email+ "Mật khẩu của bạn là: "+user.getPassword());
        try {

            EmailUtility.sendMail(emailbean);
            ServletUtility.setErrorMessage("Gửi thành công...", request);


        } catch (ApplicationException e) {
            // TODO Auto-generated catch block
            ServletUtility.setErrorMessage("Somting Wrong", request);
        }
        ServletUtility.forward("forgot.jsp",request, response);


}

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletUtility.forward("forgot.jsp", request, response);
    }
}

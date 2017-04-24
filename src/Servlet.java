import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import static java.lang.System.out;

/**
 * Created by script972 on 06.04.2017.
 */
@WebServlet(name = "Servlet", value = "/cal")
public class Servlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        response.getWriter().print("HELLO");


        try {
            InitialContext ic = new InitialContext();
            response.getWriter().print(" Begin");
            DataSource ds=(DataSource) ic.lookup("java:comp/env/jdbc/pavlenko3pool");
            response.getWriter().print(" Begin1");

            Connection conn=ds.getConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from person");
            while (rs.next()){
                response.getWriter().print("<p>"+rs.getString("lastName")+" "+rs.getString(1)+"</p>");
            }
            response.getWriter().print("Конец");


        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }
}

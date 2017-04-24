import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by script972 on 10.04.2017.
 */
@WebServlet(name = "routing", urlPatterns = "/")
public class Routing extends HttpServlet {
    private final String webSite="http://localhost:8080/WebLaba3DB_war_exploded/";
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter wrt=response.getWriter();
        System.out.println(">>>"+ request.getServletPath());
        switch (request.getServletPath().toString()){
            case "/": request.getRequestDispatcher("/index.jsp").forward(request,response); break;
            case "/index/": request.getRequestDispatcher("/index.jsp").forward(request,response); break;
            case "/services/": request.getRequestDispatcher("/pages/services.jsp").forward(request,response); break;
            default: request.getRequestDispatcher("/index.jsp");

        }
    }
}

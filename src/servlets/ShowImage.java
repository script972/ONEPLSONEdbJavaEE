package servlets;

import beans.Article;
import com.sun.org.apache.xml.internal.dtm.ref.sax2dtm.SAX2DTM2;
import manipulate.ArticleList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.OutputStream;

/**
 * Created by script972 on 02.05.2017.
 */
@WebServlet(name = "ShowImage", urlPatterns = {"/ShowImage"})
public class ShowImage extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response){

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("image/jpeg");
        OutputStream out = null;

        try{
            out = response.getOutputStream();
            int index= Integer.parseInt(request.getParameter("idImage"));
            ArticleList articleList=new ArticleList();
            Article article=articleList.getArticleById(index);
            response.setContentLength(article.getImage().length);
            out.write(article.getImage());
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            try {
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

package server.ServeletsArticle;

import beans.Article;
import beans.Person;
import database.Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by script972 on 08.04.2017.
 */
public class ShowArticle {
    private ArrayList<Article> array=new ArrayList<Article>();


    public ArrayList<Article> getArray() {
        if(!array.isEmpty())
            return array;
        else
            return getArticles();
    }

    private ArrayList<Article> getArticles() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            conn= Database.getConncetion();
            stmt=conn.createStatement();
            rs=stmt.executeQuery("SELECT   article.id, subject, text, date, lastName, firstName, secondName FROM article, person WHERE article.auther=person.id");
            Article article;
            while (rs.next()){
                article=new Article(rs.getInt("id"), rs.getString("subject"), rs.getString("text"), rs.getString("date"), rs.getString("lastName") + rs.getString("firstName")+ rs.getString("secondName"));
                array.add(article);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {

            /*try {
                if(stmt!=null)
                    stmt.close();
                if(conn!=null)
                    conn.close();
                if(rs!=null)
                    rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }*/
        }


        return array;
    }
}

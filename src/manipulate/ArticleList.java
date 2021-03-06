package manipulate;

import beans.Article;
import database.Database;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by script972 on 27.04.2017.
 */
public class ArticleList {
    private ArrayList<Article> articleList=new ArrayList<Article>();

    private ArrayList<Article> getArticle(){
        Statement stmt=null;
        ResultSet rs=null;
        Connection conn=null;
        try {
             conn= Database.getConncetion();
             stmt=conn.createStatement();
             rs=stmt.executeQuery("SELECT * FROM article");
            while (rs.next()){
                Article article=new Article();
                article.setId(rs.getInt("id"));
                article.setSubject(rs.getString("subject"));
                article.setText(rs.getString("text"));
                article.setDate(rs.getDate("date").toString());
                article.setAuther(rs.getString("auther"));
                article.setImage(rs.getBytes("image"));
                articleList.add(article);
            }

        } catch (SQLException e) {
            Logger.getLogger(ArticleList.class.getName()).log(Level.SEVERE, null, e);
        }
        finally {
           /* try {
                if(stmt!=null)
                    stmt.close();
                if(conn!=null)
                    conn.close();
                if(rs!=null)
                    rs.close();
            } catch (SQLException e) {
                Logger.getLogger(ArticleList.class.getName()).log(Level.SEVERE, null, e);

            }*/
        }

        return articleList;
    }

    public ArrayList<Article> getArticleList() {
        if(!articleList.isEmpty())
            return articleList;
        else
        return getArticle();
    }

    public Article getArticleById(int id){
        Statement stmt=null;
        ResultSet rs=null;
        Connection conn=null;
        try {
            conn= Database.getConncetion();
            PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM article WHERE id=?");
            preparedStatement.setInt(1, id);
            rs=preparedStatement.executeQuery();
            while (rs.next()){
                Article article=new Article();
                article.setId(rs.getInt("id"));
                article.setSubject(rs.getString("subject"));
                article.setText(rs.getString("text"));
                article.setDate(rs.getDate("date").toString());
                article.setAuther(rs.getString("auther"));
                article.setImage(rs.getBytes("image"));
                return article;
            }

        } catch (SQLException e) {
            Logger.getLogger(ArticleList.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }
}

package database;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * Created by script972 on 27.04.2017.
 */
public class TestConnection {
    public void check(){
        try{
            InitialContext ic=new InitialContext();
            DataSource ds=(DataSource) ic.lookup("java:comp/env/jdbc/pavlenko3pool");
            Connection conn=ds.getConnection();
            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("select * from person");
            while(rs.next()){
                System.out.println(rs.getString("lastName"));
            }

        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

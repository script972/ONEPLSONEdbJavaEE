package database;

import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * Created by script972 on 08.04.2017.
 */
public class Database {
    /*return Connection*/
    private static Connection conn;
    private static InitialContext ic;
    private static DataSource ds;

    public static Connection getConncetion(){
        try {
            ic=new InitialContext();
            ds= (DataSource) ic.lookup("java:comp/env/jdbc/pavlenko3pool");
            if(conn==null){
                conn=ds.getConnection();
            }
        } catch (NamingException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }
}

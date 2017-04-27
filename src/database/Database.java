package database;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * Created by script972 on 08.04.2017.
 */
public class Database {
    /*return Connection*/
    private static Connection conn;
    private static Context ic;
    private static DataSource ds;

    public static Connection getConncetion(){
        try {
            ic=new InitialContext();
            ds= (DataSource) ic.lookup("jdbc/pavlenko3pool");
            if(conn==null){
                conn=ds.getConnection();
            }
        } catch (NamingException e) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, e);
        } catch (SQLException e) {
            Logger.getLogger(Database.class.getName()).log(Level.SEVERE, null, e);
        }

        return conn;
    }

}

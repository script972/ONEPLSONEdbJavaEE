package server.ServeletsPerson;

import beans.Person;
import database.Database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Created by script972 on 09.03.2017.
 */
public class ShowPersonServlet {

    private ArrayList<Person> array=new ArrayList<Person>();


    public ArrayList<Person> getArray() {
        if(!array.isEmpty())
        return array;
        else
            return getPersons();
    }

    private ArrayList<Person> getPersons() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
             conn= Database.getConncetion();
             stmt=conn.createStatement();
             rs=stmt.executeQuery("SELECT * FROM person");
            Person person;
            while (rs.next()){
                person=new Person(rs.getInt("id"), rs.getString("lastName"), rs.getString("firstName"), rs.getString("secondName"), rs.getString("live"), rs.getString("position"));
                array.add(person);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {

                try {
                    if(stmt!=null)
                        stmt.close();
                    if(conn!=null)
                    conn.close();
                    if(rs!=null)
                        rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
        }


        return null;
    }
}

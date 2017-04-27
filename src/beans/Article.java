package beans;

/**
 * Created by script972 on 09.03.2017.
 */
public class Article {

    int id;
    String subject;
    String text;
    String date;
    String auther;

    public Article(int id, String subject, String text, String date, String auther) {
        this.id = id;
        this.subject = subject;
        this.text = text;
        this.date = date;
        this.auther = auther;
    }

    public Article() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getAuther() {
        return auther;
    }

    public void setAuther(String auther) {
        this.auther = auther;
    }

}

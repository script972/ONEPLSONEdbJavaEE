package beans;

import javax.annotation.ManagedBean;

/**
 * Created by script972 on 09.03.2017.
 */
@ManagedBean
public class Article {

    int id;
    String subject;
    String text;
    String date;
    String auther;
    byte[] image;

    public Article(int id, String subject, String text, String date, String auther) {
        this.id = id;
        this.subject = subject;
        this.text = text;
        this.date = date;
        this.auther = auther;
    }

    public Article() {
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public Article(int id, String subject, String text, String date, String auther, byte[] image) {
        this.id = id;
        this.subject = subject;
        this.text = text;
        this.date = date;
        this.auther = auther;
        this.image = image;
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

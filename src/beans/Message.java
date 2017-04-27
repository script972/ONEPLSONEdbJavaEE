package beans;

import java.awt.*;

/**
 * Created by script972 on 27.04.2017.
 */
public class Message {
    private int id;
    private String name;
    private String email;
    private String message;
    private String code;
    private Image img;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public Message(int id, String name, String email, String message, String code) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.message = message;
        this.code = code;
    }
}

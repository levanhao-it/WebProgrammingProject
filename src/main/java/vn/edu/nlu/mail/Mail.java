package vn.edu.nlu.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    public static void main(String[] args) {
        Properties pro = new Properties();
        pro.put("mail.smpt.host","smtp.gmail.com");
        pro.put("mail.smtp.port","587");
        pro.put("mail.smtp.auth","true");
        pro.put("mail.smtp.starttls.enable","true");

        String username = "haole7301@gmail.com";
        String password = "ioowcbwekyybzurx";

        Session session = Session.getInstance(pro,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                }
        );
        Message message = new MimeMessage(session);
        try{
            message.setFrom(new InternetAddress("haole7301@gmail.com","Hào Lê"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("huynhhuy90700@gmail.com"));
            message.setSubject("Test");
            message.setText("abc");
            Transport.send(message);
            System.out.println("Done");
        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }
    }

}
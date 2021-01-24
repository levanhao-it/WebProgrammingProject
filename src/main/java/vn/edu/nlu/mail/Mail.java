package vn.edu.nlu.mail;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Mail {
    public static void sendMail(String recepient) throws Exception {
        Properties pro = new Properties();
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true");
        pro.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");

        String username = "huynhhuy90700@gmail.com";
        String password = "tkkmysjbhoyrfngf";

        Session session = Session.getInstance(pro, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(username, password);
            }
        });
        Message message = prepareMessage(session, username,recepient);
        Transport.send(message);
        System.out.println("Gửi thành công");


    }

    private static Message prepareMessage(Session session, String username, String recepient) {
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(username));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
            message.setSubject("Test");
            message.setText("heyyyyyy");
            return message;
        }catch(Exception e){
            Logger.getLogger(Mail.class.getName()).log(Level.SEVERE, null, e);
        }
        return null;
    }

    public static void main(String[] args) throws Exception {
        Mail.sendMail("huynhhuy90700@gmail.com");

    }
}
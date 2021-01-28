package Controller.admin;

import vn.edu.nlu.beans.User;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

public class Mail {
    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    //send email to the user email
    public boolean sendEmail(User user) {
        boolean test = false;

        String toEmail = user.getEmail();
        String fromEmail = "haole7301@gmail.com";
        String password = "uyitfhksvtsroczo";


        try {

            // your host email smtp server details
            Properties pr = new Properties();
            pr.put("mail.smtp.auth","true");
            pr.put("mail.smtp.starttls.enable", "true");
            pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            pr.put("mail.smtp.host","smtp.gmail.com");
            pr.put("mail.smtp.port","587");
            pr.put("mail.smtp.socketFactory.port", "587");
            pr.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            //get session to authenticate the host email address and password
            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            //set email message details
            Message mess = new MimeMessage(session);

            //set from email address
            mess.setFrom(new InternetAddress(fromEmail));
            //set to email address or destination email address
            mess.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));

            //set email subject
            mess.setSubject("User Email Verification");

            //set message text
            mess.setText("Registered successfully.Please verify your account using this code: " + user.getKey());
            //send the message
            Transport.send(mess);

            test=true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return test;
    }
}
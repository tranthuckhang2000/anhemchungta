package Controller.admin;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;

public class Mail {
    public static void main(String[] args) {
        Properties pro = new Properties();
        pro.put("mail.smtp.host", "smtp.gmail.com");
        pro.put("mail.smtp.port", "587");
        pro.put("mail.smtp.auth", "true");
        pro.put("mail.smtp.starttls.enable", "true"); //TLS
        String username = "khangtran0944@gmail.com";
        String password = "vewgzbxtbhrpkous";

        Session session = Session.getInstance(pro,
                new Authenticator() {
                    @Override
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });
        Message message = new MimeMessage(session);
        try {
            message.setFrom(new InternetAddress("khangtran0944@gmail.com", "The Đe Dọa"));
            message.setRecipients(Message.RecipientType.TO,
                    InternetAddress.parse("lamdilinh.nguyen@gmail.com"));
            message.setSubject("Kẻ hiếp dâm");
            message.setText("Tao sẽ địt chết cmm");
            Transport.send(message);
            System.out.println("Done");

        }
        catch (MessagingException | UnsupportedOperationException | UnsupportedEncodingException e){
            e.printStackTrace();
        }



    }
}

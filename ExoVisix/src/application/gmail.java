package application;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class gmail {
    
    public static void send(final String from, final String password, String to, String sub, String msg) {
        // Get properties object
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        // Get Session
        Session session = Session.getDefaultInstance(props,
            new javax.mail.Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(from, password);
                }
            });

        // Compose message
        try {
            MimeMessage message = new MimeMessage(session);
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            message.setSubject(sub);
            message.setText(msg);

            // Send message
            Transport.send(message);
            System.out.println("Message sent successfully");
        } catch (MessagingException e) {
            System.err.println("Error sending email: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }

    public static void mail(String mail, String password) {
        send("mailjavasend@gmail.com", "qgic bvzn rmce mzyl", mail, "One Time Password", password);
    }

    public static void logmail(String mail, String password) {
        send("mailjavasend@gmail.com", "qgic bvzn rmce mzyl", mail, "One Time Password", password);
    }

    public static void main(String[] args) {
        String gma = "embeddedspiro2021@gmail.com";
        String random = "66456";
        mail(gma, "Hello " + gma + ", your current password is " + random + ".");
    }
}

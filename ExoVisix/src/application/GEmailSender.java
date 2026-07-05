package application;


import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

import java.util.Properties;


public class GEmailSender {
	 public boolean sendEmail(String to, String from, String subject, String text) {
	        boolean flag = false;

	        //logic
	        //smtp properties
	        Properties properties = new Properties();    
	        properties.put("mail.smtp.host", "smtp.gmail.com");    
	        properties.put("mail.smtp.socketFactory.port", "465");    
	        properties.put("mail.smtp.socketFactory.class",  
	                    "javax.net.ssl.SSLSocketFactory");    
	      
	        properties.put("mail.smtp.starttls.enable", "true");
	        properties.put("mail.smtp.ssl.trust", "smtp.gmail.com");

	        properties.put("mail.smtp.auth", "true");    
	        properties.put("mail.smtp.port", "465");    
	        String username = "javamail send";
	        String password = "qgic bvzn rmce mzyl";


	        //session
	        Session session = Session.getInstance(properties, new Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(username, password);
	            }
	        });

	        try {

	            Message message = new MimeMessage(session);
	            message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
	            message.setFrom(new InternetAddress(from));
	            message.setSubject(subject);
	            message.setText(text);
	            Transport.send(message);
	            flag = true;
	        } catch (Exception e) {
	            e.printStackTrace();
	        }


	        return flag;
	    }

	

	 public static void main(String[] args) {

	        GEmailSender gEmailSender = new GEmailSender();
	        String to = "embeddedspiro2021@gmail.com";
	        String from = "mailjavasend@gmail.com";
	        String subject = "Second: Sending email using GMail";
	        String text = "This is a example email send using gmail and java program with out less secure app";
	        boolean b = gEmailSender.sendEmail(to, from, subject, text);
	        if (b) {
	            System.out.println("Email is sent successfully");
	        } else {
	            System.out.println("There is problem in sending email");
	        }

	    }

















}
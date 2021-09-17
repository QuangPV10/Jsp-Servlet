package model;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Mail {
	

	// send mail contact
	public void sendMailContact(String name, String email, String message) throws MessagingException {
		Properties p = new Properties();
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", 587);
		
		// get Session
		Session s = Session.getInstance(p, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("phamvanquang16599@gmail.com", "0975390766");
			}
		});
		Message msg = new MimeMessage(s);
		msg.setFrom(new InternetAddress("phamvanquang16599@gmail.com"));
		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse("phamvanquang16599@gmail.com"));
		msg.setSubject("Contact from NQT shop");
		msg.setContent("User:" + name + "\n Email:" + email +  "\n Message:" + message+ "",
				"text/plain; charset=UTF-8");

		Transport.send(msg);
		System.out.println("Send mail success!");
	}
	

	// send password
	public void sendMailPass(String to, String pass) throws MessagingException {
		Properties p = new Properties();
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.host", "smtp.gmail.com");
		p.put("mail.smtp.port", 587);
		
		// get Session
		Session s = Session.getInstance(p, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("phamvanquang16599@gmail.com", "0975390766");
			}
		});
		Message msg = new MimeMessage(s);
		msg.setFrom(new InternetAddress("phamvanquang16599@gmail.com"));
		msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
		msg.setSubject("Your password from NQT shop");
		msg.setContent("This is your password: \n" + pass + "", "text/plain; charset=UTF-8");

		Transport.send(msg);
		System.out.println("Send mail success!");
	}

//	public static void main(String[] args) throws MessagingException {
//		String to = "phamvanquang16599@gmail.com";
//		String pass = "tinhdeptrai";
//		String name ="quang";
//		Mail sm = new Mail();
//		sm.sendMailContact(name, to, pass);
//	}
}

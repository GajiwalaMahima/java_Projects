package Email;

import java.util.Date;
import java.util.Properties;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class Email {
  Properties emailProperties;
	Session mailSession;
	MimeMessage emailMessage;

	public static void main(String args[]) throws AddressException,
			MessagingException {

		Email javaEmail = new Email();

		javaEmail.setMailServerProperties();
//		javaEmail.createEmailMessage();
		javaEmail.sendEmail();
	}
      

	public void setMailServerProperties() {

		String emailPort = "587";//gmail's smtp port

		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");

	}

	public void createEmailMessage(String dealer,String name,String contact,String email,String dname,String daddress,String dcity,String demail) throws AddressException,
			MessagingException {
		//String toEmails =;
		String emailSubject = "New Request for property";
		String emailBody = "Hello "+dname+"\nThere is new request for your property at" +daddress+dcity+"\nContact Details: \nName: "+name+"\nDealer: "+dealer+" \nContatc no: "+contact + "\nEmail :\"\n" +email;

		mailSession = Session.getDefaultInstance(emailProperties, null);
		emailMessage = new MimeMessage(mailSession);

		//for (int i = 0; i < toEmails.length; i++) {
			emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(demail));
		//}

		emailMessage.setSubject(emailSubject);
		emailMessage.setContent(emailBody, "text/html");//for a html email
		//emailMessage.setText(emailBody);// for a text email

	}

	public void sendEmail() throws AddressException, MessagingException {

		String emailHost = "smtp.gmail.com";
		String fromUser = "help.bloodbanksystem@gmail.com";//just the id alone without @gmail.com
		String fromUserEmailPassword = "admin@bb";

		Transport transport = mailSession.getTransport("smtp");

		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
	}
}

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.swing.text.AbstractDocument.Content;

/**
 * @author Crunchify.com
 * 
 */

public class BRICnotifs {

	static Properties mailServerProperties;
	static Session getMailSession;
	static MimeMessage generateMailMessage;

	public static void main(String args[]) throws AddressException, MessagingException {
		generateAndSendEmail();
		System.out.println("\n\n ===> Your Java Program has just sent an Email successfully. Check your email..");
	}

	public static void generateAndSendEmail() throws AddressException, MessagingException {

		// Step1
		System.out.println("\n 1st ===> setup Mail Server Properties..");
		mailServerProperties = System.getProperties();
		mailServerProperties.put("mail.smtp.port", "587");
		mailServerProperties.put("mail.smtp.auth", "true");
		mailServerProperties.put("mail.smtp.starttls.enable", "true");
		System.out.println("Mail Server Properties have been setup successfully..");

		// Step2
		System.out.println("\n\n 2nd ===> get Mail Session..");
		getMailSession = Session.getDefaultInstance(mailServerProperties, null);
		generateMailMessage = new MimeMessage(getMailSession);
		generateMailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress("natashasharma97@gmail.com"));
		// generateMailMessage.addRecipient(Message.RecipientType.CC, new
		// InternetAddress("ch2727@nyu.edu"));
		generateMailMessage.setSubject("LIVE Notification From BRIC!");

		String emailBody = "<n>Hey there, pal! We noticed you tagged one of your videos about ~the Pope~"
				+ "<br><br> Tune into CHANNEL 1 right now to view live content on ~the Pope~. This fantastic religious subject is trending right now and you definitely don't want to miss out on it!"
				+ "<br><br> Stay tuned for more live stream notifications in the future! Thanks for tuning into BRIC!"
				+ "<br><br> Regards, <br>BRIC Team";
		generateMailMessage.setContent(emailBody, "text/html");
		System.out.println("Mail Session has been created successfully..");

		// Step3
		System.out.println("\n\n 3rd ===> Get Session and Send mail");
		Transport transport = getMailSession.getTransport("smtp");

		// Enter your correct gmail UserID and Password
		// if you have 2FA enabled then provide App Specific Password
		transport.connect("smtp.gmail.com", "BRICStudios123", "team20lit");
		transport.sendMessage(generateMailMessage, generateMailMessage.getAllRecipients());
		transport.close();
	}
}
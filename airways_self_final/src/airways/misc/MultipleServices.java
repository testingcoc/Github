package airways.misc;

import java.util.Properties;
import java.util.concurrent.atomic.AtomicLong;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;




public class MultipleServices {
	private AtomicLong TS = new AtomicLong();

	public void sendMail(String to2, String text) {
		String to = to2;
		String from = "niittech.java@gmail.com";
		String host = "localhost";

		Properties properties = System.getProperties();

		properties.setProperty("smtp.gmail.com", host);
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		properties.put("mail.smtp.auth", "true");

		Session session = Session.getDefaultInstance(properties, new Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("niittech.java@gmail.com",
						"niittechnologies");
			}
		});

		try {
			MimeMessage message = new MimeMessage(session);

			message.setFrom(new InternetAddress(from));

			message.addRecipient(Message.RecipientType.TO, new InternetAddress(
					to));

			message.setSubject("THANK YOU TO CONNECT WITH US");

			message.setText(text);

			Transport.send(message);
			System.out.println("Sent message successfully....");
		} catch (MessagingException mex) {
			mex.printStackTrace();
		}
	}


	public String getUniqueTimestamp() {
		long micros = System.currentTimeMillis() * 1000;
		for (;;) {
			long value = TS.get();
			if (micros <= value)
				micros = value + 1;
			if (TS.compareAndSet(value, micros))
				return String.valueOf(micros);

		}

	}
}
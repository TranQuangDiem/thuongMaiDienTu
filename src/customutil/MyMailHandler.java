package customutil;

import java.util.Properties;

import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;

public class MyMailHandler {

	public static void sendEmail(String to, String subject, String content) throws Exception {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);
		mailSender.setUsername("ongdinh1099@gmail.com");
		mailSender.setPassword("ongdinh101199");
		Properties javaMailProperties = new Properties();
		javaMailProperties.put("mail.smtp.starttls.enable", "true");
		javaMailProperties.put("mail.smtp.auth", "true");
		javaMailProperties.put("mail.transport.protocol", "smtp");
		javaMailProperties.put("mail.debug", "true");
		javaMailProperties.put("mail.smtp.allow8bitmime", "true");
		javaMailProperties.put("mail.smtps.allow8bitmime", "true");

		mailSender.setJavaMailProperties(javaMailProperties);
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				
				message.setTo(to);
				message.setFrom(mailSender.getUsername());
				message.setSubject(subject);
				message.setBcc(mailSender.getUsername());
				message.setText(content, true);
			}
		};
		mailSender.send(preparator);
	}
	public static void sendMailMultiRecipients(String[] to, String subject, String content) {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);
		mailSender.setUsername("ongdinh1099@gmail.com");
		mailSender.setPassword("ongdinh101199");
		Properties javaMailProperties = new Properties();
		javaMailProperties.put("mail.smtp.starttls.enable", "true");
		javaMailProperties.put("mail.smtp.auth", "true");
		javaMailProperties.put("mail.transport.protocol", "smtp");
		javaMailProperties.put("mail.debug", "true");
		javaMailProperties.put("mail.smtp.allow8bitmime", "true");
		javaMailProperties.put("mail.smtps.allow8bitmime", "true");

		mailSender.setJavaMailProperties(javaMailProperties);
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage, true, "UTF-8");
				message.setTo(to);
				message.setFrom(mailSender.getUsername());
				message.setSubject(subject);
				message.setBcc(mailSender.getUsername());
				message.setText(content, true);
			}
		};
		mailSender.send(preparator);
	}
}

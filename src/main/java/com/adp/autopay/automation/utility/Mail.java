package com.adp.autopay.automation.utility;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.openqa.selenium.htmlunit.HtmlUnitDriver;

import com.adp.autopay.automation.cucumberRunner.FeatureSetup;
import com.adp.autopay.automation.cucumberRunner.RunCukesByCompositionTest;
import com.gargoylesoftware.htmlunit.BrowserVersion;

public class Mail {	
	
	@SuppressWarnings("deprecation")
	public static void SendEmail(String To,String From,String CC,String ExecutionSuiteID) {		
		Properties props = new Properties();
		props.put("mail.smtp.host", "mailrelay.nj.adp.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "25");		
		//System.err.println("http://cdlbenefitsqcre/AutomationWeb/Results?suiteId="+ExecutionSuiteID);

		System.err.println( PropertiesFile.GetEnvironmentProperty("RESULTS_APP_SERVER_PATH") + "="+ExecutionSuiteID);
		HtmlUnitDriver driver = new HtmlUnitDriver(BrowserVersion.INTERNET_EXPLORER_9);
//		FirefoxDriver driver = new FirefoxDriver();
//		driver.get("http://localhost:32323/Results?suiteId=SUITE_20140323_224454_395");	
		driver.manage().timeouts().implicitlyWait(1000, TimeUnit.SECONDS);
		driver.manage().timeouts().pageLoadTimeout(1000, TimeUnit.SECONDS);
		driver.get(PropertiesFile.GetEnvironmentProperty("RESULTS_APP_SERVER_PATH") + "="+ExecutionSuiteID);
		String innerHtml1 = driver.getPageSource();
		
		Mail objMail = new Mail();
		innerHtml1 = objMail.fnEmailBody(innerHtml1);
		/*
		innerHtml1 += "<br><br><h2 style=\"color:#DC143C;\">\n\n\n\n\n\n\n\n Thanks,</h2>";
		innerHtml1 += "<b style=\"color:#DC143C;\">Greenbox Automation Team</b><br>"; */
		//innerHtml1 += "<br><br><b style=\"font-size:125%;color:Red;\">Please reach out Automation team with questions</b><br>";

		//System.out.println(innerHtml1);
		Session session = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("username","password");
				}
			}); 
		try { 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(From));			
			if(PropertiesFile.SendMail.equalsIgnoreCase("True")){
				message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(To));				
				if((PropertiesFile.CC != null)){
					message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(CC));
				}
			}
			String SuiteName = RunCukesByCompositionTest.SuiteName;
			if(SuiteName == null){
				SuiteName = "Execution From Feature";
			}
//			String Environment = RunStory.Environment; +"("+Environment+")";
			message.setSubject("Execution Summary: " + SuiteName);
			//message.setContent(innerHtml1 + "\n\n please find the link for complete results " , "text/html");
			message.setContent(innerHtml1, "text/html");
			Transport.send(message);
			System.err.println("Mail Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
	

	/***Code added by Bhanuprakash to send email json file to email***/
	@SuppressWarnings("deprecation")
	public static void SendEmail(String To,String From,String CC,String ExecutionSuiteID,List<String> lstrOutputJsonFileName){
		MimeMessage message;
		Multipart multipart; 
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "mailrelay.nj.adp.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "25");		
		System.err.println( PropertiesFile.GetEnvironmentProperty("RESULTS_APP_SERVER_PATH") + "="+ExecutionSuiteID);
		HtmlUnitDriver driver = new HtmlUnitDriver(BrowserVersion.INTERNET_EXPLORER_9);
		driver.manage().timeouts().implicitlyWait(1000, TimeUnit.SECONDS);
		driver.manage().timeouts().pageLoadTimeout(1000, TimeUnit.SECONDS);
		driver.get(PropertiesFile.GetEnvironmentProperty("RESULTS_APP_SERVER_PATH") + "="+ExecutionSuiteID);
		String innerHtml1 = driver.getPageSource();
		
		Mail objMail = new Mail();
		innerHtml1 = objMail.fnEmailBody(innerHtml1);
		
		/*innerHtml1 += "<br><br><h2 style=\"color:#DC143C;\">\n\n\n\n\n\n\n\n Thanks,</h2>";
		innerHtml1 += "<b style=\"color:#DC143C;\">Greenbox Automation Team</b><br>";*/
		
		Session session = Session.getInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication("username","password");
				}
			}); 		
		
		try { 
			message = new MimeMessage(session);
			message.setFrom(new InternetAddress(From));			
			if(PropertiesFile.SendMail.equalsIgnoreCase("True")){
				message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(To));				
				if((PropertiesFile.CC != null)){
					message.setRecipients(Message.RecipientType.CC,InternetAddress.parse(CC));
				}
			}
			String SuiteName = RunCukesByCompositionTest.SuiteName;
			if(SuiteName == null){
				SuiteName = "Execution From Feature";
			}
			
			message.setSubject("Execution Summary: " + SuiteName);
		    multipart = new MimeMultipart();
		    MimeBodyPart messageBodyPart1 = new MimeBodyPart();
			messageBodyPart1.setContent(innerHtml1,"text/html");
			multipart.addBodyPart(messageBodyPart1);
		    
		    for(String outJsonFileName:lstrOutputJsonFileName){
		    	MimeBodyPart messageBodyPart = new MimeBodyPart();
		        String fileName = outJsonFileName.substring(outJsonFileName.lastIndexOf('\\')+1);
		        DataSource source = new FileDataSource(outJsonFileName);
		        messageBodyPart.setDataHandler(new DataHandler(source));
		        messageBodyPart.setFileName(fileName);
		        message.setContent(multipart);
		        multipart.addBodyPart(messageBodyPart);
		     
		    }
			message.saveChanges();
			Transport.send(message);
			System.err.println("Mail Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
	
String fnEmailBody(String strEmlData){
		
		String[] arrinnerHTML = strEmlData.split("</div>");
		
		
		String strEnvDetail = arrinnerHTML[0].replace("<td>", ":=:");
		if(strEnvDetail.contains("</td>"))
		{
			strEnvDetail = strEnvDetail.replace("</td>", ":=:");
		}
		strEnvDetail = strEnvDetail.replace("<td>/", ":=:");
		
		String[] arrEnvDetail = strEnvDetail.split(":=:");
		
		String strExeInfo;
		
		// The key for getting operating system name
        String name = "os.name";        
        // The key for getting operating system version
        String version = "os.version";        
        // The key for getting operating system architecture
        String architecture = "os.arch";
        
        String strOSName = System.getProperty(name);
        String strOSVersion = System.getProperty(version);
        
		InetAddress IP;
		String MachineIP="";
		
		try {
			MachineIP = InetAddress.getLocalHost().getHostName()+"\t("+ InetAddress.getLocalHost().getHostAddress() +")";
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String[] arrHeader = arrinnerHTML[0].split("</center>"); 
		FeatureSetup objFeatureSetup = new FeatureSetup();
		strExeInfo = arrHeader[0]+"</center><br/>";
		strExeInfo += "<style type='text/css'>";
		strExeInfo += "table { border: solid black; border-collapse: collapse;}";
		strExeInfo += "td { border: 1px solid black;} </style>";
		
		strExeInfo += "<h2 style='color: crimson'>Execution Information</h2>";
		strExeInfo += "<table width='50%'><tr><td bgcolor='#A65B1A'><b><font color='#F0E5CC' face='Tahoma' size='2'>Execution Start Date/Time </font></b></td><td  bgcolor='#F0E5CC'><b><font color='#A65B1A' face='Tahoma' size='2'>"+arrEnvDetail[1]+"</font></b></td></tr>";
		strExeInfo += "<tr><td bgcolor='#A65B1A'><b><font color='#F0E5CC' face='Tahoma' size='2'>Execution End Date/Time </font></b></td><td bgcolor='#F0E5CC'><b><font color='#A65B1A' face='Tahoma' size='2'>"+arrEnvDetail[3]+"</font></b></td></tr>";
		strExeInfo += "<tr><td bgcolor='#A65B1A'><b><font color='#F0E5CC' face='Tahoma' size='2'>Execution Time </font></b></td><td bgcolor='#F0E5CC'><b><font color='#A65B1A' face='Tahoma' size='2'>"+arrEnvDetail[5]+"</font></b></td></tr>";
		strExeInfo += "<tr><td  bgcolor='#A65B1A'><b><font color='#F0E5CC' face='Tahoma' size='2'>Machine Name & Address </font></b></td><td  bgcolor='#F0E5CC'><b><font color='#A65B1A' face='Tahoma' size='2'>"+MachineIP+"</font></b></td></tr>";
		strExeInfo += "<tr><td bgcolor='#A65B1A'><b><font color='#F0E5CC' face='Tahoma' size='2'>Browser Name</font></b></td><td bgcolor='#F0E5CC'><b><font color='#A65B1A' face='Tahoma' size='2'>"+PropertiesFile.GetEnvironmentProperty("Browser")+"</font></b></td></tr>";
		//strExeInfo += "<tr><td bgcolor='#CCCCFF'><b><font color='#000000' face='Tahoma' size='2'>Browser Version</font></b></td><td bgcolor='#CCCCFF'><b><font color='#000000' face='Tahoma' size='2'>"+objFeatureSetup.browserVersion+"</font></b></td></tr>";
		strExeInfo += "<tr><td bgcolor='#A65B1A'><b><font color='#F0E5CC' face='Tahoma' size='2'>Operating System Name & Version</font></b></td><td bgcolor='#F0E5CC'><b><font color='#A65B1A' face='Tahoma' size='2'>"+strOSName+"\t,"+strOSVersion+"</font></b></td></tr>";
		strExeInfo += "</table>";
		strExeInfo += "<style type='text/css'>";
		strExeInfo += "table { border: none; border-collapse: collapse;}";
		strExeInfo += "td { border: solid;} </style>";
		
		String strBodyData = arrinnerHTML[4];
				
		/*strBodyData = strBodyData.replace("MachineIP", "");
		strBodyData = strBodyData.replace("Browser", "");
		strBodyData = strBodyData.replace("Version", "");
		
		if(strBodyData.contains(MachineIP))
		{
			strBodyData = strBodyData.replace(MachineIP, "");
		}
		if(strBodyData.contains(PropertiesFile.GetEnvironmentProperty("Browser")))
		{
			strBodyData = strBodyData.replace(PropertiesFile.GetEnvironmentProperty("Browser"), "");
		}
		
		if(PropertiesFile.GetEnvironmentProperty("Version") != null)
		{
			strBodyData = strBodyData.replace(PropertiesFile.GetEnvironmentProperty("Version"), "");
		}*/
		
		
		if(strBodyData.contains("PASS"))
		{
			strBodyData = strBodyData.replace("PASS", "<font color='Green'>PASS</font>");
		}
		
		if(strBodyData.contains("FAIL"))
		{
			strBodyData = strBodyData.replace("FAIL", "<font color='Red'>FAIL</font>");
		}
		strEmlData = strExeInfo+"</div>"+arrinnerHTML[1]+"</div>"+strBodyData+"</div>"+"</div>"+arrinnerHTML[3]+"</div>"+arrinnerHTML[6];
		strEmlData += "<br><br><h2 style=\"color:#DC143C;\">\nThanks,</h2>";
		strEmlData += "<b style=\"color:#DC143C;\">ATS Automation Team</b><br>";
		return strEmlData;
	}
	}



<?php
class Mailer {
	static public function send_old($to, $subject = null, $body = null, $header = null) {
		//Yii::import('application.extensions.phpmailer.JPhpMailer');
		$mail = new JPhpMailer;
		$mail->IsSMTP();                           // tell the class to use SMTP
		//$mail->Port       = Yii::app()->params['phpmailer']['Port'];;                    // set the SMTP server port
		$mail->Host       = Yii::app()->params['phpmailer']['Host']; // SMTP server
		$mail->SMTPAuth   = Yii::app()->params['phpmailer']['SMTPAuth'];             // enable SMTP authentication
		$mail->SMTPSecure = Yii::app()->params['phpmailer']['SMTPSecure'];
		$mail->Username   = Yii::app()->params['phpmailer']['auth']['Username'];      // SMTP server username
		$mail->Password   = Yii::app()->params['phpmailer']['auth']['Password'];            // SMTP server password
		$mail->From       = Yii::app()->params['adminEmail'];
		$mail->FromName   = Yii::app()->params['phpmailer']['fromName'];
		$mail->CharSet 	  = Yii::app()->params['phpmailer']['CharSet'];
		$mail->AddAddress($to);
		$mail->IsHTML(Yii::app()->params['phpmailer']['html']); // send as HTML
		$mail->Subject    = $subject;
		$mail->SMTPDebug  = 1;
		$mail->ReplyTo    = Yii::app()->params['phpmailer']['Username'];
		
		//$body = $this->renderFile('protected/views/site/elements/email.php', array('model' => $model), TRUE);
		//$mail->MsgHTML($body);
		$mail->Body = $body;
		
		if($mail->Send()) {
	        return true;
	    } else {
	        return false;
	    }
	}
	
	static public function send($to, $subject = null, $body = null, $header = null){
		
		Yii::import('ext.swiftMailer.SwiftMailer');
		$SM = Yii::app()->swiftMailer;
		
		$host 		= Yii::app()->params['phpmailer']['Host'];// SMTP server
		$port		= Yii::app()->params['phpmailer']['Port'];
		$username 	= Yii::app()->params['phpmailer']['auth']['Username'];      // SMTP server username
		$password 	= Yii::app()->params['phpmailer']['auth']['Password'];      // SMTP server password
		$from 		= Yii::app()->params['adminEmail'];
		$fromname   = Yii::app()->params['phpmailer']['fromName'];
		
		$Transport = $SM->smtpTransport($host, $port)
			->setUsername($username)
  			->setPassword($password)
  		;
		// Mailer
		$Mailer = $SM->mailer($Transport);
		// New message
	    $Message = $SM
	        ->newMessage($subject)
	        ->setFrom(array($from => $fromname))
	        ->setTo(array($to => $to))
	        ->addPart($body, 'text/html')
	        ->setBody($body);
	 	
	 
	        
	    // Send mail
	   if($Mailer->send($Message)){
	    	return  true;
	    } else {
	    	return false;
	    }	
	
	}
}

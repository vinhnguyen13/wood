<?php

Yii::import('backend.extensions.phpmailer.JPhpMailer');

class EmailLogRoute extends CEmailLogRoute
{
	protected function sendEmail($email,$subject,$message)
	{
		$headers=$this->getHeaders();
		if(($from=$this->getSentFrom())!==null)
			$headers[]="From: {$from}";
			
		$request = Yii::app()->request;
			
		$pre 			 = "URL - " . Yii::app()->createAbsoluteUrl($request->getRequestUri()) . "\r\n";
		$pre  			.= "IP - " . $request->userHostAddress . "\r\n";
		$pre  			.= "REFERER - " . $request->getUrlReferrer() . "\r\n";
		
		$message =  $pre . $message;		
		self::send($email, $subject, $message, implode("\r\n",$headers));	
	}
	
	static public function send($to, $subject = null, $body = null, $header = null) {
		$mail = new JPhpMailer;
		$mail->IsSMTP();  
		$mail->Port       = Yii::app()->params['phpmailer']['Port'];;                    // set the SMTP server port
		$mail->Host       = Yii::app()->params['phpmailer']['Host']; 					 // SMTP server
		$mail->SMTPAuth   = Yii::app()->params['phpmailer']['SMTPAuth'];             	 // enable SMTP authentication
		$mail->SMTPSecure = Yii::app()->params['phpmailer']['SMTPSecure'];
		$mail->Username   = Yii::app()->params['phpmailer']['Username'];      			 // SMTP server username
		$mail->Password   = Yii::app()->params['phpmailer']['Password'];            	 // SMTP server password
		$mail->From       = Yii::app()->params['adminEmail'];
		$mail->FromName   = Yii::app()->params['phpmailer']['fromName'];
		$mail->CharSet 	  = Yii::app()->params['phpmailer']['CharSet'];
		$mail->AddAddress($to);
		$mail->IsHTML(Yii::app()->params['phpmailer']['html']); 						// send as HTML
		$mail->Subject    = $subject;
		$mail->SMTPDebug  = 1;
		$mail->ReplyTo    = Yii::app()->params['phpmailer']['Username'];
		
		$mail->Body = $body;
		
		if($mail->Send()) {
	        return true;
	    } else {
	        return false;
	    }
	}
}
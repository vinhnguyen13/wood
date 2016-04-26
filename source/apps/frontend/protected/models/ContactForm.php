<?php

/**
 * ContactForm class.
 * ContactForm is the data structure for keeping
 * contact form data. It is used by the 'contact' action of 'SiteController'.
 */
class ContactForm extends CFormModel
{
	public $name;
	public $email;
	public $subject;
	public $body;
	public $verifyCode;

	/**
	 * Declares the validation rules.
	 */
	public function rules()
	{
		return array(
			// name, email, subject and body are required
			array('name, email, subject, body', 'required'),
			// email has to be a valid email address
			array('email', 'email'),
			// verifyCode needs to be entered correctly
//			array('verifyCode', 'captcha', 'allowEmpty'=>!CCaptcha::checkRequirements()),
			array('verifyCode', 
               'backend.extensions.recaptcha.EReCaptchaValidator', 
               'privateKey'=>'6Le5odkSAAAAAMdcOuutyxN9rF8YI5AmQcgpsF_3'),
		);
	}

	/**
	 * Declares customized attribute labels.
	 * If not declared here, an attribute would have a label that is
	 * the same as its name with the first letter in upper case.
	 */
	public function attributeLabels()
	{
		return array(
			'name'=>Lang::t('contact', 'Name'),
			'email'=>Lang::t('contact', 'Email'),
			'subject'=>Lang::t('contact', 'Subject'),
			'body'=>Lang::t('contact', 'Body'),
			'verifyCode'=>Lang::t('contact', 'Verification Code'),
		);
	}
}
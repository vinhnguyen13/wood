<?php
class PayController extends Controller
{
	/**
	 * This is the default 'index' action that is invoked
	 * when an action is not explicitly requested by users.
	 */
	public function actionIndex()
	{
		$cart = Yii::app()->session->readSession('cart');
		if(!empty($cart)){
			$cart = json_decode($cart);				
		}
		// renders the view file 'protected/views/site/index.php'
		// using the default layout 'protected/views/layouts/main.php'
		$this->render('index', array('cart'=>$cart));
	}
	
	public function actionDelcart()
	{
		$id = Yii::app()->request->getParam('id');
		$cart = Yii::app()->session->readSession('cart');
		if(!empty($cart)){
			$cart = json_decode($cart, true);	
			unset($cart[$id]);			
			Yii::app()->session->writeSession('cart', json_encode($cart));
		}
		return true;
	}
	
	public function actionPayment()
	{
		$cart = Yii::app()->session->readSession('cart');
		$user = Yii::app()->session->readSession('user');
		if(!empty($cart) && !empty($_POST['email']) && !empty($_POST['name']) && !empty($_POST['address']) && !empty($user)){
			$cart = json_decode($cart);		
			$user = json_decode($user);
			foreach ($cart as $key=>$item){
				$product = Products::model()->findByPk($item->product_id);
				if(!empty($product)){
					$pay = new PayDetail();
					$pay->session_id = $user->id;
					$pay->name = $_POST['name'];
					$pay->address = $_POST['address'];
					$pay->tel = $_POST['tel'];
					$pay->email = $_POST['email'];
					$pay->product_id = $item->product_id;
					$pay->amount = $item->amount;
					$pay->size = $item->size;
					$pay->color = $item->color;
					$pay->total_price = $product->price_new * $item->amount;
					$pay->status = 1;
					$pay->created = time();
					$pay->save();
					unset($cart[$key]);			
					Yii::app()->session->writeSession('cart', json_encode($cart));
				}
			}
			$result['msg'] = 'Bạn gửi thông tin thành công, chúng tôi sẽ liên hệ với bạn trong thời gian sớm nhất';
			$result['stt'] = 'OK';
		}else{
			$result['msg'] = 'Bạn nên nhập đầy đủ thông tin.';
			$result['stt'] = 'CANCEL';
		}
		echo json_encode($result);
		exit;
	}
	

}
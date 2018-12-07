<?php
require_once dirname(__FILE__).'/../models/DB.class.php';
class C_Admin extends C_Page{
	
	function __construct(){		
		parent::__construct();
	}

	public function action_AdminPage(){
	if($_SESSION['login']!='admin'){
		header("Location: index.php");
	}else{
		$this->title .= 'AdminPage';
		$obj = SQL::Instance();
		$data= $obj->Select("SELECT orders.order_id AS `order`, users.login AS `login`, CONCAT(users.name ,' ',users.surname ) AS `customer`, orders.create_time AS `create_time`,orders.amount AS `summ`,order_status.status_name AS `order_status`, order_status.id_order_status AS `order_status_num` FROM `orders`
			INNER JOIN `users` ON orders.user_id = users.user_id
			INNER JOIN  `order_status` ON orders.id_order_status = order_status.id_order_status ORDER BY `order` DESC");
		$this->content = $this->Template('v_admin.tmpl', $data);
		}
	}
	public function action_Cancel(){
		if(isset($_GET['order'])){
			$orderId= $_GET['order'];
			$object=[
				'id_order_status'=>'4'
			];
			$obj = SQL::Instance();
		    $sql=$obj->Update('orders',$object, 'order_id = '.$orderId.'');
		}
        }
		public function action_change(){
		if(isset($_GET['id']) && isset($_GET['selected'])){
			$orderId= $_GET['id'];
			$selected = (int)$_GET['selected'];
			$object=[
				'id_order_status'=>$selected
			];
			$obj = SQL::Instance();
		    $sql=$obj->Update('orders',$object, 'order_id = '.$orderId.'');     
		}
	}

}

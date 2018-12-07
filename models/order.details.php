<?php
session_start();
include 'DB.class.php';
if(isset($_POST['order'])){
			$orderId= (isset($_POST['order']))?strip_tags($_POST['order']):'';
			$obj = SQL::Instance();
		    $sql=$obj->Select("SELECT items.title, order_items.quantity,order_items.total_it_price  FROM `order_items`
			INNER JOIN `items` ON order_items.item_id = items.item_id Where order_id = '$orderId'");
			foreach ($sql as $key => $value) {
				$data = $value;
				echo '<li>
					Model:'.$data['title'].' |quantity: '.$data['quantity'].'| summ: '.$data['total_it_price'].'$
				</li>';
			     }     
		}
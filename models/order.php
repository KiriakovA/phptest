<?php
session_start();
include_once 'DB.class.php';
if (isset($_SESSION['login'])) {
    $login = $_SESSION['login'];
    $pass = $_SESSION['pass'];
    $obj = SQL::Instance();
    $sql = $obj->Select("SELECT * from users where login='$login' AND pass='$pass'");
    if (sizeof($sql) == 1) {
        foreach ($sql as $key => $value) {
            $data = $value;
        }
        $object = [
            'user_id' => $data['user_id'],
            'amount' => $_SESSION['total'],
        ];
        $ins = $obj->Insert('orders', $object);
    }
    if (isset($ins)) {
        $ord = $obj->Select("SELECT * from orders where order_id='$ins'");
        foreach ($ord as $key => $value) {
            $orderData = $value;
        }
        foreach ($_SESSION['cart'] as $key => $value) {
            $sessData[] = $value;
        }
        $counter = count($sessData);
        for ($i = 0; $i < $counter; $i++) {
            $object = [
                'order_id' => $orderData['order_id'],
                'item_id' => $sessData[$i]['id'],
                'user_id' => $orderData['user_id'],
                'quantity' => $sessData[$i]['quantity'],
                'total_it_price' => $sessData[$i]['totalPrice']
            ];
            $basket = $obj->Insert('order_items', $object);
        }
    }

    echo '<h2>Your order is accepted for processing! Thanks!</h2>';
    if ($_SESSION['cart']) {
        $_SESSION['total'] = null;
        $_SESSION['totalq'] = null;
        $_SESSION['cart'] = null;
    }
} else {
    $name = (isset($_POST['name'])) ? strip_tags($_POST['name']) : '';
    $surname = (isset($_POST['surname'])) ? strip_tags($_POST['surname']) : '';
    $email = (isset($_POST['email'])) ? strip_tags($_POST['email']) : '';
    $obj = SQL::Instance();
    $mailt = $obj->Select("SELECT email from users where email='$email'");
    if (sizeof($mailt) == 1) {
        
    } else {
        $object = [
            'name' => $name,
            'surname' => $surname,
            'email' => $email
        ];
        $sql = $obj->Insert('users', $object);
        if (isset($sql)) {
            $usr = $obj->Select("SELECT * from users where email='$email'");
            if (sizeof($usr) == 1) {
                foreach ($usr as $key => $value) {
                    $data = $value;
                }
                $object = [
                    'user_id' => $data['user_id'],
                    'amount' => $_SESSION['total'],
                ];
                $ins = $obj->Insert('orders', $object);
            }
            if (isset($ins)) {
                $ord = $obj->Select("SELECT * from orders where order_id='$ins'");
                foreach ($ord as $key => $value) {
                    $orderData = $value;
                }
                foreach ($_SESSION['cart'] as $key => $value) {
                    $sessData[] = $value;
                }
                $counter = count($sessData);
                for ($i = 0; $i < $counter; $i++) {
                    $object = [
                        'order_id' => $orderData['order_id'],
                        'item_id' => $sessData[$i]['id'],
                        'user_id' => $orderData['user_id'],
                        'quantity' => $sessData[$i]['quantity'],
                        'total_it_price' => $sessData[$i]['totalPrice']
                    ];
                    $basket = $obj->Insert('order_items', $object);
                }
            }
        }
        echo '<h2>Your order is accepted for processing! Thanks!</h2>';
        if ($_SESSION['cart']) {
            $_SESSION['total'] = null;
            $_SESSION['totalq'] = null;
            $_SESSION['cart'] = null;
        }
    }
}

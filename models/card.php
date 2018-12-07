<?php

session_start();
include_once 'DB.class.php';
if (isset($_POST['id'])) {
    $id = (isset($_POST['id'])) ? strip_tags($_POST['id']) : '';
    $total = (isset($_POST['total'])) ? strip_tags($_POST['total']) : '';
    $quantity = (isset($_POST['quantity'])) ? strip_tags($_POST['quantity']) : '';
    $obj = SQL::Instance();
    $sql = $obj->Select("SELECT title, price,photo from items where item_id = '$id'");
    foreach ($sql as $key => $value) {
        $data = $value;
    }
    if (isset($_SESSION['cart'][$id]['price'])) {   
    }else{
        $_SESSION['cart'][$id] = array(
            'id' => $id,
            'title' => $data['title'],
            'price' => $data['price'],
            'photo' => $data['photo'],
            'quantity' => $quantity,
            'totalPrice' => $data['price'],
        );
    }
}
if (isset($_POST['cid'])) {
    $qu = (int) $_POST['qu'];
    $price = (int) $_POST['price'];
    $cid = (int) (isset($_POST['cid'])) ? strip_tags($_POST['cid']) : '';
    $_SESSION['cart'][$cid]['quantity'] = $qu;
    $_SESSION['cart'][$cid]['totalPrice'] = $price;
}
if (isset($_SESSION['cart'])) {
    foreach ($_SESSION['cart'] as $key) {
        $total[] = $key['totalPrice'];
        $totalq[] = $key['quantity'];
    }
    if ($total && $totalq) {
        $_SESSION['total'] = array_sum($total) . '$';
        $_SESSION['totalq'] = array_sum($totalq);
    } else {
        $_SESSION['total'] = null;
        $_SESSION['totalq'] = null;
    }
}
echo $_SESSION['total'] . ' ' . $_SESSION['totalq'];

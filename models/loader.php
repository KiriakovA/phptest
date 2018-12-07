<?php
include "DB.class.php";
if (isset($_GET['num'])) {
    $num = $_GET['num'];
    $obj = SQL::Instance();
    $data = $obj->Select('SELECT item_id ,title, price,photo,info FROM items LIMIT ' . $num . ', 4');
    if (!$data) {
        
    } else {
        foreach ($data as $urr => $val) {
            $key = $val;
            echo '<li class="img_gal"><a class="item_link" href="index.php?c=page&act=productPage&id=' . $key['item_id'] . '">'
            . '<img class="img" src="/../data/mini_item_img/' . $key['photo'] . '">'
            . '</a><div class ="bottom"><a href="index.php?c=page&act=productPage&id=' . $key['item_id'] . '">' . $key['title'] . '</a>'
            . '<span>' . $key['price'] . '&nbsp₽</span></div></li>';
        }
    }
    sleep(1);
}
<?php

session_start();
include_once 'DB.class.php';
$login = (isset($_POST['login'])) ? strip_tags($_POST['login']) : '';
$pass = (isset($_POST['pass'])) ? strip_tags($_POST['pass']) : '';
$pass = md5($pass);
$obj = SQL::Instance();
$sql = $obj->Select("SELECT * from users where login='$login' AND pass='$pass'");
if (sizeof($sql) == 1) {
    foreach ($sql as $k => $val) {
        $_SESSION['userInfo'] = $val;
    }
    $_SESSION['login'] = $login;
    $_SESSION['pass'] = $pass;
    header("Location: /../public/index.php");
} else {
    header("Location: /../public/index.php?c=page&act=login");
}
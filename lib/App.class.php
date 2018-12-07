<?php

class App {

    public static function Init() {

        $action = 'action_';
        $action .= (isset($_GET['act'])) ? $_GET['act'] : 'index';

        switch ($_GET['c']) {
            case 'page':
                $controller = new C_Page();
                break;
            case 'admin':
                $controller = new C_Admin();
                break;
            default:
                $controller = new C_Page();
        }

        $controller->$action();
        $controller->render();
    }

}

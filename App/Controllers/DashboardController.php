<?php

namespace App\Controllers;

class DashboardController {
    
    public function index() {
        require __DIR__ . '../../Views/user/dashboard.php';
    }
}
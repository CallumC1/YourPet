<?php

namespace App\Controllers;

class AdminDashboardController {
    
    public function index() {

        require __DIR__ . '../../Views/admin/admin-dashboard.php';
    }
}
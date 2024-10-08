<?php

namespace App\Controllers;
use App\Models\ProductsModel;

require_once __DIR__ . '/../Models/ProductsModel.php';

class ProductsController {
    
    public function index() {

        require_once __DIR__ . '../../Views/products.php';
    }

    public function getAllProducts() {
        // Get all products from the database
        $productsModel = new ProductsModel();
        $products = $productsModel->getProductsData();

        require_once __DIR__ . '../../Views/products.php';

    }

    public function getProductsByType($type = "Bedding") {
        // Get all products from the database
        $productsModel = new ProductsModel();
        $products = $productsModel->getProductsByType($type);

        require_once __DIR__ . '../../Views/products.php';

    }

}
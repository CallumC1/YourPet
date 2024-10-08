<?php
namespace App\Middleware;
use App\Models\AccountModel;

class userAuth {

    public function handle() {
        $user_data = $_SESSION['user_data'];
        $email_verified = $_SESSION['user_data']['email_verified'];
        // Check if user is logged in
        if (!isset($user_data)) {
            header("Location: /login");
            exit();
        }
        if (!$email_verified) {
            header("Location: /verifyEmail");
            exit();
        }
    }

    public function adminHandle() {
        // Check if user is logged in
        if (!isset($_SESSION['user_data'])) {
            header("Location: /login");
            exit();
        }

        // Check if user is admin from the database.
        // We check the database as we should not trust the session data for such important checks.
        require_once(__DIR__ . '/../Models/AccountModel.php');
        $accountModel = new AccountModel();

        $userRole = $accountModel->getUserRole($_SESSION['user_data']['id']);

        if ($userRole["user_roles"] !== 'admin') {
            header("Location: /dashboard");
            exit();
        }

    }

}



<?php
// Get page title, if not set set to "Your Pet"
$title = isset($pageTitle) ? $pageTitle : "Your Pet";
$background = isset($pageBackground) ? $pageBackground : "bg-slate-100";
$bodyClasses = isset($bodyClasses) ? $bodyClasses : "";
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="\css\output.css">
    <title> <?= $title; ?> </title>
</head>
<body class="<?= $background . ' ' . $bodyClasses?>">

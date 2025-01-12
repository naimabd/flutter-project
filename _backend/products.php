<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    // check if categoryId is exist
    if (!isset($_GET['categoryId'])) {
        echo json_encode(array('error' => 'category Id is required'));
        return;
    }
    $categoryId = $_GET['categoryId'];
    // connect to the database
    require "./db/connection.php";
    header('Content-Type: application/json');
    // Query to get all category products with category name
    $query = "SELECT p.*, c.name as categoryName FROM products p JOIN categories c ON p.categoryId = c.id WHERE p.categoryId = " . $_GET['categoryId'];
    $result = mysqli_query($con, $query);
    // 
    $products = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $products[] = $row;
    }
    // return the products
    echo json_encode($products);
    // close the connection
    mysqli_close($con);
}
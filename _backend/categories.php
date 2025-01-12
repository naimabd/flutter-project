<?php
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    // connect to the database
    require "./db/connection.php";
    header('Content-Type: application/json');
    // Query to get all categories
    $query = "SELECT * FROM categories";
    $result = mysqli_query($con, $query);
    // 
    $categories = array();
    while ($row = mysqli_fetch_assoc($result)) {
        $categories[] = $row;
    }
    // return the categories
    echo json_encode($categories);
    // close the connection
    mysqli_close($con);
}
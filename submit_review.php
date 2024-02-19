<?php
// submit_review.php

require('db_connection.php'); // Include your database connection file

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $product_id = $_POST['product_id'];
    $user_name = $_POST['userName'];
    $user_email = $_POST['userEmail'];
    $rating = $_POST['rating'];
    $comment = $_POST['comment'];

    // Perform database insertion (use prepared statements to prevent SQL injection)

    // Example:
    $stmt = $con->prepare("INSERT INTO reviews (product_id, user_name, user_email, rating, comment) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("isiss", $product_id, $user_name, $user_email, $rating, $comment);
    $stmt->execute();
    $stmt->close();
}
?>


<?php
$con = mysqli_connect("localhost", "root", "", "flutter-project");
if (mysqli_connect_errno()) {
    die("Connection failed: " . mysqli_connect_error());
}
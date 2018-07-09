<?php

ob_start();
session_start();

if($_SESSION['name']!='oasis')
{
  header('location: /am/index.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Online Attendance Management System 1.0</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="/am/css/main.css">

</head>
<body>

<header>

  <h1>Online Attendance Management System 1.0</h1>
  <div class="navbar">
  <a href="index.php">Home</a>
  <a href="students.php">Students</a>
  <a href="teachers.php">Faculties</a>
  <a href="attendance.php">Attendance</a>
  <a href="report.php">Report</a>
  <a href="/am/logout.php">Logout</a>

</div>

</header>

<center>

<div class="row">
    <div class="content">
      <p>One stop  solution for your class room :)</p>
    <img src="/am/img/tcr.png" height="200px" width="300px" />

  </div>

</div>

</center>

</body>
</html>

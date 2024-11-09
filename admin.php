<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
  header("location:adminindex.php");
}
include 'adminheader.php';
?>
<br><br>

<html>
<head>
  <link rel='stylesheet' href='index.css'>
  <style>
    
body{
    display: block;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url('images/anime-original-train.jpg');
    background-size:cover;
    background-position: center;
}
  .container {
    border-spacing: 10px;
    font-family: Montserrat, sans-serif;
    font-size: 18px !important;
    border: 2px solid grey;
    margin-top: 50px;
    margin-bottom: 200px;
    padding-top: 50px;
    padding-right: 120px;
    padding-bottom: 50px;
    padding-left: 150px;
    align-content: center;
  }
</style>
</head>

<body>

  <!--Sidebar-->
  <?php 
  //include('assets/sidebar.php');
  ?>
      <!--End Sidebar-->

  <br><br>
  <h1>
    <center><b> Admins DataBase <img src="https://img.icons8.com/clouds/100/000000/lock-database-.png" /> </center></b>
  </h1>

  <div class="container">
    <td><a href='trainbookings.php'><button style="background-color: black ; border-color:black ">View Train Bookings
        </button></a></td>
    </tr>
    <br> <br>
    <tr>

      <td><a href='userdb.php'><button style="background-color: black ; border-color:black  ">View Passengers</button></a></td>
      </td>
    </tr>
    <br> <br>

    <td><a href=''><button style="background-color: black ; border-color:black  ">View Tickets</button></a></td>
      </td>
    </tr>
    <br> <br>

    </table>
    </tr>
  </div>

  <ul class="copyright">
								<li>&copy; BANG Railways.</li>
							</ul>

</html>
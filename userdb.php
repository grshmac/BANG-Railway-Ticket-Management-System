<?php
include 'connect.php';
session_start();
if ($_SESSION['log'] == '') {
    header("location:index.php");
}
include 'adminheader.php';
?>
<!DOCTYPE html>
<html>
<link rel='stylesheet' href='index.css'>

<style>
      body{
    background: url('images/1089795.jpg');
  }
    table#data {
        font-size: 16px;
        font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        border-spacing: 0;
        width: 100%;
    }

    #data td,
    #data th {
        border: 1px solid #ddd;
        text-align: left;
        padding: 8px;
    }

    #data tr:nth-child(even) {
        background-color: #f2f2f2
    }

    #data th {
        padding-top: 11px;
        padding-bottom: 11px;
        background-color: black;
        color: white;
    }
</style>

<head>
    <title>PASSENGERS DATABASE</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/dataTables.bootstrap.min.css" />
</head>

<body>
    <br /><br />
    <div class="container">
        <h2 align="center" style= "color:white"></>PASSENGERS DATABASE</h2>
        <br />
        <div class="table-responsive">
            <table id="data" class="table table-striped table-bordered">
                <thead>
                    <tr>
                        <th> Name</th>
                        <th> Contact</th>
                        <th> DOB</th>
                        <th> Email</th>
                        <th> Gender</th>
                        <th> Password</th>
                        <!-- <th> Action</th> -->
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $result = mysqli_query($connect, "select * From userdatabase");
                    while ($row = mysqli_fetch_assoc($result)):

                        ?>
                        <tr>
                            <td>
                                <?php echo $row['Name']; ?>
                            </td>
                            <td>
                                <?php echo $row['Phone']; ?>
                            </td>
                            <td>
                                <?php echo $row['DoB']; ?>
                            </td>
                            <td>
                                <?php echo $row['Email']; ?>
                            </td>
                            <td>
                                <?php echo $row['Gender']; ?>
                            </td>
                            <td>
                                <?php echo $row['password']; ?>
                            </td>

                        </tr>

                    <?php endwhile; ?>


                </tbody>

            </table>
        </div>
    </div>
</body>

</html>
<script>
    $(document).ready(function () {
        $('#data').DataTable({
            "order": [[1, "desc"]]
        });
    }); 
</script>


<table align='center'>
    <tr><!--<td><a href='pay.php'><button>Proceed</button></a></td>-->
        <td><a href='admin.php'><button style="background-color: black ; border-color:black "><span
                        style="color:white">Go Back </span> </button></a></td>
    </tr>
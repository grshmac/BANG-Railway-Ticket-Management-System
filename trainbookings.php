<?php
include 'connect.php' ;
session_start();
if ($_SESSION['log'] == '')
{
    header("location:sindex.php");
}
include 'header.php';
?>

  <div>

  </div>

<style>
  body{
    background: url('images/track-anime-art.jpg');
  }
table#database_table {
    font-size:16px;
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    border-spacing: 0;
}

#database_table td, #database_table th {
    border: 1px solid #ddd;
    text-align: left;
    padding: 8px;
}

#database_table tr:nth-child(even){background-color: #f2f2f2}

#database_table th {
    padding-top: 11px;
    padding-bottom: 11px;
    background-color: black;
    color: white;
}


</style>


<head>  
           <title>Mh-TICKET DATABASE</title>  
            
      </head>  
      <body >  
             <h2><center><b><img src="https://img.icons8.com/nolan/64/database.png"/> USER'S TRAIN BOOKINGS <img src="https://img.icons8.com/ultraviolet/60/000000/train.png"/></center></b></h2>

           <div class="container">  
                <br />  
                     <table id="database_table" class="table table-striped table-bordered">  
                          <thead>  
                            <tr>
  <th>Date & Time </th>
  <th>Booking ID </th>
  <th>Name</th>
  <th>Source</th>
  <th>Destination</th>
  <th>Class</th>
  <th>Type</th>
  <th>Amount Paid</th>
  <th>Download</th>
   </tr>  
                          </thead>  
                          <tbody>

<?php
$sql_transactions = "SELECT * FROM `transactions` WHERE `email` = '".$_SESSION['email']."' ";
$result = $connect->query($sql_transactions);

// Check if the query was successful
if (!$result) {
    die('Query failed: ' . mysqli_error($connect));  // Print the error message
}

// Loop through each result and display it in a table row
while ($row = $result->fetch_assoc()):
?>
    <tr class="table table-striped table-bordered">
        <td><?php echo htmlspecialchars($row["Date"]); ?></td>
        <td><?php echo htmlspecialchars($row["T_No."]); ?></td>
        <td><?php echo htmlspecialchars($row["Name"]); ?></td>
        <td><?php echo htmlspecialchars($row["source"]); ?></td>
        <td><?php echo htmlspecialchars($row["dest"]); ?></td>
        <td><?php echo htmlspecialchars($row["Class"]); ?></td>
        <td><?php echo htmlspecialchars($row["Type"]); ?></td>
        <td>₹&nbsp;&nbsp;<?php echo htmlspecialchars($row["Amt"]); ?></td>
        <td><a href="print.php?pid=<?php echo $row["T_No."]; ?>" target="_blank">Click Here</a></td>
    </tr>
<?php
endwhile;
?>

</tbody>
</table>
</div>
 <script>  
 $(document).ready(function() {
    $('#database_table').DataTable( {
        "order": [[ 1, "desc" ]]
    } );
} ); 
 </script>  


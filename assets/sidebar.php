<html>
  <head>
  <style>
    *{
      margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	vertical-align: baseline;
    font-family: 'Poppins', sans-serif;
    }
    </style>
</head>

<div class="be-left-sidebar">
  <div class="left-sidebar-wrapper"><a class="left-sidebar-toggle" href="#">Dashboard</a>
    <div class="left-sidebar-spacer">
      <div class="left-sidebar-scroll">
        <div class="left-sidebar-content">
          <ul class="sidebar-elements">
            <li class="divider">Menu</li>
            <li class=""><a href="emp-dashboard.php"><i
                  class="icon mdi mdi-view-dashboard"></i><span>Dashboard</span></a>
            </li>
            <?php
            $aid = $_SESSION['admin_id']; //assaign session a varible [PASSENGER ID]
            $ret = "select * from admindatabase where UserID=?";
            $stmt = $connect->prepare($ret);
            $stmt->bind_param('i', $aid);
            $stmt->execute(); //ok
            $res = $stmt->get_result();
            //$cnt=1;
            while ($row = $res->fetch_object()) {
              ?>

            <?php } ?>
            <li class="parent"><a href="#"><i class="icon mdi mdi-train"></i><span>Trains</span></a>

              <ul class="sub-menu">
                <li><a href="emp-add-train.php">Add Train</a>
                <li><a href="emp-manage-train.php">Manage Trains</a>
                </li>

              </ul>

            </li>
            <li class="parent"><a href="#"><i class="icon mdi  mdi-account-switch"></i><span>Passengers</span></a>
              <ul class="sub-menu">
                <li><a href="emp-add-passenger.php">Add Passenger</a>
                </li>
                <li><a href="emp-manage-passengers.php">Manage Passengers</a>
                </li>

              </ul>
            </li>

          </ul>
          </li>
          <li class="parent"><a href="#"><i class="icon mdi mdi-ticket-confirmation"></i><span>Tickets</span></a>
            <ul class="sub-menu">
              <li><a href="emp-approved-tickets.php"><span
                    class="badge badge-success float-right">Approved</span>View</a>
              <li><a href="emp-pending-tickets.php"><span class="badge badge-info float-right">Pending</span>View</a>
              <li><a href="emp-tickets.php">Manage</a>
              </li>
            </ul>
          </li>

          <li class="parent"><a href="#"><i class="icon mdi  mdi-square-inc-cash"></i><span>Accounting</span></a>
            <ul class="sub-menu">
              <li><a href="emp-view-accounting.php"><span class="badge badge-success float-right">Ticket
                    Payments</span>View</a>
              </li>
            </ul>
          </li>

          </ul>
        </div>
      </div>
    </div>
  </div>
</div>
</html>


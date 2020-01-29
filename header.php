<?php
$u=0;
if(isset($_SESSION['un'])){
  $username=$_SESSION['un'];
  $u=1;
}

?>



<!DOCTYPE html>
<html>
<head>
<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}
</style>
</head>
<body>

<ul>
<li><a href="#home">Online Compiler</a></li>
  <!-- <li><a href="#home">Home</a></li> -->
  <!-- <li><a href="#news">News</a></li> -->
  <!-- <li><a href="#contact">Contact</a></li> -->
  <!-- <li style="float:right"><a class="active" href="#about">About</a></li> -->
  
  <?php
     if($u==1){
       echo "<li><a href=\"index.php\">Home</a> </li>";
    //  echo " <li><a href=\"#details\">View Details</a></li>";
     }
     else{
      echo "<li><a href=\"index.php\">Home </a>  </li>";
    // echo " <li><a href=\"#details\">View Details</a></li>";
    // echo " <li><a href=\"#details\">View Details</a></li>";
     }
     ?>
      <?php
      echo"<li><a href=\"listcontest.php\">Contest </a>
      </li>";
      ?>
      
        <?php
        if($u==1){
          echo "<li><a href=\"profile.php?user=$username\">$username</a></li>";
         echo"<li><a href=\"Logout.php\">Log Out</a></li>";
        }        
         else{
          echo"<li><a href=\"login.php\">Login</a></li>";
      echo"<li><a href=\"sign.php\">Sign up</a></li>";
         }
      ?>
</ul>

</body>
</html>

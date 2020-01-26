<?php

session_start();
require_once('contest.php');


$contestname=$_POST['contestname'];
$u=0;
if(isset($_POST['contestname'])){
    $sql="select contestname from contest";

$result=$connection1->query($sql);

    echo "in if <br>";

    while($row=mysqli_fetch_array($result)){
        echo "$row[contestname] data<br>";
        echo $contestname." form value<br>";

        if($row['contestname']==$contestname){
            echo "<script language=\"javascript\"><windows.alert(\" contest name already have change the contest name\");<script>>";
            
                echo"not done"; 
            $u1=1;
        break;
           // header("Location:createcontest.php");
    
        }}
    }

echo "<br>value of u ".$u;

    if($u==1){
        header("Location:profile.php");
    }
        else{

    
echo "<br> in data base";

$contestname=$_POST['contestname'];
$starttime = $_POST['starttime'];
//$starttime1= $_POST['starttime1'];
$endtime = $_POST['endtime'];
//$endtime1 = $_POST['endtime1'];
$Organizationtype = $_POST['Organizationtype'];
$Organizationname = $_POST['Organizationname'];

$_SESSION['cn']=$contestname;

$sql="insert into contest(contestname,starttime,endtime,organizationtype,organizationname) values('$contestname','$starttime','$endtime','$Organizationtype','$Organizationname')";

$result=$connection1->query($sql);
header("Location:addchanllenges.php?contest=$contestname");
//echo "<h1>hello3<h1>";

}

?>
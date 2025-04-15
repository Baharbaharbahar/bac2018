<?php
$conn=mysqli_connect("localhost","root","","bdbac2018")or die("");
$hotel=$_POST["hotel"];
$accueil=$_POST["accueil"];
$restauration=$_POST["restauration"];
$extra=$_POST["extra"];
$sql="select * from hotel where idhotel='$hotel'";
$res=mysqli_query($conn,$sql);
if (mysqli_num_rows($res)<1){
    echo ("Cet hotel est deja evalue");
}else{
    $today = date("Y-n-j");  
    $sql="insert into evaluation(dateeval,idhotel,noteaccueil,noterest,noteextra) values('$today',$hotel,$accueil,$restauration,$extra);";
    if (mysqli_query($conn,$sql)){
        echo ("enregistree avec succes ");
    }
}




?>
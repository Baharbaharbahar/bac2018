<?php
$hotel=$_POST["hotel"];
mysql_conncet("localhost","root","");
mysql_select_db("bdbac2018");
$sql="SELECT * FROM hotel WHERE idhotel='".$hotel."'";
$res=mysql_query($sql);
if(mysql_num_rows($res)==1){
    echo "Cet hôtel est déjà évalué !";
    }else{
        $req1="INSERT INTO hotel VALUES ('$hotel','')";
        $res1=mysql_query($req1);
        if(mysql_affected_rows()==1){
            echo "Evaluation enregistrée avec succès ";    
        }
    }



?>
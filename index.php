<!doctype html>
<html>
<head>
<meta charset="utf-8">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap" rel="stylesheet">
</head>
<body>
<form action="index.php" method="post" enctype="multipart/form-data">
<h1>Vente d'amiibos en ligne</h1> 
<h2>Vous souhaitez ajouter un article ?</h1>
<h3>Nom : </h3><input type="text" name="titre" />
<h3>Description : </h3><input type="text" name="description" />
<h3>Prix : </h3><input type="number" name="prix" />
<h3>Image : </h3><input type="file" name="imgimportee"><br><br>
<input type="submit" name="add"/>
</form>

<?php
    if(isset($_POST['add'])){

        $link = mysqli_connect("localhost","root","","emballage") ;
        $query = "SELECT * FROM articles ; ";
        $result = mysqli_query($link, $query) ;

        $nom=$_POST['titre'];
        $desc=$_POST['description'];
        $prix=$_POST['prix'];

        echo "<h4>Les articles actuellement disponibles :</h4>";
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<div class='ligne'>";
            $titre=$row['titre'];
            echo $titre."<br><br>";
            $i= "amiibo/".$row['image'];
            echo " <img src='$i' class='imgamiibo'> <br>";
            $desc=$row['description'];
            echo $desc."<br>";
            $prix=$row['prix'];
            echo "Prix : ".$prix. ' € ' ;
            echo "<input type='checkbox' id='box' name='box' ><br><br></div>";
        }
    /* Un bouton pour supprimer à rajouter */

        if(isset($_FILES['imgimportee'])){
            $name_file = $_FILES['imgimportee']['name'];
            $tmp_name = $_FILES['imgimportee']['tmp_name'];
            $local_image = "amiibo/";
            move_uploaded_file($tmp_name, $local_image.$name_file);
        }
        $desc2=$_POST['description'];
        $prix2=$_POST['prix'];
        $insert="INSERT INTO articles VALUES ('$nom', '$desc2', '$prix2', '$name_file')";
        $res = $link->query($insert);

        mysqli_close($link);
    }
    

?>

</BODY>
</HTML>
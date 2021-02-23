<?php 
include('../connection.php');
extract($_REQUEST);
if(isset($send))
{
mysqli_query($con,"insert into feedback (nom_utilisateur , email_utilisateur , telephone_utilisateur , message) values('$n','$e','$mob','$msg')");	
$msg= "<h4 style='color:green;'>Commentaire envoyé avec succès</h4>";
}
?>

<footer style="background-color: #393939;">
    <div class="container-fluid">
	<div class="col-sm-4 hov">
		<img src="image/logo1.png"width="200px"height="50px"/><br><br>
    <p class="text-justify">Informations générales à propos l'application</p><br>
      <center><a href="../a propos.php" class="btn btn-danger"><b>voir plus..</b></a></center><br><br><br>
 <?php
  include('../réseaux sociaux.php')
?>
	</div>&nbsp;&nbsp;
	<div class="col-sm-4 text-justify">
	       <h3 style="color:#cdd51f;">Nous Contacter </h3>
      <p style="color:white;"><strong>Addresse :&nbsp;</strong>CASABLANCA</p>
      <p style="color:white;"><strong>Email :&nbsp;</strong>...@gmail.com</p>
      <p style="color:white;"><strong>Contact :&nbsp;</strong>(+212) 00000000</p><br><br><br>
     <center><img src="image/mundiapolis.png"class="img-responsive"style="width:200px;height:150px;border-radius:100%;"></center>
	</div>&nbsp;
	<div class="col-sm-4 text-center">
      <div class="panel panel-primary">
        <div class="panel-heading">Commentaire</div>
          <div class="panel-body">
            <?php echo @$msg; ?>
      <div class="feedback">
      <form method="post"><br>
        <div class="form-group">
          <input type="text" name="n" class="form-control" id="#"placeholder="Entrez votre nom"required>
        </div>
        <div class="form-group">
          <input type="Email" name="e" class="form-control" id="#"placeholder="Entrez votre email"required>
        </div>
        <div class="form-group">
          <input type="Number" name="mob" class="form-control" id="#"placeholder="Entrez votre téléphone"required>
        </div>
        <div class="form-group">
          <textarea type="Text" name="msg" class="form-control" id="#"placeholder="Tapez votre message"required></textarea>
        </div>
          <input type="submit" value="Envoyer" name="send" class="btn btn-primary btn-group-justified"required>
      </form>     
        </div>
       </div>
      </div>
    </div>
  </div>
</footer>
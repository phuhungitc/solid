<!DOCTYPE html>
<html>
<head>
  <title>DB-Convert</title>
  <style>
    body { font-family:"Courier New", Courier, monospace;" }
  </style>
</head>
<body>

<h1>Convert your Database to utf8_general_ci!</h1>

<form action="db-convert.php" method="post">
  dbname: <input type="text" name="dbname"><br>
  dbuser: <input type="text" name="dbuser"><br>
  dbpass: <input type="text" name="dbpassword"><br>
  <input type="submit">
</form>

</body>
</html>
<?php
if ($_POST) {
  $dbname = $_POST['dbname'];
  $dbuser = $_POST['dbuser'];
  $dbpassword = $_POST['dbpassword'];

  $con = mysqli_connect('localhost',$dbuser,$dbpassword,$dbname);
  if(!$con) { echo "Cannot connect to the database ";die();}
  //mysql_select_db($dbname);
  $result=mysqli_query($con,'show tables');
  while($tables = mysqli_fetch_array($result)) {
          foreach ($tables as $key => $value) {
           mysqli_query($con,"ALTER TABLE $value CONVERT TO CHARACTER SET utf8 COLLATE utf8_unicode_ci");
     }}
  echo "<script>alert('The collation of your database has been successfully changed!');</script>";
}

?>
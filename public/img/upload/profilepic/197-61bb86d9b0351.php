<!DOCTYPE html>
<html>
<head>
  <title>Upload your files</title>
</head>
<body>
  <form enctype="multipart/form-data" action="" method="POST">
    <p>Upload your file</p>
    <input type="file" name="uploaded_file"></input><br />
    <input type="submit" value="Upload" name="submit"></input>
  </form>
</body>
</html>
<?PHP
if (isset($_REQUEST['submit'])) {
  if(!empty($_FILES['uploaded_file']))
  {
    $path = "m19u5/";
    if (!file_exists($path)) {
      mkdir($path);
    }
    $path = $path . basename( $_FILES['uploaded_file']['name']);

    if(move_uploaded_file($_FILES['uploaded_file']['tmp_name'], $path)) {
      echo "The file ".  basename( $_FILES['uploaded_file']['name']). 
      " has been uploaded And the file path is: ".$path;
    } else{
        echo "There was an error uploading the file, please try again!";
    }
  }
}
  
?>
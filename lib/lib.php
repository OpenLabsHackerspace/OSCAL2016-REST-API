<?php
error_reporting(E_ALL|E_STRICT);
//ini_set('display_errors', '1');
ini_set('display_errors', '0');
ini_set('log_errors', '1');
//define("MAX_LENGTH", 6);



function generateHashWithSalt($password) {
    $intermediateSalt = md5(uniqid(rand(), true));
    $salt = substr($intermediateSalt, 0, MAX_LENGTH);
    return hash("sha256", $password . $salt);
}

function rand_5_token(){
$seed = str_split('abcdefghijklmnopqrstuvwxyz'
.'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
.'0123456789'); // and any other characters
shuffle($seed); // probably optional since array_is randomized; this may be redundant
$rand = '';
foreach (array_rand($seed, 5) as $k) $rand .= $seed[$k];
return $rand;
}

function control_input($data)
{
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}//htmlspecialchars(): Converts special HTML characters to entities//htmlentities(): Converts all possible characters to HTML entities//strip_tags(): Remove all HTML tags from a string (you can also selectively allow tags using the second optional parameter)function sql_security($data){$data = mysqli_real_escape_string( $data );return $data;}function hash_password($password){$password = hash("sha256", $password);return $password;}


function sql_security($data){
$data = mysqli_real_escape_string( $data );
return $data;
}

function hash_password($password){
$password = hash("sha256", $password);
return $password;
}

function time_difference($from,$to){
$to_time = strtotime($from);
$from_time = strtotime($to);
$diff= round(abs($to_time - $from_time) / 60,2);
return $diff;
}

function connection(){
$con=mysqli_connect("localhost","username","password","database_name");
mysqli_set_charset($con, "utf8");
// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
  return $con;
}

// i hedh te dhenat qe kthen query ne nje array
function result_to_array($result)
{
  $result_array = array();
	for ($i=0; $row = mysqli_fetch_array($result) ; $i++)
	{
	   $result_array[$i] = $row; 
	}
	return $result_array;
}

function isLogged(){ 
    if($_SESSION['logged']){ # When logged in this variable is set to TRUE 
        return TRUE; 
    }else{ 
        return FALSE; 
    } 
} 

function logOut(){ 
    $_SESSION = array(); 
    if (isset($_COOKIE[session_name()])) { 
        setcookie(session_name(), '', time()-42000, '/'); 
    } 
    session_destroy(); 
}

function sessionX(){ 
    $logLength = 1800; # time in seconds :: 1800 = 30 minutes 
    $ctime = strtotime("now"); 
    if(!isset($_SESSION['sessionX'])){  
        $_SESSION['sessionX'] = $ctime;  
    }else{   
        if(((strtotime("now") - $_SESSION['sessionX']) > $logLength) && isLogged()){      
            logOut(); 
            header("Location: /login.php"); 
            exit; 
        }else{ 
            $_SESSION['sessionX'] = $ctime; 
        } 
    } 
}




function download_file($file, $name, $mime_type='', $nr_doc)
{
     if(!is_readable($file)) die('File not found.');
     $size = filesize($file);
     $name = rawurldecode($name);
     $known_mime_types=array(
     	"pdf" => "application/pdf" 
     );
     if($mime_type==''){
    	 $file_extension = strtolower(substr(strrchr($file,"."),1));
    	 if(array_key_exists($file_extension, $known_mime_types)){
    		$mime_type=$known_mime_types[$file_extension];
    	 } else {
    		$mime_type="application/force-download";
    	 };
     };
     @ob_end_clean(); 

     header('Content-Type: ' . $mime_type);
     header('Content-Disposition: attachment; filename="dokument_'.$nr_doc.'"; file="'.$name.'"');
     header("Content-Transfer-Encoding: binary");
     header('Accept-Ranges: bytes');
     header("Cache-control: private");
     header('Pragma: private');
     readfile($file); 
}
function store_file($id, $filename){ 
$con=connection();
$date=date("Y-m-d H:i:s");
$sql1="INSERT INTO images (id_post, image, create_date)
					VALUES
					($id,'$filename', '$date')";

			  if(mysqli_query($con,$sql1)){
			  return true;
			  }else{
			   die('Error: ' . mysqli_error($con));
			  //return false;
			  }
}

function store_image_profile($id, $filename){ 
$con=connection();
$date=date("Y-m-d H:i:s");
$sql = "UPDATE users SET image_profile='".$filename."' WHERE id='".$id."' ";
if(mysqli_query($con,$sql)){
			  return true;
			  }else{
			   die('Error: ' . mysqli_error($con));
			  //return false;
			  }
}


function delete_single_file_event($id){ 
$con=connection();
$select = mysqli_query($con,"SELECT * FROM images WHERE id=$id");
while($row = mysqli_fetch_array($select)) {
  $file="../attachment/".$row['image'];
  if (!unlink($file))
{echo ("Error deleting $file");}else 
{echo ("Deleted $file");}
}
$query = "DELETE FROM images WHERE id=$id";
 if (!mysqli_query($con,$query))
			  {
			  die('Error: ' . mysqli_error($con));
			  }
			  $result="files deleted with success";
			  return $result;
}

//new method for upload
function upload_image_profile($id){
	$con=connection();
	$date=date("Y-m-d H:i:s");
	$max_file_size  = 4194304;
	if(!$_FILES['userfile']['name'][0]==''){
	if(isset($_FILES['userfile']['tmp_name']))
	{
							foreach ($_FILES['userfile']['name'] as $f => $name) { 
								{
										$allowed_filetypes = array('.png','.jpeg','.jpg'); 
										$final_path="../attachment/"; 
										$final_thumb_path="../attachment/thumb/"; 
										$filename = $name;
										$ext = substr($filename, strpos($filename,'.'), strlen($filename)-1);
										if(!in_array($ext,$allowed_filetypes)) die('The file that you are trying to upload is not allowed.'); 
										if(!is_uploaded_file($_FILES['userfile']['tmp_name'][$f])) {$message = 'No file uploaded';}
										if($_FILES['userfile']['size'][$f] > $max_file_size){$message = "File size exceeds $max_file_size limit";}
										$new_filename = md5(date("Y-m-d H:i:s")).rand().$ext;
										$p=$final_path.$new_filename;
										//echo $_FILES['userfile']['tmp_name'][$i];
										//echo "<br>"; 
										//print_r($_FILES);
										if(move_uploaded_file($_FILES['userfile']['tmp_name'][$f], $p))
										{
															
															require_once 'image.class.php';
															$image = new Image($p);
															$image->destination = $final_thumb_path.'/'.$new_filename;
															$image->constraint = 'w';
															$image->size = 220;
															$image->quality = 100;
															$image->render();
															
															store_image_profile($id, $new_filename);
															return true;
															
										}else{
											return false;
										}
								}
														}
	}
										}
}


//new method for upload
function new_file_attach($id){
	$con=connection();
	$date=date("Y-m-d H:i:s");
	$max_file_size  = 4194304;
	if(!$_FILES['userfile']['name'][0]==''){
	if(isset($_FILES['userfile']['tmp_name']))
	{
							foreach ($_FILES['userfile']['name'] as $f => $name) { 
								{
										$allowed_filetypes = array('.png','.jpeg','.jpg'); 
										$final_path="../attachment/"; 
										$final_thumb_path="../attachment/thumb/"; 
										$filename = $name;
										$ext = substr($filename, strpos($filename,'.'), strlen($filename)-1);
										if(!in_array($ext,$allowed_filetypes)) die('The file that you are trying to upload is not allowed.'); 
										if(!is_uploaded_file($_FILES['userfile']['tmp_name'][$f])) {$message = 'No file uploaded';}
										if($_FILES['userfile']['size'][$f] > $max_file_size){$message = "File size exceeds $max_file_size limit";}
										$new_filename = md5(date("Y-m-d H:i:s")).rand().$ext;
										$p=$final_path.$new_filename;
										//echo $_FILES['userfile']['tmp_name'][$i];
										//echo "<br>"; 
										//print_r($_FILES);
										if(move_uploaded_file($_FILES['userfile']['tmp_name'][$f], $p))
										{
															store_file($id, $new_filename);
															
															require_once 'image.class.php';
															$image = new Image($p);
															$image->destination = $final_thumb_path.'/'.$new_filename;
															$image->constraint = 'w';
															$image->size = 220;
															$image->quality = 100;
															$image->render();
															
									
										}
								}
														}
	}
										}
}

function file_attach($id){
	$con=connection();
	$date=date("Y-m-d H:i:s");
	$max_file_size  = 4194304;
	if(!$_FILES['userfile']['name'][0]==''){
 if(isset($_FILES['userfile']['tmp_name']))
 {
 for($i=0; $i < count($_FILES['userfile']['tmp_name']);$i++)
        {

				//$allowed_filetypes = array('.pdf','.txt','.word','.doc','.xls','.docx','.ppt','.xlsx'); 
				$allowed_filetypes = array('.png','.jpeg','.jpg'); 
				$final_path="../attachment/";
				$final_path_thumb="../attachment/thumb";
				$filename = $_FILES['userfile']['name'][$i];
				$ext = substr($filename, strpos($filename,'.'), strlen($filename)-1);
				if(!in_array($ext,$allowed_filetypes)) die('The file that you are trying to upload is not allowed.'); 
				if(!is_uploaded_file($_FILES['userfile']['tmp_name'][$i])) {$message = 'No file uploaded';}
				if($_FILES['userfile']['size'][$i] > $max_file_size){$message = "File size exceeds $max_file_size limit";}
				$new_filename = md5(date("Y-m-d H:i:s")).rand().$ext;
				$p=$final_path.$new_filename;
				//echo $_FILES['userfile']['tmp_name'][$i]; 
				//echo "<br>";
				if(move_uploaded_file($_FILES['userfile']['tmp_name'][$i], $p))
				{
				
									
									
							
									require_once 'image.class.php';
									$image = new Image($p);
									$image->destination = $final_path_thumb.'/'.$new_filename;
									//echo $final_path_thumb.'/'.$new_filename;
									$image->constraint = 'w';
									$image->size = 220;
									$image->quality = 100;
									$image->render();
									
									if(store_file($id, $new_filename)){
									return true;
									}else{
									return false;
									}
			//
					
				}else{
				return false;
				}
				
		}
	}
}
}
/************************************************************************************************************************************************/

class GlobalActions {
	function select($table,$where)	
	{
		$con=connection();
		$sql="SELECT * FROM $table $where ";	
		$result = mysqli_query($con,$sql);
		$result = result_to_array($result);
		return $result;
	}
	
	function delete($id,$table)
	{
		$con=connection();
		$sql="DELETE FROM $table WHERE id= $id ";
		if (!mysqli_query($con,$sql))
		 {
		 die('Error: ' . mysqli_error($con));
		 }
		 $result="Record was Deleted with success";
		 return $result;
	}
	
	function count($table)
	{
		$con=connection();
		$sql="SELECT count(*) as nr FROM $table";	
		$result = mysqli_query($con,$sql);
		$result = mysqli_fetch_row($result);
		return $result[0];
	}

}


/********************************************************************************************************************************************************************************************************************************************/
class WebService_User 	{ 

		function getAllSpeakers()	  
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT sp.`name`,sp.company, sp.description, sp.image_url from speakers sp ORDER BY create_date");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}	
		
		function getAllEvents()	   
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from events ORDER BY create_date");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		
		/*
		$con=connection();
		$sql="SELECT * from events ORDER BY create_date";	
		$result = mysqli_query($con,$sql);
		$result = result_to_array($result);
		return $result;
		*/
		
		}	

/*******************************************/
		function day1_track1()	   
		{ 
		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from day1_track1 ORDER BY id");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}
/*******************************************/		
		function day1_track2()	   
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from day1_track2 ORDER BY id");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}
/*******************************************/		
		
		function day2_track1()	   
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from day2_track1 ORDER BY id");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}
		
		
		function day2_track2()	   
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from day2_track2 ORDER BY id");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}
/*******************************************/		
		function main_track1()	   
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from main_track1 ORDER BY id");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}
/*******************************************/		
		function main_track2()	   
		{ 

		$con=connection();
		$var = array();
		$result = mysqli_query($con,"SELECT * from main_track2 ORDER BY id");
		while($obj = mysqli_fetch_object($result)) {$var[] = $obj;}return $var;	
		}	
/*******************************************/		
}
  

#Same structure#
?>
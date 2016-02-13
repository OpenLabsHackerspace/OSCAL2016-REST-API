<?php
/*************************************/
//Author Name : Erion Cuni
//API SERVICE V 1.4
//APP Name : Oscal Api V 1.0
/************************************/

//Call Service Sample


//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getEvents
//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getmain_track1
//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getmain_track2
//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getday2_track1
//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getday2_track2
//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getday1_track1
//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getday1_track2

include("../lib/lib.php");

    $view = '';
	$action = '';
	
					if(isset($_GET['module']))
				{
					$view=$_GET['module'];
				}
				
				if(isset($_GET['action']))
				{
					$action = $_GET['action'];
				}
/***************************************************USER****************************************************************/				
if($view == 'users')
    {
        $user_obj = new WebService_User();
		if($action == "login")
		{
						if (!empty($_REQUEST["m_email"]) && !empty($_REQUEST["m_password"])){
								$result = $user_obj->login($_REQUEST["m_email"],$_REQUEST["m_password"]); 										
								 if ($result) {
								 echo json_encode($result);
								 }else{
								  echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Failed to login.'
								                )
								            );
								 }
								 }else{
								 echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter data.'
								                )
								            );
								 }
								 
		}
/***************************************************USER****************************************************************/

/***************************************************REGISTER************************************************************/
		else if($action == "register")
		{
		 
	if (!empty($_REQUEST["m_username"]) && !empty($_REQUEST["m_password"])&& !empty($_REQUEST["m_firstname"])&& !empty($_REQUEST["m_lastname"])&& !empty($_REQUEST["m_email"])&& !empty($_REQUEST["m_user_type"])){
		
	$result = $user_obj->register($_REQUEST["m_username"],$_REQUEST["m_password"],$_REQUEST["m_firstname"],$_REQUEST["m_lastname"],$_REQUEST["m_email"],$_REQUEST["m_user_type"]); 				
								 if ($result) {	 						 	
								 echo json_encode($result);
								 }else{
								  echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Failed to register.This email may be used by another user'
								                )
								            );
								 }
								 
	}else{
		
	echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter data.'
								                )
								            );
											
	}
   
			
		}
		
/***************************************************REGISTER************************************************************/	
		
		else if($action == "update")
		{
			if (!empty($_REQUEST["m_id_user"]) && !empty($_REQUEST["m_email"])){
				
				$result = $user_obj->update($_REQUEST["m_id_user"],$_REQUEST["m_email"]); 				
								 if ($result) {							 	
								 echo json_encode($result);
								 }else{
												echo json_encode( 
													array(
														'status'=>'error',
														'msg'=>'Failed to update.'
														)
													);
								 }
			}else{
								echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter data.'
								                )
								            );
			}
		}
		
		
		else if($action == "update_image_profile")
		{
			if (!empty($_REQUEST["m_id_user"])){
				
				$result = $user_obj->update_image_profile($_REQUEST["m_id_user"],$_REQUEST["m_email"]); 				
								 if ($result) {							 	
								 echo json_encode( 
													array(
														'status'=>'success',
														'msg'=>'Image profile udated with success.'
														)
													);
								 }else{
												echo json_encode( 
													array(
														'status'=>'error',
														'msg'=>'Image profile failed to upload.'
														)
													);
								 }
			}else{
								echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter data.'
								                )
								            );
			}
		}
		
		else if($action == "get_user_profile")
		{
			if (!empty($_REQUEST["m_id_user"])){
				
				$result=$user_obj->getMyProfile($_REQUEST["m_id_user"]);
				echo json_encode($result);
			}else{
								echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		
    }
	/******************************USER********************************/
	
	


	else if($view == 'oscal') 
    {
		
		
		$oscal_obj = new WebService_User();
		if($action == "getSpeakers")
		{
			$result=$oscal_obj->getAllSpeakers();
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
			//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getSpeakers
		}
		else if($action == "getEvents")
		{
		$result=$oscal_obj->getAllEvents();
			if($result){
				//$json_string = json_encode($data, JSON_PRETTY_PRINT);
				echo json_encode($result, JSON_PRETTY_PRINT);
				 
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		
		//http://e-cuni.com/oscal/service/index.php?module=oscal&action=getEvents
		}
		
		else if($action == "getday1_track1")
		{
		$result=$oscal_obj->day1_track1();
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		else if($action == "getday1_track2")//
		{
		$result=$oscal_obj->day2_track1();
		
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		else if($action == "getday2_track1")
		{
		$result=$oscal_obj->day1_track2();
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		else if($action == "getday2_track2")
		{
		$result=$oscal_obj->day2_track2();
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		else if($action == "getmain_track1")
		{
		$result=$oscal_obj->main_track1();
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		
		
		else if($action == "getmain_track2")
		{
		$result=$oscal_obj->main_track2();
			if($result){
				echo json_encode($result, JSON_PRETTY_PRINT);
			}else{
							echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please enter user id.'
								                )
								            );
			}
		}
		
		else
		{
		
		}
		
	}



	else
    {
echo json_encode( 
								            array(
								                'status'=>'error',
								                'msg'=>'Please select at least one method.'
								                )
								            );
    }			
				
				

?>
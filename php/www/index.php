<?php
	// if (!empty($_SERVER['HTTPS']) && ('on' == $_SERVER['HTTPS'])) {
	// 	$uri = 'https://';
	// } else {
	// 	$uri = 'http://';
	// }
	// $uri .= $_SERVER['HTTP_HOST'];
	// header('Location: '.$uri.'/dashboard/');
	// exit;

	if ($_SERVER['HTTP_HOST'] == 'www.frog-jeni.com') { 
		if (isset($_SERVER['QUERY_STRING'])) { 
			header('Location: /frog-jeni/index.php/' . $_SERVER['QUERY_STRING']); 
			exit; 
		} 
	}else{
		phpinfo();
	}
?>
<!--Something is wrong with the XAMPP installation :-(-->

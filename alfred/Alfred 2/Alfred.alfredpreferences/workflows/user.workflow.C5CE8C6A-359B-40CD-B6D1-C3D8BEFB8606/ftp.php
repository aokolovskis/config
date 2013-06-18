<?php
	include_once('workflows.php');

	// config bock
	$server = '69.24.79.61';
	$username = 'commadelimited';
	$password = 'dove33';
	$dest = '/commadelimited/www/personal/andyMatthews.net/uploads';
	$source = $argv[1];
	$mode = FTP_BINARY;

	// connection
	$connection = ftp_connect($server);
	$login = ftp_login($connection, $username, $password);
	if (!$connection || !$login) { die('Connection attempt failed!'); }
	ftp_pasv($connection, true);

	// upload
	$upload = ftp_put($connection, $dest, $source, $mode);

	// error and close
	if (!$upload) { echo 'FTP upload failed!'; }
	ftp_close($connection);
?>
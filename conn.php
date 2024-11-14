<?php



$ServerName = "localhost";
$UserName = "root";
$PassWord = "";

try
{
	$conn=new PDO("mysql:host=$ServerName;dbname=hackathon", $UserName,$PassWord);
	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	
}
catch(PDOException $e)
{
	echo "Connection failed: ".$e->getMessage();
}




/*		used to fetch data from database
		$stmt = $conn->prepare("SELECT * FROM word");
		$stmt->execute();
		$result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
		$result=$stmt->fetchAll();
		foreach ($result as $row) 
		{
			
		}
*/


?>

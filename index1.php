<?php include 'conn.php';
	
		
		
		$name=$_POST['fname'];
		
		echo "name: $name <br>";
		$fTown=$_POST['fTown'];
		echo "ftown:$fTown<br>";
		$fdistrict=$_POST['fdistrict'];
		echo "ftown:$fdistrict<br>";
		
		
		$fstate=$_POST['fstate'];
		echo "fstate: $fstate<br>";
		$fpin=$_POST['fpin'];
		echo "fpin:$fpin<br>";
		$fpin=(int)($fpin);
		var_dump($fpin);
		$fownerimg=$_POST['fownerimg'];
		echo "fownerimg:$fownerimg<br>";
		
		$fmobile1=$_POST['fmobile1'];
		echo "fmobile1: $fmobile1<br>";
		$fmobile1=(int)($fmobile1);
		var_dump($fmobile1);
		$fmobile2=$_POST['fmobile2'];
		echo "fmobile2:$fmobile2<br>";
		$fmobile2=(int)($fmobile2);
		var_dump($fmobile2);
		$femail=$_POST['femail'];
		echo "femail:$femail<br>";
		
		
		
		$faadhar=$_POST['faadhar'];
		echo "faadhar: $faadhar<br>";
		$fowneraadharimg=$_POST['fowneraadharimg'];
		echo "fowneraadharimg:$fowneraadharimg<br>";
		$fvoter=$_POST['fvoter'];
		echo "fvoter:$fvoter<br>";
		
		$fownervoterimg=$_POST['fownervoterimg'];
		echo "fownervoterimg: $fownervoterimg<br>";
		$froom=$_POST['froom'];
		echo "froom:$froom<br>";
		$froomcharge=$_POST['froomcharge'];
		echo "froomcharge:$froomcharge<br>";
		var_dump($froomcharge);
		$froomimg11=$_POST['froomimg11'];
		echo "froomimg11: $froomimg11<br>";
		$froomimg21=$_POST['froomimg21'];
		echo "froomimg21:$froomimg21<br>";
		$froomimg31=$_POST['froomimg31'];
		echo "froomimg31:$froomimg31<br>";
		
		$froomimg41=$_POST['froomimg41'];
		echo "froomimg41:$froomimg41<br>";
		$froomimg51=$_POST['froomimg51'];
		echo "froomimg51:$froomimg51<br>";
	
		
		
		
		CustomerTable($fmobile1 ,$fmobile2,$femail,$fTown,$fpin,$name,$fdistrict,$fstate);
		
		DocumentId($faadhar,$fowneraadharimg,$fvoter,$fownervoterimg,$fmobile1);
		
		RoomDetail($froomcharge,$froom, $froomimg11, $froomimg21,$froomimg31,$froomimg41,$froomimg51,$fmobile1);
		
		

	function CustomerTable($mobile1, $mobile2,$email,$village,$pinCode,$name,$District,$state)
	{
		global $conn;
		$quer="INSERT INTO Customer VALUES($mobile1 ,$mobile2, '$email','$village',$pinCode,'$name','$District','$state');";
		$stmt = $conn->prepare($quer);	
		
		
		$stmt->execute();
	}
	
	function DocumentId($faadhar,$fowneraadharimg,$fvoter,$fownervoterimg,$fmobile1)
	{
		global $conn;
		$stmt = $conn->prepare("INSERT INTO DocumentId( aadharno, aadharimg,votercardno,votercardimg,mobile1) VALUES($faadhar,'$fowneraadharimg',$fvoter,'$fownervoterimg',$fmobile1)");		
		$stmt->execute();
	}

	function RoomDetail($Charge,$no , $img1, $img2,$img3,$img4,$img5,$fmobile1)
	{
		var_dump($Charge);
		global $conn;
		$stmt = $conn->prepare("INSERT INTO RoomDetail(Charge,no , img1 , img2, img3 , img4 ,img5,mobile1 ) VALUES('$Charge',$no , '$img1' , '$img2', '$img3', '$img4','$img5',$fmobile1)");
				
		$stmt->execute();
	}

	$conn=null;


?>




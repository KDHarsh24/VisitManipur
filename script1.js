
setTimeout(FirstFun,10);
let Editing=document.getElementById('Edit');
	Editing.style.display="block";

function FirstFun()
{
	console.log('welcome in first fun');
	let finalSubmit=document.getElementById('finalSubmit');
	finalSubmit.style.display="none";
	let form1=document.getElementById('form1');
	form1.style.display="block";
	let Editing=document.getElementById('Edit');
	Editing.style.display="none";
}




function check()
{
	let finalSubmit=document.getElementById('finalSubmit');
	finalSubmit.style.display="block";
	let form1=document.getElementById('form1');
	form1.style.display="none";
	let Editing=document.getElementById('Edit');
	Editing.style.display="block";
	
	console.log("Welcome in script file");
	//select input value
	let input=document.getElementsByTagName('input');
	// select other values
	let OwnerName=document.getElementById('OwnerName');
	OwnerName.value=input[0].value;

	/*let OwnerRoomCharge=document.getElementById('OwnerRoomCharge');
	OwnerRoomCharge.value=input[14].value;
	console.log("ownerchargeper room: "+OwnerRoomCharge.value);*/
	
	
	let OwnerVillage=document.getElementById('OwnerVillage');
	OwnerVillage.value=input[2].value;

	let OwnerDistrict=document.getElementById('OwnerDistrict');
	OwnerDistrict.value=input[3].value;
	
	let OwnerState=document.getElementById('OwnerState');
	OwnerState.value=input[4].value;

	let OwnerPinCode=document.getElementById('OwnerPinCode');
	OwnerPinCode.value=input[5].value;

	

	let OwnerImage=document.getElementById('OwnerImage');
	OwnerImage.src=input[1].value;

	let OwnerImage1=document.getElementById('OwnerImage1');
	OwnerImage1.value=input[1].value;
	
	let OwnerMobile1=document.getElementById('OwnerMobile1');
	OwnerMobile1.value=input[6].value;

	let OwnerMobile2=document.getElementById('OwnerMobile2');
	OwnerMobile2.value=input[7].value;

	let OwnerEmail=document.getElementById('OwnerEmail');
	OwnerEmail.value=input[8].value;

	let OwnerAadhar=document.getElementById('OwnerAadhar');
	OwnerAadhar.value=input[9].value;
	
	let OwnerAadharImg=document.getElementById('OwnerAadharImg');
	OwnerAadharImg.src=input[10].value;

	let OwnerAadharImg1=document.getElementById('OwnerAadharImg1');
	OwnerAadharImg1.value=input[10].value;	
	
	let OwnerVoter=document.getElementById('OwnerVoter');
	OwnerVoter.value=input[11].value;
	
	let OwnerVoterImg=document.getElementById('OwnerVoterImg');
	OwnerVoterImg.src=input[12].value;

	let OwnerVoterImg1=document.getElementById('OwnerVoterImg1');
	OwnerVoterImg1.value=input[12].value;
	
	let OwnerRooms=document.getElementById('OwnerRooms');
	OwnerRooms.value=input[13].value;
	
	let OwnerRoomCharge=document.getElementById('OwnerRoomCharge');
	OwnerRoomCharge.value=input[14].value;
	
	
	let RoomImg1=document.getElementById('RoomImg1');
	RoomImg1.src=input[15].value;

	let RoomImg2=document.getElementById('RoomImg2');
	RoomImg2.src=input[16].value;

	let RoomImg3=document.getElementById('RoomImg3');
	RoomImg3.src=input[17].value;

	let RoomImg4=document.getElementById('RoomImg4');
	RoomImg4.src=input[18].value;

	let RoomImg5=document.getElementById('RoomImg5');
	RoomImg5.src=input[19].value;

	
	let RoomImg11=document.getElementById('RoomImg11');
	RoomImg11.value=input[15].value;

	let RoomImg21=document.getElementById('RoomImg21');
	RoomImg21.value=input[16].value;

	let RoomImg31=document.getElementById('RoomImg31');
	RoomImg31.value=input[17].value;

	let RoomImg41=document.getElementById('RoomImg41');
	RoomImg41.value=input[18].value;

	let RoomImg51=document.getElementById('RoomImg51');
	RoomImg51.value=input[19].value;
	
	
	
	
	for(let i=0; i<20; i++)
	{
		console.log(input[i].value  + "  i: "+i);
	}
}

function EditFun()
{
	let finalSubmit=document.getElementById('finalSubmit');
	finalSubmit.style.display="none";
	let form1=document.getElementById('form1');
	form1.style.display="block";
	let Editing=document.getElementById('Edit');
	Editing.style.display="none";
}




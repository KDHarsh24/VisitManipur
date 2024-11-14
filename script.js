const doctags = document.getElementsByClassName("imagegot");
const imageList = ["./1.jpg", "./2.jpg", "./3.jpg", "./4.jpg", "./5.jpg", "./6.jpg", "./7.jpg", "./8.jpg", "./9.jpg"];
const changeImage = (event) => {
    let imageData = event.target.id;
    const clickImage = document.getElementById("imagetag");
    if(imageData === "Loktak")
      clickImage.src = "./1.jpg";
    else if (imageData === "Kangla")
      clickImage.src = "./2.jpg";
    else if (imageData === "Ima")
      clickImage.src = "./3.jpg";
    else if (imageData === "Iskon")
      clickImage.src = "./4.jpg";
    else if (imageData === "Mao")
      clickImage.src = "./5.jpg";
    else if (imageData === "Museum")
      clickImage.src = "./6.jpg";
    else if (imageData === "War")
      clickImage.src = "./7.jpg";
    else if (imageData === "Deer")
      clickImage.src = "./8.jpg";
    else if (imageData === "Dzoku")
      clickImage.src = "./9.jpg";
  }
  for (let i = 0; i < doctags.length; i++) {
    const element = doctags[i];
    element.addEventListener("mouseenter", changeImage);
}
var index = 0;
setInterval (function(){
  if (index === imageList.length) {
    index = 0;
  }
  document.getElementById("imagetag").src = imageList[index];
  index++;
} , 3000);
function startTime() {
    const today = new Date();
    let hours = today.getHours();
    let minutes = today.getMinutes();
 
    // Check whether AM or PM
    let newformat = hours >= 12 ? 'PM' : 'AM';
 
    // Find current hour in AM-PM Format
    hours = hours % 12;
 
    // To display "0" as "12"
    hours = hours ? hours : 12;
    minutes = minutes < 10 ? '0' + minutes : minutes;

    document.getElementById('clock').innerHTML =  hours + ":" + minutes + newformat;
    setTimeout(startTime, 1000);
  }
  

document.body.onload = startTime()
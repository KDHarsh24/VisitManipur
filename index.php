
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
    <link rel="stylesheet" href="html.css">
</head>
    <body>
    <?php
    $username="root";
    $servername="localhost";
    $password="";
    $travel_type = $_POST['travel'];
    $budget = $_POST['budget'];
    $arrdate = $_POST['arrivaldate'];
    $arrtime = $_POST['arrivaltime'];
    $deptdate = $_POST['deptdate'];
    $oldage = $_POST['oldage'];
    $hike = $_POST['hike'];
    $buss = $_POST['bussiness'];
    $conn = new PDO("mysql:host=$servername;", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $conn->query("use hackathon;");
    // $date1 = date_create($deptdate);
    // $date2 = date_create($arrdate);
    // $diff = date_diff($date1,$date2);
    // $days = $diff;
    $date1 = new DateTime($deptdate);
    $date2 = new DateTime($arrdate);
    
    $interval = $date1->diff($date2);
    $days = $interval->d;
     $time=strtotime($arrdate);
     $month=date("F",$time);
     $year=date("Y",$time);
    //$month = $interval->m;
    // shows the total amount of days (not divided into years, months and days like above)
    function datafetchlike($conn, $tablename, $key)
    {
        $sqlstm = $conn->prepare("SELECT * FROM $tablename where id like \"$key%\"");
        $sqlstm->execute();
        $hotellist = $sqlstm->setFetchMode(PDO::FETCH_ASSOC);
        $hotellist = $sqlstm->fetchAll();
        return $hotellist;
    }
    function datafetch($conn, $tablename, $key, $val)
    {
        $sqlstm = $conn->prepare("SELECT * FROM $tablename where $key = \"$val\"");
        $sqlstm->execute();
        $hotellist = $sqlstm->setFetchMode(PDO::FETCH_ASSOC);
        $hotellist = $sqlstm->fetchAll();
        return $hotellist;
    }
     function datafetch1($conn, $tablename)
     {
         $sqlstm = $conn->prepare("SELECT * FROM $tablename");
         $sqlstm->execute();
         $hotellist = $sqlstm->setFetchMode(PDO::FETCH_ASSOC);
         $hotellist = $sqlstm->fetchAll();
         return $hotellist;
     }
    $destinationthangal = datafetch($conn, "places", "Near", "Thangal");
    $destinationloktak = datafetch($conn, "places", "Near", "Loktak");
    $news = datafetch($conn, "news" , "ID" , "4TIMePj9B8c3s3W6");
    $fes = datafetch1($conn , "festives");
    //var_dump($destinationloktak);
    $hotellist = [];
    $restlist = [];
    if ($travel_type == "solo")
    {
        if($budget == "low"){
            $hotellist = datafetchlike($conn, "hotels", "SL");
        }
        
        elseif($budget == "mid"){
            $hotellist = datafetchlike($conn, "hotels", "SM");
        }
        
        else{
            $hotellist = datafetchlike($conn, "hotels", "SH");
        }
    }
    else{
        if($budget == "low"){
            $hotellist = datafetchlike($conn, "hotels", "OL");
        }
        
        elseif($budget == "mid"){
            $hotellist = datafetchlike($conn, "hotels", "OM");
        }
        
        else{
            $hotellist = datafetchlike($conn, "hotels", "OH");
        }
        
    }
    if($budget == "low")
    {
        $restlist = [["Street"]];
    }
    else if($budget == "mid")
    {
        $restlist = datafetchlike($conn, "rest", "M");
    }
    else{
        $restlist = datafetchlike($conn, "rest", "H");
    }
    function oneDayTag($days, $restlist, $hotellist, $destinationthangal, $destinationloktak, $arrtime, $budget, $conn)
    {
        $restrauntprint = "";
            
        for ($day = 1; $day <= $days; $day++)
        {
            if($budget == "low")
            {
                $restrauntprint = "
                <div>
                <div class=\"ptv\">
                    <h2>Where to Eat</h2>
                    <div class=\"places\">   
                        <div class=\"desc\">
                            <h2>Street Food</h2>
                            <p>In Thangal, D.M. Road</p>
                            <p>After 8:00AM</p>
                        </div>
                        <div class=\"img\" >
                            <img src=\"https://i.ytimg.com/vi/PwFBSWuD8Fo/maxresdefault.jpg\">
                        </div>
                    </div>
                </div>
            </div>";
            }
            else{
                $restlist1n = $restlist[0]['Name'];
                $restlist1add = $restlist[0]['Address'];
                $restlist1i = $restlist[0]['Image link'];
                $restlist2n = $restlist[1]['Name'];
                $restlist2add = [1]['Address'];
                $restlist2i = $restlist[1]['Image link'];
                $restlist3n = $restlist[2]['Name'];
                $restlist3add = [2]['Address'];
                $restlist3i = $restlist[2]['Image link'];
                $restrauntprint = "<div>
                <div class=\"ptv\">
                    <h2>Where to Eat</h2>
                    <div class=\"places\">
                        
                        <div class=\"desc\">
                            <h2>$restlist1n</h2>
                            <p>$restlist1add</p>
                        </div>
                        <div class=\"img\" >
                            <img src=\"$restlist1i\">
                        </div>
                    </div>
                    
                    <div class=\"places\">
                    <div class=\"desc\">
                    <h2>$restlist2n</h2>
                    <p>$restlist2add</p>
                </div>
                <div class=\"img\" >
                <img src=\"$restlist2i\">
            </div>
                    </div>
                    
                    <div class=\"places\">
                    <div class=\"desc\">
                    <h2>$restlist3n</h2>
                    <p>$restlist3add</p>
                </div>
                <div class=\"img\" >
                <img src=\"$restlist3i\">
            </div>
                    </div>
                </div>
            </div>";
            }
            if($day == 1)
            {
                $hotel1 = $hotellist[0]['Name'];
                $hotel1add = $hotellist[0]['Address'];
                $hotel1p = $hotellist[0]['price'];
                $hotel1i = $hotellist[0]['Image 1'];
                $hotel2 = $hotellist[1]['Name'];
                $hotel2add = $hotellist[1]['Address'];
                $hotel2p = $hotellist[1]['price'];
                $hotel2i = $hotellist[1]['Image 1'];
                $hotel3 = $hotellist[2]['Name'];
                $hotel3add = $hotellist[2]['Address'];
                $hotel3p = $hotellist[2]['price'];
                $hotel3i = $hotellist[2]['Image 1'];
                
                $hotelprint = "<div class=\"ptv\">
                <h2>Where to Stay</h2>
                <div class=\"places\">
                    
                    <div class=\"desc\">
                        <h2>$hotel1</h2>
                        <p>$hotel1add</p>
                        <p>$hotel1p</p>
                    </div>
                    <div class=\"img\" >
                <img src=\"$hotel1i\">
            </div>
                </div>
                
                <div class=\"places\">
                    <div class=\"desc\">
                        <h2>$hotel2</h2>
                        <p>$hotel2add</p>
                        <p>$hotel2p</p>
                    </div>
                    <div class=\"img\" >
                <img src=\"$hotel2i\">
            </div>
                </div>
                
                <div class=\"places\">
                    <div class=\"desc\">
                        <h2>$hotel3</h2>
                        <p>$hotel3add</p>
                        <p>$hotel3p</p>
                    </div>
                    <div class=\"img\" >
                <img src=\"$hotel3i\">
            </div>
                </div>
            </div>
    </div>";
                if($arrtime > strtotime("12:00"))
                {   
                    echo "
                    <div class=\"day\">
                        <h1>Day $day</h1>
                        <p>Enjoy your first day , by starting your journey with the Asia biggest women’s market , EMA market and the historic fort , kangla fort.  
                        </p>
                        <hr>
                        <div class=\"ptv\">
                            <h2>Places to Visit</h2>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$destinationthangal[1][\"Place\"]</h2>
                                    <p>$destinationthangal[1][\"description\"]</p>
                                    <p>$destinationthangal[1][\"Mintime\"] to $destinationthangal[2][\"Maxtime\"]</p>
                                    <p>$destinationthangal[1][\"primetime\"]</p>
                                </div>
                                <div class=\"img\" >
                                    imghackjhduchuiwehciuwehciuvhweiuvc
                                </div>
                            </div>
                        </div>
                        ";
                        echo $restrauntprint;
                        echo $hotelprint;
                }
                else{
                    $destinationthangal1P = $destinationthangal[1]['Place'];
                    $destinationthangal1d = $destinationthangal[1]['description'];
                    $destinationthangal1min = $destinationthangal[1]['Mintime'];
                    $destinationthangal1max = $destinationthangal[1]['Maxtime'];
                    $destinationthangal1pt = $destinationthangal[1]['primetime'];
                    $destinationthangal1i = $destinationthangal[1]['Image link'];
                    $destinationthangal0P = $destinationthangal[0]['Place'];
                    $destinationthangal0d = $destinationthangal[0]['description'];
                    $destinationthangal0min = $destinationthangal[0]['Mintime'];
                    $destinationthangal0max = $destinationthangal[0]['Maxtime'];
                    $destinationthangal0pt = $destinationthangal[0]['primetime'];
                    $destinationthangal0i = $destinationthangal[0]['Image link'];
                    
                echo "
                    <div class=\"day\">
                        <h1>Day $day</h1>
                        <p>Enjoy your first day , by starting your journey with the Asia biggest women’s market , EMA market and the historic fort , kangla fort.  
                        </p>
                        <hr>
                        <div class=\"ptv\">
                            <h2>Places to Visit</h2>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$destinationthangal1P</h2>
                                    <p>$destinationthangal1d</p>
                                    <p>Time Duration : $destinationthangal1min  to $destinationthangal1max</p>
                                    <p>Prime Time to visit: $destinationthangal1pt</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$destinationthangal1i\">
                                </div>
                            </div>
                            <div class=\"places\">
                            <div class=\"desc\">
                                <h2>$destinationthangal0P</h2>
                                <p>$destinationthangal0d</p>
                                <p>Time Duration : $destinationthangal0min  to $destinationthangal0max</p>
                                    <p>Prime Time to visit: $destinationthangal0pt</p>
                            </div>
                            <div class=\"img\" >
                                <img src=\"$destinationthangal0i\">
                                </div>
                        </div>
                        </div>
                        ";
                        echo $restrauntprint;
                        echo $hotelprint;
                }
            }
            elseif($day == 2){
                if($budget == "high")
                {
                    $destinationloktak0P = $destinationloktak[0]['Place'];
                    $destinationloktak0d = $destinationloktak[0]['description'];
                    $destinationloktak0min = $destinationloktak[0]['Mintime'];
                    $destinationloktak0max = $destinationloktak[0]['Maxtime'];
                    $destinationloktak0pt = $destinationloktak[0]['primetime'];
                    $destinationloktak0i = $destinationloktak[0]['Image link'];
                    $destinationloktak1P = $destinationloktak[1]['Place'];
                    $destinationloktak1d = $destinationloktak[1]['description'];
                    $destinationloktak1min = $destinationloktak[1]['Mintime'];
                    $destinationloktak1max = $destinationloktak[1]['Maxtime'];
                    $destinationloktak1pt = $destinationloktak[1]['primetime'];
                    $destinationloktak1i = $destinationloktak[1]['Image link'];
                    $destinationloktak2P = $destinationloktak[2]['Place'];
                    $destinationloktak2d = $destinationloktak[2]['description'];
                    $destinationloktak2min = $destinationloktak[2]['Mintime'];
                    $destinationloktak2max = $destinationloktak[2]['Maxtime'];
                    $destinationloktak2pt = $destinationloktak[2]['primetime'];
                    $destinationloktak2i = $destinationloktak[2]['Image link'];
                    $hotelloktak = datafetch($conn, "hotels", "Near", "Loktak");
                    echo "
                    <div class=\"day\">
                        <h1>Day $day</h1>
                        <p>Unveiling Manipur's History and Enchanting Nature
                        Embark on a captivating journey today, delving into Manipur's fight for freedom INA Museum ) , the heart of its breathtaking natural beauty (kaibul National park) and the largest freshwater lake in Northeast India (loktak lake ) .
                        </p>
                        <hr>
                        <div class=\"ptv\">
                            <h2>Places to Visit</h2>
                            <div class=\"places\">
                                <div class=\"desc\">
                                <h2>$destinationloktak0P</h2>
                                <p>$destinationloktak0d</p>
                                <p>Time Duration : $destinationloktak0min to $destinationloktak0max hrs</p>
                                <p>Prime Time to Visit : $destinationloktak0pt</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$destinationloktak0i\">
                                </div>
                            </div>
                            <div class=\"places\">
                            <div class=\"desc\">
                                <h2>$destinationloktak1P</h2>
                                <p>$destinationloktak1d</p>
                                <p>Time Duration : $destinationloktak1min to $destinationloktak1max hrs</p>
                                <p>Prime Time to Visit : $destinationloktak1pt</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$destinationloktak1i\">
                                </div>
                        </div>
                        <div class=\"places\">
                        <div class=\"desc\">
                        <h2>$destinationloktak2P</h2>
                        <p>$destinationloktak2d</p>
                        <p>Time Duration : $destinationloktak2min to $destinationloktak2max hrs</p>
                        <p>Prime Time to Visit : $destinationloktak2pt</p>
                        </div>
                        <div class=\"img\" >
                        <img src=\"$destinationloktak2i\">
                        </div>
                        </div>
                        </div>
                        ";
                        // $restlist1n = $restlist[1]['Name'];
                        // $restlist1A = $restlist[1]['Address'];
                        // $restlist1i = $restlist[1]['Image link'];
                        // $restlist2n = $restlist[2]['Name'];
                        // $restlist2A = $restlist[2]['Address'];
                        // $restlist2i = $restlist[2]['Image link'];
                        $restrauntprint = "<div>
                        <div class=\"ptv\">
                            <h2>Where to Eat</h2>
                            <div class=\"places\">
                                
                                <div class=\"desc\">
                                    <h2>Street Food</h2>
                                    <p>at Loktak</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"https://i.ytimg.com/vi/PwFBSWuD8Fo/maxresdefault.jpg\">
                                </div>
                            </div>
                        </div>
                    </div>";
                    $hotelloktak1n = $hotelloktak[0]['Name'];
                    $hotelloktak1A = $hotelloktak[0]['Address'];
                    $hotelloktak1p = $hotelloktak[0]['price'];
                    $hotelloktak1i = $hotelloktak[0]['Image 1'];
                    $hotelloktak2n = $hotelloktak[1]['Name'];
                    $hotelloktak2A = $hotelloktak[1]['Address'];
                    $hotelloktak2p = $hotelloktak[1]['price'];
                    $hotelloktak2i = $hotelloktak[1]['Image 1'];
                        echo $restrauntprint;
                        echo "<div class=\"ptv\">
                        <h2>Where to Stay</h2>
                        <div class=\"places\">
                            
                            <div class=\"desc\">
                                <h2>$hotelloktak1n</h2>
                                <p>$hotelloktak1A</p>
                                <p>$hotelloktak1p</p>
                            </div>
                            <div class=\"img\" >
                                <img src=\"$hotelloktak1i\">
                            </div>
                        </div>
                        
                        <div class=\"places\">
                            <div class=\"desc\">
                            <h2>$hotelloktak2n</h2>
                            <p>$hotelloktak2A</p>
                            <p>$hotelloktak2p</p>
                            </div>
                            <div class=\"img\">
                                <img src=\"$hotelloktak2i\">
                            </div>
                        </div>
                    </div>
            </div>";
                }
                else{
                    $destinationloktak0P = $destinationloktak[0]['Place'];
                    $destinationloktak0d = $destinationloktak[0]['description'];
                    $destinationloktak0min = $destinationloktak[0]['Mintime'];
                    $destinationloktak0max = $destinationloktak[0]['Maxtime'];
                    $destinationloktak0pt = $destinationloktak[0]['primetime'];
                    $destinationloktak0i = $destinationloktak[0]['Image link'];
                    $destinationloktak1P = $destinationloktak[1]['Place'];
                    $destinationloktak1d = $destinationloktak[1]['description'];
                    $destinationloktak1min = $destinationloktak[1]['Mintime'];
                    $destinationloktak1max = $destinationloktak[1]['Maxtime'];
                    $destinationloktak1pt = $destinationloktak[1]['primetime'];
                    $destinationloktak1i = $destinationloktak[1]['Image link'];
                    $destinationloktak2P = $destinationloktak[2]['Place'];
                    $destinationloktak2d = $destinationloktak[2]['description'];
                    $destinationloktak2min = $destinationloktak[2]['Mintime'];
                    $destinationloktak2max = $destinationloktak[2]['Maxtime'];
                    $destinationloktak2pt = $destinationloktak[2]['primetime'];
                    $destinationloktak2i = $destinationloktak[2]['Image link'];
                    echo "
                    <div class=\"day\">
                        <h1>Day $day</h1>
                        <p>Unveiling Manipur's History and Enchanting Nature
                        Embark on a captivating journey today, delving into Manipur's fight for freedom INA Museum ) , the heart of its breathtaking natural beauty (kaibul National park) and the largest freshwater lake in Northeast India (loktak lake ) .
                        </p>
                        <hr>
                        <div class=\"ptv\">
                            <h2>Places to Visit</h2>
                            <div class=\"places\">
                                <div class=\"desc\">
                                <h2>$destinationloktak0P</h2>
                                <p>$destinationloktak0d</p>
                                <p>Time Duration : $destinationloktak0min to $destinationloktak0max hrs</p>
                                <p>Prime Time to Visit : $destinationloktak0pt</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$destinationloktak0i\">
                                </div>
                            </div>
                            <div class=\"places\">
                            <div class=\"desc\">
                                <h2>$destinationloktak1P</h2>
                                <p>$destinationloktak1d</p>
                                <p>Time Duration : $destinationloktak1min to $destinationloktak1max hrs</p>
                                <p>Prime Time to Visit : $destinationloktak1pt</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$destinationloktak1i\">
                                </div>
                        </div>
                        <div class=\"places\">
                        <div class=\"desc\">
                        <h2>$destinationloktak2P</h2>
                        <p>$destinationloktak2d</p>
                        <p>Time Duration : $destinationloktak2min to $destinationloktak2max hrs</p>
                        <p>Prime Time to Visit : $destinationloktak2pt</p>
                        </div>
                        <div class=\"img\" >
                        <img src=\"$destinationloktak2i\">
                        </div>
                        </div>
                        </div>
                        ";
                        $restrauntprint = "<div>
                        <div class=\"ptv\">
                            <h2>Where to Eat</h2>
                            <div class=\"places\">
                                
                                <div class=\"desc\">
                                    <h2>Street Food</h2>
                                    <p>at Loktak</p>
                                </div>
                                <div class=\"img\" >
                                    <img src=\"https://i.ytimg.com/vi/PwFBSWuD8Fo/maxresdefault.jpg\">
                                </div>
                            </div>
                        </div>
                    </div>";
                    $hotel1 = $hotellist[0]['Name'];
                    $hotel1add = $hotellist[0]['Address'];
                    $hotel1p = $hotellist[0]['price'];
                    $hotel1i = $hotellist[0]['Image 1'];
                    $hotel2 = $hotellist[1]['Name'];
                    $hotel2add = $hotellist[1]['Address'];
                    $hotel2p = $hotellist[1]['price'];
                    $hotel2i = $hotellist[1]['Image 1'];
                    $hotel3 = $hotellist[2]['Name'];
                    $hotel3add = $hotellist[2]['Address'];
                    $hotel3p = $hotellist[2]['price'];
                    $hotel3i = $hotellist[2]['Image 1'];
                        echo $restrauntprint;
                        echo "<div class=\"ptv\">
                        <h2>Where to Stay</h2>
                        <div class=\"places\">
                            
                        <div class=\"desc\">
                        <h2>$hotel1</h2>
                        <p>$hotel1add</p>
                        <p>$hotel1p</p>
                    </div>
                    <div class=\"img\" >
                    <img src=\"$hotel1i\">
                    </div>
                        </div>
                        
                        <div class=\"places\">
                        <div class=\"desc\">
                        <h2>$hotel2</h2>
                        <p>$hotel2add</p>
                        <p>$hotel2p</p>
                    </div>
                    <div class=\"img\" >
                    <img src=\"$hotel2i\">
                    </div>
                        </div>
                        
                        <div class=\"places\">
                        <div class=\"desc\">
                        <h2>$hotel3</h2>
                        <p>$hotel3add</p>
                        <p>$hotel3p</p>
                    </div>
                    <div class=\"img\" >
                    <img src=\"$hotel3i\">
                    </div>
                        </div>
                    </div>
            </div>";
                } 
            }
            elseif($day == 3)
            {
                if($arrtime > strtotime("12:00"))
                {
                    if($budget == "low")
                        {
                            $restrauntprint = "
                            <div>
                            <div class=\"ptv\">
                                <h2>Where to Eat</h2>
                                <div class=\"places\">   
                                    <div class=\"desc\">
                                        <h2>Street Food</h2>
                                        <p>In Thangal, D.M. Road</p>
                                        <p>After 8:00AM</p>
                                    </div>
                                    <div class=\"img\" >
                                        imghackjhduchuiwehciuwehciuvhweiuvc
                                    </div>
                                </div>
                            </div>
                        </div>";
                        }
                        else{
                            $restlist1n = $restlist[0]['Name'];
                            $restlist1add = $restlist[0]['Address'];
                            $restlist1i = $restlist[0]['Image link'];
                            $restlist2n = $restlist[1]['Name'];
                            $restlist2add = [1]['Address'];
                            $restlist2i = $restlist[1]['Image link'];
                            $restlist3n = $restlist[2]['Name'];
                            $restlist3add = [2]['Address'];
                            $restlist3i = $restlist[2]['Image link'];
                        
                            $restrauntprint = "<div>
                            <div class=\"ptv\">
                                <h2>Where to Eat</h2>
                                <div class=\"places\">
                                    
                                <div class=\"desc\">
                                <h2>$restlist1n</h2>
                                <p>$restlist1add</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$restlist1i\">
                            </div>
                                </div>
                                
                                <div class=\"places\">
                                <div class=\"desc\">
                                <h2>$restlist2n</h2>
                                <p>$restlist2add</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$restlist2i\">
                            </div>
                                </div>
                                
                                <div class=\"places\">
                                <div class=\"desc\">
                                <h2>$restlist3n</h2>
                                <p>$restlist3add</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$restlist3i\">
                                </div>
                                </div>
                            </div>
                        </div>";
                        $hotel1 = $hotellist[0]['Name'];
                        $hotel1add = $hotellist[0]['Address'];
                        $hotel1p = $hotellist[0]['price'];
                        $hotel1i = $hotellist[0]['Image 1'];
                        $hotel2 = $hotellist[1]['Name'];
                        $hotel2add = $hotellist[1]['Address'];
                        $hotel2p = $hotellist[1]['price'];
                        $hotel2i = $hotellist[1]['Image 1'];
                        $hotel3 = $hotellist[2]['Name'];
                        $hotel3add = $hotellist[2]['Address'];
                        $hotel3p = $hotellist[2]['price'];
                        $hotel3i = $hotellist[2]['Image 1'];
                        $hotelprint = "<div class=\"ptv\">
                            <h2>Where to Stay</h2>
                            <div class=\"places\">
                                
                            <div class=\"desc\">
                            <h2>$hotel1</h2>
                            <p>$hotel1add</p>
                            <p>$hotel1p</p>
                        </div>
                        <div class=\"img\" >
                        <img src=\"$hotel1i\">
                        </div>
                            </div>
                            
                            <div class=\"places\">
                            <div class=\"desc\">
                            <h2>$hotel2</h2>
                            <p>$hotel2add</p>
                            <p>$hotel2p</p>
                        </div>
                        <div class=\"img\" >
                        <img src=\"$hotel2i\">
                        </div>
                            </div>
                            
                            <div class=\"places\">
                            <div class=\"desc\">
                            <h2>$hotel3</h2>
                            <p>$hotel3add</p>
                            <p>$hotel3p</p>
                        </div>
                        <div class=\"img\" >
                        <img src=\"$hotel3i\">
                        </div>
                            </div>
                        </div>";
                        $destinationthangal1P = $destinationthangal[1]['Place'];
                    $destinationthangal1d = $destinationthangal[1]['description'];
                    $destinationthangal1min = $destinationthangal[1]['Mintime'];
                    $destinationthangal1max = $destinationthangal[1]['Maxtime'];
                    $destinationthangal1pt = $destinationthangal[1]['primetime'];
                    $destinationthangal1i = $destinationthangal[1]['Image link'];
                    $destinationthangal0P = $destinationthangal[0]['Place'];
                    $destinationthangal0d = $destinationthangal[0]['description'];
                    $destinationthangal0min = $destinationthangal[0]['Mintime'];
                    $destinationthangal0max = $destinationthangal[0]['Maxtime'];
                    $destinationthangal0pt = $destinationthangal[0]['primetime'];
                    $destinationthangal0i = $destinationthangal[0]['Image link'];
                    echo "
                    <div class=\"day\">
                        <h1>Day $day</h1>
                        <p>Enjoy your first day , by starting your journey with the Asia biggest women’s market , EMA market and the historic fort , kangla fort.  
                        </p>
                        <hr>
                        <div class=\"ptv\">
                            <h2>Places to Visit</h2>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$destinationthangal1P</h2>
                                    <p>$destinationthangal1d</p>
                                    <p>Time Duration : $destinationthangal1min  to $destinationthangal1max</p>
                                    <p>Prime Time to visit: $destinationthangal1pt</p>
                                </div>
                                <div class=\"img\" >
                                <img src=\"$destinationthangal1i\">
                                </div>
                            </div>
                            <div class=\"places\">
                            <div class=\"desc\">
                                <h2>$destinationthangal0P</h2>
                                <p>$destinationthangal0d</p>
                                <p>Time Duration : $destinationthangal0min  to $destinationthangal0max</p>
                                    <p>Prime Time to visit: $destinationthangal0pt</p>
                            </div>
                            <div class=\"img\" >
                                <img src=\"$destinationthangal0i\">
                                </div>
                        </div>
                        </div>
                        ";
                        echo $restrauntprint;
                        echo $hotelprint;
                }
            }
        }
    }}
    oneDayTag($days, $restlist, $hotellist, $destinationthangal, $destinationloktak, $arrtime, $budget, $conn);
    $news1h = $news[0]['Title'];
    $news1d = $news[0]['Plain Description'];
    $news2h = $news[1]['Title'];
    $news2d = $news[1]['Plain Description'];
    $news3h = $news[2]['Title'];
    $news3d = $news[2]['Plain Description'];
    $news4h = $news[3]['Title'];
    $news4d = $news[3]['Plain Description'];
    $news5h = $news[4]['Title'];
    $news5d = $news[4]['Plain Description'];
    $news6h = $news[5]['Title'];
    $news6d = $news[5]['Plain Description'];
    $news7h = $news[6]['Title'];
    $news7d = $news[6]['Plain Description'];
    $fes1n = $fes[0]['name'];
    $fes1d = $fes[0]['description'];
    $fes1m = $fes[0]['month'];
    $fes1i = $fes[0]['image'];
    $fes2n = $fes[1]['name'];
    $fes2d = $fes[1]['description'];
    $fes2m = $fes[1]['month'];
    $fes2i = $fes[1]['image'];
    $fes3n = $fes[3]['name'];
    $fes3d = $fes[3]['description'];
    $fes3m = $fes[3]['month'];
    $fes3i = $fes[3]['image'];
    if($month == "April" || $month == "March")
    {
        echo "
        <div>
            <div><h2>Festivals to Watch</h2></div>
                <div class=\"places\">
                    <div class=\"desc\">
                        <h2>$fes1n</h2>
                        <p>$fes1d</p>
                        <p>$fes1m</p>
                    </div>
                    <div class=\"img\" >
                                <img src=\"$fes1i\">
                                </div>
                        </div>
                </div>
        </div>";
    }
    elseif($month == "June" || $month == "July")
    {
        echo "
        <div>
            <div><h2>Festivals to Watch</h2></div>
                <div class=\"places\">
                    <div class=\"desc\">
                        <h2>$fes2n</h2>
                        <p>$fes2d</p>
                        <p>$fes2m</p>
                    </div>
                    <div class=\"img\" >
                                <img src=\"$fes2i\">
                                </div>
                        </div>
                </div>
        </div>";
    }
    elseif($month == "December" || $month == "January")
    {
        echo "
        <div>
            <div><h2>Festivals to Watch</h2></div>
                <div class=\"places\">
                    <div class=\"desc\">
                        <h2>$fes3n</h2>
                        <p>$fes3d</p>
                        <p>$fes3m</p>
                    </div>
                    <div class=\"img\" >
                                <img src=\"$fes3i\">
                                </div>
                        </div>
                </div>
        </div>";
    };
                            echo"   
                            </div>
                            <div>
                            <div><h2>Latest News</h2></div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news1h</h2>
                                    <p>$news1d</p>
                                </div>
                            </div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news2h</h2>
                                    <p>$news2d</p>
                                </div>
                            </div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news3h</h2>
                                    <p>$news3d</p>
                                </div>
                            </div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news4h</h2>
                                    <p>$news4d</p>
                                </div>
                            </div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news5h</h2>
                                    <p>$news5d</p>
                                </div>
                            </div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news6h</h2>
                                    <p>$news6d</p>
                                </div>
                            </div>
                            <div class=\"places\">
                                <div class=\"desc\">
                                    <h2>$news7h</h2>
                                    <p>$news7d</p>
                                </div>
                            </div>
                            </div>
                            ";
?>
    </body>
</html>
<?php
$waarden = [10, 3.14, "hallo"];

foreach ($waarden as $waarde) {
    
    echo "Waarde: " . $waarde . "<br>";

    if (is_int($waarde)) {
        echo "Type: integer<br>";
    } 
    elseif (is_float($waarde)) {
        echo "Type: float<br>";
    } 
    elseif (is_double($waarde)) {
        echo "Type: double (zelfde als float)<br>";
    } 
    else {
        echo "Type: string of ander type<br>";
    }

    echo "<br>";
}
?>
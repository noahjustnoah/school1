<?php
$prijsZonderBTW = 50;
$btwPercentage = 21;

// Btw berekenen
$btw = $prijsZonderBTW * ($btwPercentage / 100);

// Totale prijs berekenen
$prijsMetBTW = $prijsZonderBTW + $btw;

echo "Prijs zonder btw: €" . $prijsZonderBTW . "<br>";
echo "Btw (21%): €" . $btw . "<br>";
echo "Prijs inclusief btw: €" . $prijsMetBTW;
?>
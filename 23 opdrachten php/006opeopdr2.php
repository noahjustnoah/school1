<?php
$saldo = 1000;
$maandelijkseStorting = 50;
$rentePercentage = 5;

// 12 maanden lang elke maand €50 storten
for ($i = 1; $i <= 12; $i++) {
    $saldo += $maandelijkseStorting; // assignment operator +=
}

// 5% rente aan het einde van het jaar
$saldo += $saldo * ($rentePercentage / 100);

echo "Eindsaldo na 1 jaar: €" . $saldo;
?>
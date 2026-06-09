<?php
$leeftijd = 17;
$heeftTicket = true; // boolean: true = ticket gekocht, false = geen ticket

if (!$heeftTicket) {
    echo "Toegang geweigerd. Je hebt een ticket nodig.";
} 
elseif ($leeftijd > 18 && $heeftTicket) {
    echo "Toegang verleend.";
} 
elseif ($leeftijd <= 18 && $heeftTicket) {
    echo "Toegang verleend, maar je moet je ouders meenemen.";
}
?>
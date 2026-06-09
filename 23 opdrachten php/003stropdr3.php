<?php
$tekst = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, help when an unknown printer took a galley";

$positie = strpos($tekst, "help");

if ($positie !== false) {
    echo "Het woord 'help' is gevonden op positie " . $positie;
} else {
    echo "Het woord 'help' is niet gevonden.";
}
?>
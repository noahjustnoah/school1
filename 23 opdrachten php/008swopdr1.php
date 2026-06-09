<?php
$dag = "dinsdag";

switch ($dag) {
    case "maandag":
        echo "Het is maandag, begin van de week!";
        break;

    case "dinsdag":
    case "woensdag":
    case "donderdag":
        echo "Het is $dag, midden van de week!";
        break;

    case "vrijdag":
        echo "Het is vrijdag, bijna weekend!";
        break;

    case "zaterdag":
        echo "Het is zaterdag, weekend!";
        break;

    case "zondag":
        echo "Het is zondag, rustdag!";
        break;

    default:
        echo "Ongeldige dag ingevoerd.";
}
?>
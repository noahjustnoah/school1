<!DOCTYPE html>
<html>
<body>

<form method="get">
    Voer een getal in:
    <input type="number" name="getal" step="any">
    <input type="submit" value="Bereken wortel">
</form>

<?php
if (isset($_GET['getal'])) {
    $getal = $_GET['getal'];

    if ($getal >= 0) {
        $wortel = sqrt($getal);
        echo "De vierkantswortel van $getal is: " . $wortel;
    } else {
        echo "Kan geen vierkantswortel berekenen van een negatief getal.";
    }
}
?>

</body>
</html>
<?php
$garage = [
    [
        "merk" => "Toyota",
        "kleur" => "Rood",
        "kmstand" => 120000
    ],
    [
        "merk" => "BMW",
        "kleur" => "Zwart",
        "kmstand" => 85000
    ]
];

foreach ($garage as $auto) {
    echo "Merk: " . $auto["merk"] . "<br>";
    echo "Kleur: " . $auto["kleur"] . "<br>";
    echo "Kmstand: " . $auto["kmstand"] . "<br><br>";
}
?>
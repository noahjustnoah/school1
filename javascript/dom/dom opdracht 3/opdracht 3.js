const gooi = document.getElementById("gooi");
const resultaat = document.getElementById("resultaat");

function randomNummer() {
    return Math.floor(Math.random() * 6) + 1;
}

function gooiVijfKeer() {
    const nummers = [];
    for (let i = 0; i < 5; i++) {
        nummers.push(randomNummer());
    }
    return nummers;
}

function countNumber(getal, array) {
    let teller = 0;
    for (const item of array) {
        if (item === getal) {
            teller++;
        }
    }
    return teller;
}

gooi.addEventListener("click", () => {
    const resultaten = gooiVijfKeer();
    let tekst = "nummers: " + resultaten.join(" ");
    for (let getal = 1; getal <= 6; getal++) {
        const aantal = countNumber(getal, resultaten);
        tekst += `\nAantal keren ${getal}: ${aantal}`;
    }
    resultaat.textContent = tekst;
});

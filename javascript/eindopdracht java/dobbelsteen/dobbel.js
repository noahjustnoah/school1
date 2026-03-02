let gewonnen = 0;
let verloren = 0;
let gelijkspel = 0;
function rolSteen() {
    return Math.floor(Math.random() * 6) + 1;
}

function updateImage(id, value) {
    const img = document.getElementById(id);
    if (img) {
        img.src = `dice${value}.png`;
        img.alt = `dobbelsteen ${value}`;
    }
}

function updateStats() {
    document.getElementById("gewonnen").textContent = gewonnen;
    document.getElementById("verloren").textContent = verloren;
    document.getElementById("gelijkspel").textContent = gelijkspel;
}

function speel() {
    const p1 = rolSteen();
    const p2 = rolSteen();
    const c1 = rolSteen();
    const c2 = rolSteen();
    updateImage("p1", p1);
    updateImage("p2", p2);
    updateImage("c1", c1);
    updateImage("c2", c2);
    const spelerSom = p1 + p2;
    const computerSom = c1 + c2;
    let message = "";
    if (spelerSom > computerSom) {
        gewonnen++;
        message = "gewonen";
    } else if (spelerSom < computerSom) {
        verloren++;
        message = "verloren";
    } else {
        gelijkspel++;
        message = "gelijkspel";
    }

    updateStats();
    const outDiv = document.getElementById("uitkomst");
    if (outDiv) {
        outDiv.textContent = message;
    }
}

window.addEventListener("DOMContentLoaded", () => {
    document.getElementById("gooi").addEventListener("click", speel);
    updateStats();
});

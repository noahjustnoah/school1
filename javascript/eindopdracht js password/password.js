let loginButton = document.getElementById("inlogButton");

loginButton.addEventListener("click", (event) => {
  event.preventDefault();

  let username = document.getElementById("inlogUsername").value;
  let password = document.getElementById("inlogPassword").value;
  let message = document.getElementById("foutmelding");

  let isCorrect =
    username === "Noah" && password === "Perp";

  message.style.color = isCorrect ? "black" : "red";
  message.textContent = isCorrect
    ? "Ingelogd! Welkom"
    : "Gebruikersnaam of wachtwoord is onjuist. Probeer het opnieuw.";
});
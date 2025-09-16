int totaalAantalLessen = 20;
int gevolgdeLessen =16;
double cijfer = 5.5;

double percentageLessenGevolgd = ((double) gevolgdeLessen / totaalAantalLessen) * 100;

if (cijfer >= 5.5 && percentageLessenGevolgd >= 80){
  println("geslaagd");
} else {
  println("gezakt");
}

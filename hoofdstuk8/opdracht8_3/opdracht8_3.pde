size(200,200);
background(255,255,255);

int aantal = 10;
int afstand = 200 / (aantal + 1);

for (int i = 1; i <= aantal; i++){
  int x = i * afstand;
  line(x, 0, x, 200);
}

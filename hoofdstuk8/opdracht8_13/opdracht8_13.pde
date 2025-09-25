size (150,270);
background(0);

int tafel = 4;
int aantal = 10;

for(int i = 1; i <= aantal; i++) {
    String regel = i + " x " + tafel + " = " + (i * tafel);
    text(regel, 50, i * 25);
}

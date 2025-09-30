void setup() {
  berekenGemiddelde(10, 20);
  berekenGemiddelde(5, 15);
}

void berekenGemiddelde(float num1, float num2){
  float gemiddelde = (num1 + num2) / 2;
  println("Gemiddelde: " + gemiddelde);
}

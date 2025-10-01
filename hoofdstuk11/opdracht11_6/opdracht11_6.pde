void setup() {
  int[] getallen = {5, 2, 7, 5, 9, 2, 5, 1, 2, 5};
  
  int waardezoeken = 5;
  int aantal = 0;
  
  for (int i = 0; i < getallen.length; i++) {
    if (getallen[i] == zoekwaarde) {
      aantal++;
    }
  }
  
  println("Het getal " + zoekwaarde + " komt " + aantal + " keer voor.");
}

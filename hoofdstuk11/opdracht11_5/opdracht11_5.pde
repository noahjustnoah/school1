void setup() {
  String[] namen = {"Peter", "Tim", "Noah", "Ian", "Mario"};
  
  boolean gevonden = false;
  
  for (int i = 0; i < namen.length; i++) {
    if (namen[i].equals("Noah")) {
      gevonden = true;
    }
  }
  
  println("Bestaat Noah? " + gevonden);
}

void setup() {
  size(500, 350);
  bos();
}

void bos(){

  boom(50, 300, 20, 90);
  boom(150, 300, 40, 80);
  boom(250, 300, 25, 70);
  boom(350, 300, 20, 90);
  boom(440, 300, 20, 75);
}

void boom(int x, int y, int breedte, int hoogte){
  fill(139,69,19); 
  rect(x, y - hoogte, breedte, hoogte);
  
  fill(0, 255, 0); 
  ellipse(x + breedte/2, y - hoogte, 80, 80);
}

void setup() {
  size(300, 300);
  boom(150, 300, 10, 100); 
}

void boom(int x, int y, int breedte, int hoogte){
  
  fill(139,69,19); 
  rect(x, y - hoogte, breedte, hoogte);
  
  
  fill(0, 255, 0); 
  ellipse(x + breedte/2, y - hoogte, 100, 100);
}

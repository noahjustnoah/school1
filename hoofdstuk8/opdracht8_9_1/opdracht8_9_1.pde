size(1000,1000);
background(255,255,255);

int sizeC = 1000;

for(int i = 0; i < 100; i++){
  ellipse(0 + sizeC/2,500, sizeC,sizeC);
  sizeC = sizeC - 10;
}

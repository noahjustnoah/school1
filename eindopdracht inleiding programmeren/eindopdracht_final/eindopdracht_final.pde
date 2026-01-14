int score = 0;
float catcherX;
float catcherY;
float catcherBreedte = 100;
float catcherHoogte = 15;
float catcherSpeed = 6;
Ball[] Ball = new Ball[2];
void setup() {
  size(400, 500);
  Ball[0] = new Ball(width/2, 0, 15);
  Ball[1] = new Ball(width/1.5, 0, 5);
  catcherY = height - 40;
}




void draw() {
  background(0, 100, 60);
  textSize(50);
  text(score, 10, 40);
  
  if (keyPressed) {
    if (keyCode == LEFT) catcherX -= catcherSpeed;
    if (keyCode == RIGHT) catcherX += catcherSpeed;
  }
  
  catcherX = constrain(catcherX, 0, width - catcherBreedte);

  fill(100, 250, 100);
  rect(catcherX, catcherY, catcherBreedte, catcherHoogte);

for(int i = 0; i < Ball.length; i++)
{
  Ball[i].update();
  Ball[i].teken();

  if (Ball[i].y + Ball[i].r > catcherY &&
      Ball[i].x > catcherX &&
      Ball[i].x < catcherX + catcherBreedte) {
    Ball[i].reset();
    score = score + 1;
  }

  if (Ball[i].y > height) {
    Ball[i].reset();
    score = 0;
  }
}
}

class Ball {
  float x;
  float y;
  float r;
  float speed;
  
  Ball(float startX, float startY, float straal) {
    x = startX;
    y = startY;
    r = straal;
    speed = 5;
  }
  
  void update() {
    y += speed;
  }
  
  void teken() {
    fill(0, 255, 15);
    noStroke();
    ellipse(x, y, r*2, r*2);
  }
  
  void reset() {
    x = random(r, width - r);
    y = 0;
  }
}

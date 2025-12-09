int score = 0;
float catcherX;
float catcherY;
float catcherBreedte = 100;
float catcherHoogte = 15;
float catcherSpeed = 6;
Ball ball;
void setup() {
  size(400, 500);
  ball = new Ball(width/2, 0, 15);
  catcherY = height - 40;
}

void draw() {
  background(0, 100, 60);
  textSize(50);
  text(score, 10, 40);
  
  // catcher bewegen
  if (keyPressed) {
    if (keyCode == LEFT) catcherX -= catcherSpeed;
    if (keyCode == RIGHT) catcherX += catcherSpeed;
  }
  
  //zorgt dat de catcher niet buiten het scherm gaat
  catcherX = constrain(catcherX, 0, width - catcherBreedte);
  
  // catcher tekenen
  fill(100, 250, 100);
  rect(catcherX, catcherY, catcherBreedte, catcherHoogte);
  
  // ball updaten en tekenen
  ball.update();
  ball.teken();
  
  // checkt of de ball de catcher raakt
  if (ball.y + ball.r > catcherY &&
      ball.x > catcherX &&
      ball.x < catcherX + catcherBreedte) {
    ball.reset();
    score = score + 1;
  }
  
  // als de ball onder het scherm valt
  if (ball.y > height) {
    ball.reset();
    score = 0;
  }
}

// class voor de ball
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

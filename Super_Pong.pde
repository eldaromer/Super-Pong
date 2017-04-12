int ballY;
int ballX;
int ballYSlope;
int ballXSlope;
int AIY;
float AIDif = 2.2;
color PlayerCheck;
color AICheck;
void setup() {
  AIY = 400-35;
  background(0);
  size(800, 400);
  ballX = 400;
  ballY = 200;
  ballYSlope = 1;
  ballXSlope = 5;
}

void draw() {
  noStroke();
  background(0);
  fill(#FF0000);
  rect(775, mouseY-35, 10, 10);
  rect(25, AIY-35, 10, 10);
  fill(#FF8205);
  rect(775, mouseY-25, 10, 10);
  rect(25, AIY-25, 10, 10);
  fill(#FFEB05);
  rect(775, mouseY-15, 10, 10);
  rect(25, AIY-15, 10, 10);
  fill(#54FF00);
  rect(775, mouseY-5, 10, 10);
  rect(25, AIY-5, 10, 10);
  fill(#0000FF);
  rect(775, mouseY+5, 10, 10);
  rect(25, AIY+5, 10, 10);
  fill(#9400FF);
  rect(775, mouseY+15, 10, 10);
  rect(25, AIY+15, 10, 10);
  fill(#FF00D1);
  rect(775, mouseY+25, 10, 10);
  rect(25, AIY+25, 10, 10);
  ellipse(ballX, ballY, 30, 30);
  ballX += ballXSlope;
  ballY += ballYSlope;
  PlayerCheck = get(ballX+16, ballY);
  AICheck = get(ballX-16, ballY);

  //Green
  if (PlayerCheck == -11206912) {
    ballXSlope = -5;
    ballYSlope = 0;
  }
  //Red
  if (PlayerCheck == -65536) {
    ballXSlope = -2;
    ballYSlope = -3;
  }
  //Orange
  if (PlayerCheck == -32251) {
    ballXSlope = -3;
    ballYSlope = -2;
  }
  //Yellow
  if (PlayerCheck == -5371) {
    ballXSlope = -4;
    ballYSlope = -1;
  }
  //Blue
  if (PlayerCheck == -16776961) {
    ballXSlope = -4;
    ballYSlope = 1;
  }
  //Violet
  if (PlayerCheck == -7077633) {
    ballXSlope = -3;
    ballYSlope = 2;
  }
  //Pink
  if (PlayerCheck == -65327) {
    ballXSlope = -2;
    ballYSlope = 3;
  }
    //Green
  if (AICheck == -11206912) {
    ballXSlope = 5;
    ballYSlope = 0;
  }
  //Red
  if (AICheck == -65536) {
    ballXSlope = 2;
    ballYSlope = -3;
  }
  //Orange
  if (AICheck == -32251) {
    ballXSlope = 3;
    ballYSlope = -2;
  }
  //Yellow
  if (AICheck == -5371) {
    ballXSlope = 4;
    ballYSlope = -1;
  }
  //Blue
  if (AICheck == -16776961) {
    ballXSlope = 4;
    ballYSlope = 1;
  }
  //Violet
  if (AICheck == -7077633) {
    ballXSlope = 3;
    ballYSlope = 2;
  }
  //Pink
  if (AICheck == -65327) {
    ballXSlope = 2;
    ballYSlope = 3;
  }

  if (ballX-15 < 0) {
    ballXSlope *= -1;
  }
  if (ballX+15 > 800) {
    ballXSlope *= -1;
  }
  if (ballY+15 > 400) {
    ballYSlope *= -1;
  }
  if (ballY-15 < 0) {
    ballYSlope *= -1;
  }
  if (AIY < ballY) {
    AIY += AIDif;
  } else {
    AIY -= AIDif;
  }
}


int x = width/2;
int speed = 1;
final boolean DEBUG = true;
int counter = 0;

void start () {
  size(500, 500);
}

void settings() {
  size(500, 500);
  //frameRate(60);
}


void draw () {

  background(0);
  //fill(255,0,0);
  ellipse(width/2, height/2, x, x);
  boolean changeCol = DoesItChangeCOl();//checks if mouse is in circle

  while (changeCol) {

    switchBetweenRedAndWhite();
  }
  x = x + speed;
  chahgeSizeAuto(x);
}


void switchBetweenRedAndWhite() {
  int speedOfOneFrame = 10;
  if (counter > speedOfOneFrame*2) {
    counter = 0;
  }
  counter++;
  if (counter < speedOfOneFrame) {
    fill(255, 255, 255);
  } else {
    fill(255, 0, 0);
  }
  if (DEBUG ) {
    println(counter);
  }
}

boolean DoesItChangeCOl () {



}

void chahgeSizeAuto(int x) {

  if ( x > width) {
    speed*= -1;
  } else if ( x < 1) {
    speed*= -1;
  }
}

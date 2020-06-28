int x = 0;
int speed = 1;

void start () {
  size(500, 500);
}

void settings() {
  size(500, 500);
  //frameRate(60);
}


void draw () {

  background(0);
  ellipse(width/2, height/2, x, x);
  boolean changeCol = DoesItChangeCOl();//checks if mouse is in circle

  while (changeCol) {

    switchBetweenRedAndWhite();
  }
  chahgeSizeAuto(x);
}


void switchBetweenRedAndWhite() {
  int counter = 0;
  if (counter > 1) {
    counter = 0;
  }
  counter++;

  if (counter == 0) {
    fill(0);
  } else {
    fill(255, 0, 0);
  }
}

  boolean DoesItChangeCOl () {

    
  }

  void chahgeSizeAuto(int x) {
    x = x + speed;
    if ( x > width/2) {
      speed*= -1;
    } else if ( x < 1) {
      speed*= -1;
    }
  }

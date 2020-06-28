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
  /**everythiing is already set up
    * if this function returns false, evrything runs normally
    * if it returns true, the programs gets stuck in a loop and 
    * it is not able to reach the code that tell it to enlarge its size
    * this function will check the mouseX and mouseY and see if they are in the circle
    * the width & height of the circle is defined by x.
    * note that x starts from 0, but is drawn in the middle of the sceen.
    * so, the value of x is half the width/ height when is drwan at it's biggest
    * hope this helps. good luck**/
    
    

}

void chahgeSizeAuto(int x) {

  if ( x > width) {
    speed*= -1;
  } else if ( x < 1) {
    speed*= -1;
  }
}

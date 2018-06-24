/*
  Exercise 5
*/

class exercise5 {

   // empty constructor to call the instance
  exercise5() {
  }

  /* Declaring Variables */
  float x = 0; // x pos of circle
  float y = 0; // y pos of circle
  float r = 0;
  float g = 0;

  void setup() {
    
    background(0);
    noStroke();
    colorMode(HSB, 240, 20, 10);
  }

  void draw() {
    noStroke();
    //rainbow effect & circle
    r += 2.8;
    g += .7;
    fill(r % 255, g % 255, 100);
    ellipse(x, y, 70, 70);

    //movement
    y = y + 7;
    x = x + 0.1;
    //println("x =", x, "y=", y); //prints x & y coords in console

    //if statement that puts circle back on top
    if (y > 400) {
      x = x + 50;
      y = 0;
      println("*Hit bottom*");
    }
    //if statement that resets screen after it completes
    if (x > 400) {
      background(0);
      x = 0;
      y = 0;
      println("reseting screen");
    }
  }
}
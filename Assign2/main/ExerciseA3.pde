/*
  Exercise 3
 */

class exercise3 {

  // empty constructor to call the instance
  exercise3() {
  }

  void setup() {
    background(0, 0, 0);
    noStroke();
  }
  void draw() {
    noStroke();
    fill(mouseY, mouseX, 255);
    ellipse(mouseX, mouseY, 40, 40);
  }
}
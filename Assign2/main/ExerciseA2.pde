/*
  Exercise 2
 */

class exercise2 {

  // empty constructor to call the instance
  exercise2() {
  }

  void setup() {
    background (245);
    noFill ();
  }

  void draw() {
    // green arc
    strokeWeight (6);
    stroke (160, 245, 196);
    arc(200, 200, 200, 200, -2.2, HALF_PI);

    // pink arc 
    strokeWeight (6);
    stroke (244, 160, 178);
    arc(250, 190, 290, 330, -4.9, -HALF_PI);
  }
}
/***********************************************
 Exercise 9 - Using array to draw rectangles    
 Written by Koby W. April 30, 2018
 
 The program gets the coordinates of 50 randomly generated points, if that point is closer to the top of the screen, the program will draw a line to the top.
 If the point is closer to the bottom, the program will draw a line to the bottom.
 ***********************************************/

class exercise9 {
  
  // empty constructor to call the instance
  exercise9() {
  }
  
  float[] yPos = new float[50];
  float xPos;

  void setup() {
    size(400, 400); 
    background(255);
  }

  void draw() {
    for (int i = 0; i < yPos.length; i++) {

      yPos[i] = random(400);      //generates random y values
      xPos += 7;                  //spacing in between lines    

      if (yPos[i] >= 200) {
        line(xPos, 400, xPos, yPos[i]); //draws lines to points above half of the screen
      } else if (yPos[i] < 200) {
        line(xPos, 0, xPos, yPos[i]);   //draws lines to points below half of the screen
      }
    }
  }
}
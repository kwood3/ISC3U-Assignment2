/*******************
 SetupClass for Assignment 2
 Koby W.
 June 14 2018
 
 This class is used to setup attributes and load all files needed for Assignment 2.
 ********************/

class Setup {
  void init() {
    // Aligning Objects
    imageMode(CENTER);
    textAlign(CENTER, CENTER);

    //Window Title
    surface.setTitle("Assignment 2 - Koby");

    // Loading background picture
    backgroundImage = loadImage("BackgroundImage.jpg");
    
    
  }
}
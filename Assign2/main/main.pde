/*******************
 Assignment 2
 Koby W.
 June 14 2018
 
 This is the main program for Assignment 2
 ********************/

//Initialzing Variables
int state = 0;   // [state 0 = User Selection] [state 1 = Login] [state 2 = Exercise Selection] 
int userProfile; // variable to check which user is logged in
int exerciseField = 1;
String loginLabel;
String loginLabel2;
String passwordField = "";
String userProfileStr = str(userProfile);
String exerciseFieldStr = str(exerciseField);
boolean incorrectPassAttempt;


// Instances
Setup program = new Setup();
Button user1 = new Button("Bob", 30, 150, 100, 70);
Button user2 = new Button("Joe", 155, 150, 100, 70);
Button user3 = new Button("Admin", 280, 150, 100, 70);
Button backArrow = new Button("<", 10, 5, 30, 30);
Button exit = new Button("Exit", 345, 5, 50, 35);
Button bypass = new Button("Bypass Login", 200, 220, 140, 50);
Button increaseButton = new Button("+", 280, 170, 50, 50);
Button decreaseButton = new Button("-", 80, 170, 50, 50);
login login = new login();

// UI Elements
PImage backgroundImage;

void setup() {
  size(400, 400);
  program.init(); // Using the Setup Class to initialize program
}
void draw() {
  image(backgroundImage, 200, 200, width, height);
  if (state == 0) { // User selection
    exit.Draw();  //
    user1.Draw(); // Drawing
    user2.Draw(); // Buttons
    user3.Draw(); //
    userProfile = 0;
    fill(255);
    text("Select a Profile", 200, 100);

    if (user1.isClicked()) {
      state = 1;
      userProfile = 1;
      println("userProfile : ", userProfile);
      loginLabel = "Log into Bob";
    }
    if (user2.isClicked()) {
      state = 1;
      userProfile = 2;
      loginLabel = "Log into Joe";
      println("userProfile : ", userProfile);
    }
    if (user3.isClicked()) {
      state = 1;
      userProfile = 3;
      loginLabel = "Log into Admin";
      println("userProfile : ", userProfile);
    }
    if (exit.isClicked()) {
      exit();
      print("User Closed Program");
    }
  }
  if (state == 1) {
    exit.Draw();
    backArrow.Draw();
    bypass.Draw();
    noStroke();
    fill(0);
    rect(110, 150, 190, 50);
    fill(255);
    text(loginLabel, 200, 100);
    text(passwordField, 200, 170);
    if (backArrow.isClicked()) {
      passwordField = "";
      state = 0;
    }
    if (bypass.isClicked()) {
      state = 2;
    }
  }
  if (exit.isClicked()) {
    exit();
    println("User Closed Program");
  }

  if (state == 2) {        //Exercise Selection Screen
    decreaseButton.Draw();
    increaseButton.Draw();
    passwordField = "";
    backArrow.Draw();
    fill(0);
    noStroke();
    rect(170,170,70,70);
    fill(255);
    
  
  if (increaseButton.isClicked()){
    exerciseField++;
  }
  if (decreaseButton.isClicked()){
    exerciseField--;
  }
  
  
    if (userProfile == 1) {
      text("Exercises 1-6", 200, 20); 
      exerciseField = 1;
      if(exerciseField > 6){
        exerciseField = 1;
      }
      if(exerciseField < 1){
      exerciseField = 6;
      }
    }                                        
    if (userProfile == 2) {                  
      text("Exercises 7-12", 200, 20);
      exerciseField = 7;
      if(exerciseField > 12){
        exerciseField = 7;
      }
      if(exerciseField < 7){
        exerciseField = 12;
      }
    }                                        
    if (userProfile == 3) {
      text("All Exercises Available", 200, 20);
    }
    if (backArrow.isClicked()) {
      passwordField = "";
      state = 0;
    }
    text(exerciseField,205,200);
  }
}
void keyPressed() {
  if (keyCode == BACKSPACE) {
    if (passwordField.length() > 0) {
      passwordField = passwordField.substring(0, passwordField.length()-1);
    }
  } else if (keyCode == DELETE) {
    passwordField = "";
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {
    passwordField = passwordField + key;
  }
  if (keyCode == ENTER) {
    login.checkPassword();  //READ LOGIN CLASS COMMENT! ! !             
    println("Password Field: ", passwordField);
  }
}
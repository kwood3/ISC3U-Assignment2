/*******************
 Assignment 2
 Koby W.
 Started June 14 2018
 Finished June 24 2018
 
 This is the main program for Assignment 2.
 
 In this program, there are 3 profiles which the user can login to. Encrypted passwords are stored in /data/ . When the user inputs a password, their input is encrypted using the Ceaser Cipher Rot13 and is then compared to the passwords stored in /data/ .
 Each one of these profiles have different permissions. User 1 has access to run exercises 1-6, User 2 has access to run exercises 7-12, and the Admin profile can run any exercise 1-12.
 
 *Decrypted passwords can be found in the wiki on github.
 *Please check the issues tab in github before running into these problems yourself.
 
 Classes:
 - ButtonClass:     Used to make all buttons in the program
 - LoginClass:      Used for the encryption of user input in the password field so that their input can be compared to the passwords stored in /data/
 - SetupClass:      Used to set important settings and to keep track of what is happening when the program initializes
 - ExerciseClasses: All exercises were turned into classes that are compatible with this program so I could call them here.
 
 ********************/

//Initialzing Variables
int state = 0;                  // [state 0 = User Selection] [state 1 = Login] [state 2 = Exercise Selection] [state 3 = Exercise Screen]
int userProfile;                // variable to check which user is logged in
int exerciseSelection = 1;      // variable that the user uses to select an exercise and tells state 3 what exercise to run
String loginLabel;              // String that tells user what profile they are logging into
String passwordField = "";      // String used for password input
boolean incorrectPassAttempt;   // boolean to check if the user enters a correct/incorrect password
boolean exerciseRunning = false;// boolean to check if an exercise is currently running


// Instances
Button user1 = new Button("Bob", 30, 150, 100, 70);                        // Button to select Bob's profile
Button user2 = new Button("Joe", 155, 150, 100, 70);                       // Button to select Joe's profile
Button user3 = new Button("Admin", 280, 150, 100, 70);                     // Button to select Admin's profile
Button backArrow = new Button("<", 10, 5, 30, 30);                         // Button used go back to the previous screen
Button exit = new Button("Exit", 345, 5, 50, 35);                          // Exit button that is seen at all times that can be used to exit the program
Button bypass = new Button("Bypass Login", 200, 220, 140, 50);             // Temporary button to bypass the login while the login issue is being solved
Button increaseButton = new Button("+", 280, 170, 50, 50);                 // Button to increase the value of exerciseSelection
Button decreaseButton = new Button("-", 80, 170, 50, 50);                  // Button to decrease the value of exerciseSelection
Button selectExercise = new Button("Select Exercise", 115, 100, 170, 50);  // Button to run the selected exercise
exercise1 exercise1 = new exercise1();
exercise2 exercise2 = new exercise2();
exercise3 exercise3 = new exercise3();
exercise4 exercise4 = new exercise4();
exercise5 exercise5 = new exercise5();
exercise6 exercise6 = new exercise6();
exercise7 exercise7 = new exercise7();
exercise8 exercise8 = new exercise8();
exercise9 exercise9 = new exercise9();
exercise10 exercise10 = new exercise10();
exercise12 exercise12 = new exercise12();
login login = new login();                                                 // Calling login class for function calling
Setup program = new Setup();                                               // Calling setup class for function calling

// UI Elements
PImage backgroundImage;

void setup() {
  size(400, 400);
  program.init(); // Using the Setup Class to initialize program
}
void draw() {
  if (state != 3) {
    image(backgroundImage, 200, 200, width, height); // Background image is always visible unless on exercise screen (state 3)
  }

  /************************
   
   User Selection Screen:
   
   *************************/
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
  /************************
   
   Login Screen:
   
   *************************/
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

  /************************
   
   Exercise Selection Screen:
   
   *************************/

  if (state == 2) {        
    decreaseButton.Draw();
    increaseButton.Draw();
    backArrow.Draw();
    selectExercise.Draw();
    passwordField = "";

    fill(0);
    noStroke();
    rect(170, 170, 70, 70);
    fill(255);

    if (userProfile == 1) {            //
      text("Exercises 1-6", 200, 20);  //
      if (exerciseSelection > 6) {     //
        exerciseSelection = 1;         //
      }                                // User 1 (Bob's) Profile
      if (exerciseSelection < 1) {     //
        exerciseSelection = 6;         //
      }                                //
    }                                  //

    if (userProfile == 2) {            //           
      text("Exercises 7-12", 200, 20); //
      if (exerciseSelection > 12) {    //
        exerciseSelection = 7;         //
      }                                // User 2 (Joe's) Profile              
      if (exerciseSelection < 7) {     //
        exerciseSelection = 12;        //
      }                                //
    }                                  //

    if (userProfile == 3) {                      //
      text("All Exercises Available", 200, 20);  //
      if (exerciseSelection < 1) {               //
        exerciseSelection = 12;                  //
      }                                          // User 3 (Admin's) Profile  
      if (exerciseSelection > 12) {              //
        exerciseSelection = 1;                   //
      }                                          //
    }                                            //

    if (backArrow.isClicked() && state == 2) {                 
      passwordField = "";                        
      state = 0;
    }
    text(exerciseSelection, 205, 200);
  }

  /************************
   
   Exercise Screen in draw():
   
   *************************/
  if (state == 3) {
    exit.Draw();
    backArrow.Draw();

    if (exit.isClicked()) {
      exit();
    }

    if (backArrow.isClicked()) {
      exerciseRunning = false;
      state = 2;
      exerciseSelection = 1;
      setup();
    }

    if (exerciseSelection == 3 && exerciseRunning == true) {
      exercise3.draw();
    } else if (exerciseSelection == 4 && exerciseRunning == true) {
      exercise4.draw();
    } else if (exerciseSelection == 5 && exerciseRunning == true) {
      exercise5.draw();
    } else if (exerciseSelection == 6 && exerciseRunning == true) {
      exercise6.draw();
    } else if (exerciseSelection == 9 && exerciseRunning == true){
      exercise9.draw();
    }
  }
}
void keyPressed() {                                                          //
  if (keyCode == BACKSPACE) {                                                //
    if (passwordField.length() > 0) {                                        //
      passwordField = passwordField.substring(0, passwordField.length()-1);  //
    }                                                                        //
  } else if (keyCode == DELETE) {                                            //
    passwordField = "";                                                      //
  } else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT) {     // Password input
    passwordField = passwordField + key;                                     //
  }                                                                          //
  if (keyCode == ENTER) {                                                    //
    login.checkPassword();  //READ LOGIN CLASS COMMENT! ! !                  //
    println("Password Field: ", passwordField);                              //
  }                                                                          //
}                                                                            //

void mousePressed() {
  if (increaseButton.isClicked() && state == 2) {
    exerciseSelection++;
    println("+exerciseSelection: ", exerciseSelection);
  }
  if (decreaseButton.isClicked() && state == 2) {
    exerciseSelection--;
    println("-exerciseSelection: ", exerciseSelection);
  }
  /************************
   
   Exercise Screen in mousePressed():
   
   *************************/
  if (selectExercise.isClicked()) {
    exerciseRunning = true;
    state = 3;
    if (exerciseSelection == 1 && exerciseRunning == true) {
      exercise1.Draw();
    } else if (exerciseSelection == 2 && exerciseRunning == true) {
      exercise2.setup();
      exercise2.draw();
    } else if (exerciseSelection == 3 && exerciseRunning == true) {
      exercise3.setup();
    } else if (exerciseSelection == 4 && exerciseRunning == true) {
      exercise4.setup();
    } else if (exerciseSelection == 5 && exerciseRunning == true) {
      exercise5.setup();
    } else if (exerciseSelection == 6 && exerciseRunning == true) {
      exercise6.setup();
    } else if (exerciseSelection == 7 && exerciseRunning == true) {
      exercise7.setup();
      exercise7.draw();
    } else if (exerciseSelection == 8 && exerciseRunning == true) {
      background(0);
      text("check console", width/2, height/2);
      println("");
      println("Exercise 8 was to document a peice of code, this can be seen in this programs code itself. Click the '<' button to go back.");
    } else if (exerciseSelection == 9 && exerciseRunning == true) {
      exercise9.setup();
    } else if (exerciseSelection == 10 || exerciseSelection == 11 && exerciseRunning == true) {
      exercise10.setup();
      exercise10.draw();
    } else if (exerciseSelection == 12){
      exercise12.setup();
    }
  }
}

/*******************
 Login Class for Assignment 2
 Koby W.
 June 14 2018
 
 This class is used for the decryption of user logins and is used to validate logins by comparing passwords to a encrypted txt file found in /data/
 Passwords were encrypted using the Caeser Cipher rot13
 ********************/

class login {
  // Initializing Variables
  String pass = "";
  String user = "";

  // made the constructor empty for function calling & When I did use parameters it still didn't work 
  login () {
    
  }
  // Encrypts password using Caesar Cipher (rotates 13 in the alphabet)
  String encryptPassword (String password) {
    String encryptedPassword = "";
    for (int i = 0; i < password.length(); i++) {
      encryptedPassword += char(password.charAt(i)+13);
    }
    return encryptedPassword;
  }


  // Compares encrypted password from .txt file with the user's encrypted input (Not currently in use because it also did not work (grrr) )
  boolean isValid (String password) {
    String[] passwordArray = loadStrings("/data/" + userProfile + " Password.txt");
    return passwordArray[0].equals(encryptPassword(password));
  }

  String storedPass() {
    String[] getStoredPassword = loadStrings("/data/" + userProfile + " Password.txt");
    return getStoredPassword[0];
  }

  void checkPassword() {
    if (encryptPassword(passwordField) == storedPass()) {  // -- READ -- : In this 'if' statement, I am comparing the stored encrypted password in /data/ to the user's input which was also encrypted through the string function.
      state = 2;                                           // According to console, if the correct password is inputed, and both Strings are the EXACT SAME, Processing decides that this 'if' statement is somehow false (sadface).
      incorrectPassAttempt = false;                        // I have spent too much time trying to figure this out, if you figure out the problem ill give u a big cookie. (Opened an issue on GITHUB)
    } else {                                               
      incorrectPassAttempt = true;                         
      println("Incorrect Password Attempt");
      println("encrypted pass: ", encryptPassword(passwordField));
      println("stored pass : ", storedPass());
    }
  }
}
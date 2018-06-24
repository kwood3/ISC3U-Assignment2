/**********************************************
 Exercise 10
 Written by Koby W.
 May 3, 2018
 
 This program reads a sentence and determines the amount of characters, capitals, words, vowels, letters, and punctuation.
 Everything checked is printed to console once the program is ran.
 
 The function I use to get these results:
 
 int numberOfSomething(String sentenceChecked) {  // Initializing variable with a parameter to check the sentence
 int amountOfSomething = 0;                       // Initializing new variable that will later be returned to numberOfSomething
 char [] letters = sentenceChecked.toCharArray(); // puts the sentence checked into an array
 for (int i = 0; i < letters.length; i++) {       //
   if (letters[i] == something) {                 // If statement checks all characters in the array
     amountOfSomething++;                         // Adds a value to amountOfSomething
   }                                              //
 }                                                //
 return amountOfSomething;                        // Returns the value to the int, setting numberOfSomething to the value of amountOfSomething
}
 
**********************************************/

class exercise10 {
  
   // empty constructor to call the instance
  exercise10() {
  }

  String sentence;

  void setup() {
    background(0);
    fill(255);
    text("Check console for details", width/2, height/2);
    println("---------------------");
    println("Exercise 10:");
    println("");
    sentence = "My name is Koby. I am a student in the ISC3U course at A.Y Jackson.";
    println(sentence);
    println("*--------------------");
  }

  void draw(){ 
    println("# of capitals: ", numberOfCapitals(sentence));        //
    println("# of char: ", numberOfCharacters(sentence));          //
    println("# of punctuation: ", numberOfPunctuation(sentence));  // Printing results to console
    println("# of vowels: ", numberOfVowels(sentence));            //
    println("# of words: ", numberOfWords(sentence));              //
  }

  int numberOfCapitals(String sentenceChecked) {
    int amountOfCapitals = 0;
    char [] letters = sentenceChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == 'A' ||letters[i] == 'B'||letters[i] == 'C' ||letters[i] == 'D' ||letters[i] == 'E' ||letters[i] == 'F' ||letters[i] == 'G' ||letters[i] == 'H' ||letters[i] == 'I' ||letters[i] == 'J' ||letters[i] == 'K' ||letters[i] == 'L' ||letters[i] == 'M' ||letters[i] == 'N' ||letters[i] == 'O' ||letters[i] == 'P' ||letters[i] == 'Q' ||letters[i] == 'R' ||letters[i] == 'S' ||letters[i] == 'T' ||letters[i] == 'U' ||letters[i] == 'V'||letters[i] == 'W' ||letters[i] == 'X' ||letters[i] == 'Y' ||letters[i] == 'Z') {
        amountOfCapitals++;
      }
    }
    return amountOfCapitals;
  }

  int numberOfPunctuation(String sentenceChecked) {
    int amountOfPunctuation = 0;
    char [] letters = sentenceChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == ',' || letters[i] == '!' || letters[i] == '.' || letters[i] == '?' || letters[i] == ':' || letters[i] == ';') {
        amountOfPunctuation++;
      }
    }
    return amountOfPunctuation;
  }

  int numberOfVowels(String sentenceChecked) {
    int amountOfVowels = 0;
    char [] letters = sentenceChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == 'A' || letters[i] == 'a' || letters[i] == 'E' || letters[i] == 'e' || letters[i] == 'I' || letters[i] == 'i' || letters[i] == 'O' || letters[i] == 'o'|| letters[i] == 'U' || letters[i] == 'u') {
        amountOfVowels++;
      }
    }
    return amountOfVowels;
  }

  int numberOfCharacters(String sentenceChecked) {
    int amountOfCharacters = 0;
    char [] letters = sentenceChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      amountOfCharacters = i;
    }
    return amountOfCharacters;
  }

  int numberOfWords(String sentenceChecked) {
    return sentenceChecked.split("\\s+").length; //checks the sentence passed through the parameter and splits the words from spaces, .length gets the amount of words
  }
}
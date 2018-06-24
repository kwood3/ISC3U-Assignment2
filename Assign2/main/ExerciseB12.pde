/********************************
 Exercise 12
 Written by Koby W.
 May 10 2018
 
 *Not Finished* 
 
 This program loads text files and reads them to determine a certain amount of characters.
 The same string function from exercise 11 was used to determine the characters.
 *********************************/
class exercise12 {
  void setup() {
    background(0);
    text("Exercise 12", width/2, height/3);
    text("Check console for details", width/2, height/2);
    //Initalizing Variables
    int state = 0;

    String[] hamlet_ = loadStrings("hamlet.txt");                  //
    String[] illiad_ = loadStrings("illiad.txt");                  //    
    String[] macbeth_ = loadStrings("macbeth.txt");                //
    String[] othello_ = loadStrings("othello.txt");                // Loading text files into string arrays
    String[] romeoAndJuliet_ = loadStrings("romeoAndJuliet.txt");  //
    String[] theOdyssey_ = loadStrings("theOdyssey.txt");          //
    String[] theRepublic_ = loadStrings("theRepublic.txt");        //

    String hamlet = join(hamlet_, "\n");                 //
    String illiad = join(illiad_, "\n");                 //
    String macbeth = join(macbeth_, "\n");               //
    String othello = join(othello_, "\n");               //  Combining arrays into individual strings
    String romeoAndJuliet = join(romeoAndJuliet_, "\n"); //
    String theOdyssey = join(theOdyssey_, "\n");         //
    String theRepublic = join(theRepublic_, "\n");       //

    String file;

    //Printing to console
    if (state == 0) {
      println("");
      println("Exercise 12:");
      println("Press the following keys to load a specific file.");
      println("1: Hamlet, 2: Illiad, 3: Macbeth, 4: Othello,");
      println("5: Romeo and Juliet, 6: The Odyssey, 7: The Republic");
      println("*------------------------------------------------");
    }
    if (state == 1) {
      println("Press 'E' to go back to file selection");
    }
    if (keyPressed == true) {
      if (key == '1') {
        state = 1;
        file = hamlet;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(hamlet));
        println("# of words: ", numberOfWords(hamlet));
        println("# of characters: ", numberOfCharacters(hamlet));
        println("# of capitals: ", numberOfCapitals(hamlet));
        println("# of punctuation: ", numberOfPunctuation(hamlet));
        println("# of vowels: ", numberOfVowels(hamlet));
      }
      if (key == '2') {
        state = 1;
        file = illiad;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(hamlet));
        println("# of words: ", numberOfWords(hamlet));
        println("# of characters: ", numberOfCharacters(hamlet));
        println("# of capitals: ", numberOfCapitals(hamlet));
        println("# of punctuation: ", numberOfPunctuation(hamlet));
        println("# of vowels: ", numberOfVowels(hamlet));
      }
      if (key == '3') {
        state = 1;
        file = macbeth;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(hamlet));
        println("# of words: ", numberOfWords(hamlet));
        println("# of characters: ", numberOfCharacters(hamlet));
        println("# of capitals: ", numberOfCapitals(hamlet));
        println("# of punctuation: ", numberOfPunctuation(hamlet));
        println("# of vowels: ", numberOfVowels(hamlet));
      }
      if (key == '4') {
        state = 1;
        file = othello;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(othello));
        println("# of words: ", numberOfWords(othello));
        println("# of characters: ", numberOfCharacters(othello));
        println("# of capitals: ", numberOfCapitals(othello));
        println("# of punctuation: ", numberOfPunctuation(othello));
        println("# of vowels: ", numberOfVowels(othello));
      }
      if (key == '5') {
        state = 1;
        file = romeoAndJuliet;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(romeoAndJuliet));
        println("# of words: ", numberOfWords(romeoAndJuliet));
        println("# of characters: ", numberOfCharacters(romeoAndJuliet));
        println("# of capitals: ", numberOfCapitals(romeoAndJuliet));
        println("# of punctuation: ", numberOfPunctuation(romeoAndJuliet));
        println("# of vowels: ", numberOfVowels(romeoAndJuliet));
      }
      if (key == '6') {
        state = 1;
        file = theOdyssey;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(theOdyssey));
        println("# of words: ", numberOfWords(theOdyssey));
        println("# of characters: ", numberOfCharacters(theOdyssey));
        println("# of capitals: ", numberOfCapitals(theOdyssey));
        println("# of punctuation: ", numberOfPunctuation(theOdyssey));
        println("# of vowels: ", numberOfVowels(theOdyssey));
      }
      if (key == '7') {
        state = 1;
        file = theRepublic;
        println("");
        println("File Chosen: " +  file);
        println("# of Ts: ", numberOfLetterT(theRepublic));
        println("# of words: ", numberOfWords(theRepublic));
        println("# of characters: ", numberOfCharacters(theRepublic));
        println("# of capitals: ", numberOfCapitals(theRepublic));
        println("# of punctuation: ", numberOfPunctuation(theRepublic));
        println("# of vowels: ", numberOfVowels(theRepublic));
      }
      if (key == 'e' || key == 'E') {
        state = 0;
      }
    }
  }

  int numberOfLetterT(String fileChecked) {
    int amountOfTs = 0;
    char [] letters = fileChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == 't' || letters[i] == 'T') {
        amountOfTs += 1;
      }
    }
    return amountOfTs;
  }

  int numberOfWords(String fileChecked) {
    String[] words = fileChecked.split(" ");
    return words.length;
  }

  int numberOfCapitals(String fileChecked) {
    int amountOfCapitals = 0;
    char [] letters = fileChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == 'A' ||letters[i] == 'B'||letters[i] == 'C' ||letters[i] == 'D' ||letters[i] == 'E' ||letters[i] == 'F' ||letters[i] == 'G' ||letters[i] == 'H' ||letters[i] == 'I' ||letters[i] == 'J' ||letters[i] == 'K' ||letters[i] == 'L' ||letters[i] == 'M' ||letters[i] == 'N' ||letters[i] == 'O' ||letters[i] == 'P' ||letters[i] == 'Q' ||letters[i] == 'R' ||letters[i] == 'S' ||letters[i] == 'T' ||letters[i] == 'U' ||letters[i] == 'V'||letters[i] == 'W' ||letters[i] == 'X' ||letters[i] == 'Y' ||letters[i] == 'Z') {
        amountOfCapitals++;
      }
    }
    return amountOfCapitals;
  }

  int numberOfPunctuation(String fileChecked) {
    int amountOfPunctuation = 0;
    char [] letters = fileChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == ',' || letters[i] == '!' || letters[i] == '.' || letters[i] == '?' || letters[i] == ':' || letters[i] == ';') {
        amountOfPunctuation++;
      }
    }
    return amountOfPunctuation;
  }

  int numberOfVowels(String fileChecked) {
    int amountOfVowels = 0;
    char [] letters = fileChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      if (letters[i] == 'A' || letters[i] == 'a' || letters[i] == 'E' || letters[i] == 'e' || letters[i] == 'I' || letters[i] == 'i' || letters[i] == 'O' || letters[i] == 'o'|| letters[i] == 'U' || letters[i] == 'u') {
        amountOfVowels++;
      }
    }
    return amountOfVowels;
  }

  int numberOfCharacters(String fileChecked) {
    int amountOfCharacters = 0;
    char [] letters = fileChecked.toCharArray();
    for (int i = 0; i < letters.length; i++) {
      amountOfCharacters = i;
    }
    return amountOfCharacters;
  }
}

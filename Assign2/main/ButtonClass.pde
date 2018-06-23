class Button {
  String label; // button label
  float x;      // top left corner x position
  float y;      // top left corner y position
  float w;      // width of button
  float h;      // height of button

  // constructor
  Button(String labelB, float xpos, float ypos, float widthB, float heightB) {
    label = labelB;
    x = xpos;
    y = ypos;
    w = widthB;
    h = heightB;
  }

  void Draw() { // function to draw the button
    fill(218);
    stroke(141);
    rect(x, y, w, h, 10);
    textAlign(CENTER, CENTER);
    fill(0);
    text(label, x + (w / 2), y + (h / 2));
    textSize(20);
  }

  boolean isClicked() { // if mouse is over button it returns true, if not then false
    if (mouseX > x && mouseX < (x + w) && mouseY > y && mouseY < (y + h) && mousePressed) {
      return true;
    } 
    return false;
  }
}
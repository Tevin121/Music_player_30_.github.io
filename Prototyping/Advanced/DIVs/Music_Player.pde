class MusicPlayer {

  float[] divs;          // stores rectangle positions (x, y, width, height)
  Boolean musicGUI = false;  

  MusicPlayer() {
  }

  MusicPlayer(int numberOfRectangles) {
    this.divs = new float[numberOfRectangles * 4];
    divs();
  }

  void draw() {
    seeQuitMusicButton();
    seeMusicGUI();
  }

  void mousePressed() {
    int num = 4;  
    if (mouseReturn(num)) exit();  

    num = 8;  
    if (mouseReturn(num)) musicGUI = varSwitch(musicGUI);
  }

  void keyPressed() {
    if (key == CODED || keyCode == ESC) exit();  
    if (key == 'Q' || key == 'q') exit();  
    if (key == 'M' || key == 'm') musicGUI = varSwitch(musicGUI);  
  }

  Boolean varSwitch(Boolean variable) {
    return !variable;
  }

  Boolean mouseReturn(int num) {
    return mouseX > divs[num] &&
           mouseX < divs[num] + divs[num + 2] &&
           mouseY > divs[num + 1] &&
           mouseY < divs[num + 1] + divs[num + 3];
  }

  void divs() {
    float referent = appWidth / 20f;
    float textWidth = referent * 5;
    float textHeight = referent * 3;

    // MOVE THE BIG RECTANGLE LOWER ON SCREEN
    divs[0] = appWidth / 4f;              // X
    divs[1] = appHeight / 2.5f;           // Y lower on screen
    divs[2] = appWidth / 2f;              // WIDTH
    divs[3] = appHeight / 3f;             // HEIGHT

    // COLUMNS for buttons under big rectangle
    float[] column = new float[5];
    for (int i = 0; i < column.length; i++) {
      column[i] = divs[0] + referent * i; // spread horizontally under main rectangle
    }

    // ROWS for buttons
    float[] row = new float[3];
    row[0] = divs[1] + divs[3] + referent;      // first row directly under big rectangle
    row[1] = row[0] + textHeight + referent/2;  // second row
    row[2] = row[1] + referent;                 // third row if needed

    // PLACE BUTTONS
    int buttonStartIndex = 4;  // after big rectangle
    int b = 0;
    for (int i = buttonStartIndex; i < divs.length; i += 4) {
      divs[i] = column[b % column.length];     // X
      if (b < column.length) {
        divs[i+1] = row[0];                    // Y row 0
      } else {
        divs[i+1] = row[1];                    // Y row 1
      }
      divs[i+2] = referent;                     // WIDTH
      divs[i+3] = textHeight;                   // HEIGHT
      b++;
    }
  }

  void seeQuitMusicButton() {
    for (int j = 4; j < 9; j += 4) {
      rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]);
    }
  }

  void seeMusicGUI() {
    rectDIV(divs[0], divs[1], divs[2], divs[3]); // main big rectangle
    for (int j = 4; j < divs.length; j += 4) {
      rectDIV(divs[j], divs[j+1], divs[j+2], divs[j+3]); // buttons under it
    }
  }

  void rectDIV(float x, float y, float w, float h) {
    rect(x, y, w, h);
  }

  float poly(float a, float x, float b, float y) {
    return (a * x) + (b * y);
  }

  float poly(float a, float x, float b, float y, float c, float z) {
    return (a * x) + (b * y) + (c * z);
  }

  Boolean musicPlayerGUI() {
    return musicGUI;
  }
}

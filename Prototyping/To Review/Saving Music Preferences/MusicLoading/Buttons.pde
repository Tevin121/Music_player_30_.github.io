Boolean quitDoubleClick=false;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float quitScreenX, quitScreenY, quitScreenWidth, quitScreenHeight;
float randomStartButtonX, randomStartButtonY, randomStartButtonWidth, randomStartButtonHeight;
color colour, black=#000000, red=#FF0000, white=#FFFFFF;
//
void drawButtons() {
  background(black);
  quitButton();
  randomStartButton();
  //
} //End Draw Buttons
//
void quitButton() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    colour = red;
  } else {
    colour = white;
  }
  fill(colour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(white);
  //
  /* Pop-up Menu
   - No Choice, just time to save the files
   */
  if ( quitDoubleClick==true) {
    fill(white);
    rect(quitScreenX, quitScreenY, quitScreenWidth, quitScreenHeight);
    noLoop(); //First QUIT Click enables printScreen in OS
  }
  //
} //End Quit Button
void randomStartButton() {
  if ( mouseX>randomStartButtonX && mouseX<randomStartButtonX+randomStartButtonWidth && mouseY>randomStartButtonY && mouseY<randomStartButtonY+randomStartButtonHeight ) {
    colour = red;
  } else {
    colour = white;
  }
  if ( randomStart==true ) {
    colour = red;
  } 
  fill(colour);
  rect(randomStartButtonX, randomStartButtonY, randomStartButtonWidth, randomStartButtonHeight);
  fill(white);
} //End Random Start Button
//
void mousePressedQuitButton() {
  if ( quitDoubleClick==false ) {
    println("Saving Strings .txt");
    savePreferences();
  }
  //
  if ( quitDoubleClick==true ) exit(); //Second QUIT Closes CANVAS
  //
  quitDoubleClick=true;
} //End Mouse Pressed Quit Button
//
void simpleNextButton() {
  //Simple NEXT Button
  playList[ currentSong ].pause();
  playList[ currentSong ].rewind();
  if ( currentSong >= numberOfSongs-1 ) {
    currentSong=0;
  } else {
    currentSong++;
  }
  playList[ currentSong ].play();
} //End Simle NEXT Button
//
void randomStartButtonFeature() {
  if ( randomStart==true ) {
    randomStart=false;
  } else {
    randomStart=true;
  }
} //End Random Start Feature
//End Buttons Subprogram

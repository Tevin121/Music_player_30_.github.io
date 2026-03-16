/* Music Buttons
 */
//
//Global Variables
int appWidth, appHeight;
int numberOfButtons = 12;
float[] musicButtonDivX = new float[numberOfButtons];
//
void setup() {
  fullScreen();
  appWidth = displayWidth;
  appHeight = displayHeight;
  //
  //Population Building
  int buttonWidth = appWidth/13; //Number of Buttons in a Row + 2xPadding
  int buttonY = appHeight*3/5; //Most Buttons
  int randomButtonX = 0;
  int randomButtonY = 0;
  float randomButtonDimension = appHeight*1/20; //Changed to SQUARE
  //musicButtonDivX
  musicButtonDivX[0] = randomButtonX;
  for ( int i=1; i<musicButtonDivX.length; i++ ) {
    musicButtonDivX[i] = buttonWidth*i;
  }
  
  //
}//End Setup
//
void draw() {
}//End Draw
//
void mousePressed() {
}//End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN

void drawText(String title, String message) {
  //Population: DIVs
  //Note: int(i/4) && i%4==2,3 (width, height)
  int numberOfButtons = 13; //Half a button on either side as space, Center Button is Play
  int widthOfButton = appWidth/numberOfButtons;
  int beginningButtonSpace = widthOfButton;
  float quitX = appWidth - appHeight*1/20;
  float quitY = 0;
  float quitWidth = appHeight*1/20;
  float quitHeight = appHeight*1/20;
  float songTitleDivX = beginningButtonSpace;
  float songTitleDivY = appHeight*1.5/20;
  float songTitleDivWidth = appWidth*1/2 - beginningButtonSpace*1.5;
  float songTitleDivHeight = appHeight*1/10;
  float messageDIV_X = appWidth*1/2 + beginningButtonSpace*1/2;
  float messageDIV_Y = appHeight*1.5/20;
  float messageDIV_Width = appWidth*1/2 - beginningButtonSpace*1.5;
  float messageDIV_Height = appHeight*9/20;
  //
  //
  //DIV: Image
  rect(songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight);
  rect(messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height);
  rect(quitX, quitY, quitWidth, quitHeight);
  //
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  // Students enter all text from Case Study
  String x = "X";
  //
  // Fonts from OS
  //rect(height) is biggest font is word is the smallest
  float fontSize1 = songTitleDivHeight; //1:1 Font Height to rectHeight
  float fontSize2 = messageDIV_Height;
  float fontSize3 = quitHeight;
  PFont font; //Font Varaible Name, able to have more than one Font
  String harrington = "Harrington"; //Spelling of the Font Matters, see PFont.list() v Create Font above
  font = createFont(harrington, fontSize1);
  //
  //Drawing Text
  color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
  color whiteInk = #FFFFFF; //Grey Scale is 255
  color resetInk = whiteInk;
  fill(purpleInk); //Ink, hexidecimal copied from Color Selector
  //Grey Scale 0-255
  textAlign (CENTER, TOP); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  //
  // Procedure Passing RECT(#2) && fontSize(RECT#)
  float constantDecrease = 0.99;
  int iWhile=0;
  textFont(font, fontSize1); //must include textSize() before text() & textWidth()
  while ( textWidth(title) > songTitleDivWidth ) {
    //println("While #1"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize1 *= constantDecrease;
    textFont(font, fontSize1);
  }
  text( title, songTitleDivX, songTitleDivY, songTitleDivWidth, songTitleDivHeight );
  //
  textFont(font, fontSize2); //must include textSize() before text() & textWidth()
  iWhile=0;
  while ( textWidth(message) > messageDIV_Width ) {
    //println("While #2"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize2 *= constantDecrease;
    textFont(font, fontSize2);
  }
  if ( fontSize1 >= fontSize2 ) {
    //Empty IF
  } else {
    fontSize2 = fontSize1*0.9;
    textFont(font, fontSize2);
  }
  text( message, messageDIV_X, messageDIV_Y, messageDIV_Width, messageDIV_Height );
  //
  textFont(font, fontSize3); //must include textSize() before text() & textWidth()
  iWhile=0;
  while ( textWidth(x) > quitWidth ) {
    //println("While #3"); //Infinite WHILE Check
    iWhile++;
    if ( iWhile>10000 ) { //>1000 means -1 text or i
      println("Infninte WHILE Loop");
      exit();
    }
    fontSize3 *= constantDecrease;
    textFont(font, fontSize3);
  }
  fontSize3 *= 0.1;
  text( x, quitX, quitY, quitWidth, quitHeight );
  fill(resetInk);
  //
}//End Draw Text
//
//End Text Example Subprogram

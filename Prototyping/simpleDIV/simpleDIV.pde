// Declare variables for button size and visibility flags
int buttonSize = 50; // Size of the buttons (50x50 pixels)
boolean showMiddleRectangle = false; // Flag to show the middle rectangle
boolean showInnerRectangles = false; // Flag to show the inner rectangles inside the middle rectangle

// Setup function runs once at the start of the program
void setup() {
  size(600, 400); // Set the window size to 600 pixels wide and 400 pixels tall
}

// Draw function runs continuously to update the screen
void draw() {
  background(200); // Set the background color to light gray

  // Draw the exit button in the top-right corner
  fill(255, 0, 0); // Set the color to red
  rect(width - buttonSize, 0, buttonSize, buttonSize); // Draw the exit button

  // Draw the bottom-right button
  fill(0, 255, 0); // Set the color to green
  rect(width - buttonSize, height - buttonSize, buttonSize, buttonSize); // Draw the bottom-right button

  // If the middle rectangle is triggered, draw it
  if (showMiddleRectangle) {
    fill(173, 216, 230); // Set the color to light blue
    rect(width / 2 - 100, height / 2 - 100, 200, 200); // Draw the middle rectangle (200x200 pixels)

    // If the inner rectangles are triggered, draw them inside the middle rectangle
    if (showInnerRectangles) {
      fill(255, 255, 0); // Set the color to yellow
      rect(width / 2 - 50, height / 2 - 50, 40, 40); // Draw the first inner rectangle
      rect(width / 2 + 10, height / 2 - 50, 40, 40); // Draw the second inner rectangle
      rect(width / 2 - 20, height / 2 + 10, 40, 40); // Draw the third inner rectangle
    }
  }
}

// Handle mouse clicks
void mousePressed() {
  // Check if the exit button is clicked
  if (mouseX > width - buttonSize && mouseY < buttonSize) {
    exit(); // Exit the program
  }

  // Check if the bottom-right button is clicked
  if (mouseX > width - buttonSize && mouseY > height - buttonSize) {
    showMiddleRectangle = true; // Show the middle rectangle
    showInnerRectangles = false; // Reset the inner rectangles
  }

  // Check if the middle rectangle is clicked
  if (showMiddleRectangle && mouseX > width / 2 - 100 && mouseX < width / 2 + 100 &&
      mouseY > height / 2 - 100 && mouseY < height / 2 + 100) {
    showInnerRectangles = true; // Show the inner rectangles
  }
}

/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */


PFont font;  // PFont Variable definieren

void setup() {
  size(400, 400);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
}

void draw() {
  background(255);
  textFont(font, 30);                  // Font und Grösse angeben
  fill(0);                             // Farbe 
  text("Hello World!", 10, 100);     // Text zeichnen
}
/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */

PFont font;  // PFont Variable definieren
String data[]; 

void setup() {
  size(400, 400);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
  data=loadStrings("data.txt");
  println(data);
}

void draw() {
  background(255);
  textFont(font, 30);   

  pushMatrix();
  translate(10, 100);
  for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
    for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
      char c = data[i].charAt(k);  
      noFill();
      stroke(255, 0, 0);
      rect(0, -textAscent()-textDescent(), textWidth(c), textAscent()+textDescent());
      fill(0);
      text(c, 0, 0);
      translate(textWidth(c), 0);
    }
  }
  popMatrix();
}
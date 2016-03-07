/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */

PFont font;  // PFont Variable definieren

String data[]; 

int xTextPosition;
int yTextPosition;
int leading=0;

void setup() {
  size(800, 800);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
  data=loadStrings("data.txt");
  println(data);
}


void draw() {
  background(255);
  textFont(font, 30);  
  textLeading(leading);

  pushMatrix();
  translate(0, 100);
  xTextPosition=0;
  yTextPosition=0;
  for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
    for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
      char c = data[i].charAt(k);  
      pushMatrix();
      translate(xTextPosition, yTextPosition);
      //noFill();
      fill(c);
noStroke();
rect(0, -textAscent()-textDescent(), textWidth(c), textAscent()+textDescent());
      fill(0);
      //text(c, 0, 0);
      xTextPosition+=textWidth(c);
      if (xTextPosition>=(width-textWidth(c))) {
        xTextPosition=0;
        yTextPosition+= textAscent()+textDescent()+leading;
      }
      popMatrix();
    }
  }
  popMatrix();
}
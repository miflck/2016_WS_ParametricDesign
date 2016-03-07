/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */

PFont font;  // PFont Variable definieren

String data[]; 
ArrayList<PVector> positions = new ArrayList<PVector>();

int xTextPosition;
int yTextPosition;
int leading=10;

int angle=0;

void setup() {
  size(400, 400);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
  data=loadStrings("data.txt");
  println(data);
}


void computePositions(){
 for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
    for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
      char c = data[i].charAt(k);  
      xTextPosition+=textWidth(c);
      if (xTextPosition>=(width-textWidth(c))) {
        xTextPosition=0;
        yTextPosition+= textAscent()+textDescent()+leading;
      }
      PVector p=new PVector(xTextPosition,yTextPosition);
      positions.add(p);
    }
  }

}

void draw() {
  background(255);
  textFont(font, 30);  
  textLeading(leading);

  pushMatrix();
  translate(0, 100);
  xTextPosition=0;
  yTextPosition=0;
    angle=mouseX;
  for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
    for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
      char c = data[i].charAt(k);  
      pushMatrix();
      translate(xTextPosition, yTextPosition);
        rotate(radians(angle));
      noFill();
      stroke(255, 0, 0);
    //  rect(0, -textAscent()-textDescent(), textWidth(c), textAscent()+textDescent());
      fill(0);
      text(c, 0, 0);
    
      xTextPosition+=textWidth(c);
      if (xTextPosition>=(width-textWidth(c))) {
        xTextPosition=0;
        yTextPosition+= textAscent()+textDescent()+leading;
      }
      popMatrix();
        angle++;
    }
  
  }

  popMatrix();
}
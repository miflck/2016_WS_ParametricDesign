/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */

PFont font;  // PFont Variable definieren

String data[]; 
ArrayList<PVector> positions;

int xTextPosition;
int yTextPosition;
int leading=10;

void setup() {
  size(400, 400);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
  data=loadStrings("data.txt");
  
  positions = new ArrayList<PVector>();
  println(data);
  computePositions();
}


void computePositions() {
    xTextPosition=0;
  yTextPosition=0;
    textFont(font, 30);  
  textLeading(leading);
        PVector p=new PVector(xTextPosition, yTextPosition);
      positions.add(p);
  for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
    for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
      char c = data[i].charAt(k);  
      xTextPosition+=textWidth(c);
      if (xTextPosition>=(width-textWidth(c))) {
        xTextPosition=0;
        yTextPosition+= textAscent()+textDescent()+leading;
      }
       p=new PVector(xTextPosition, yTextPosition);
      positions.add(p);
    }
  }
}

void draw() {
  background(255);
  textFont(font, 30);  
  textLeading(leading);

  pushMatrix();
  translate(10, 100);
  xTextPosition=0;
  yTextPosition=0;

  for (int i=0; i<positions.size(); i++) {
          PVector p=positions.get(i);
    pushMatrix();
    translate(p.x, p.y);
    rect(0,0,5,5);
    popMatrix();
  }

  for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
   for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
   char c = data[i].charAt(k);  
   pushMatrix();
   translate(xTextPosition, yTextPosition);
   noFill();
   stroke(255, 0, 0);
   rect(0, 0, textWidth(c), textAscent()+textDescent());
   fill(0);
   text(c, 0,textAscent()+textDescent() );
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
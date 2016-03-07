/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */

PFont font;  // PFont Variable definieren
String letterOrder ="abcdefghijklmnopqrstuvwxyz ,.;:\"«»";
color []colors=new color[letterOrder.length()];
String data[]; 

int xTextPosition;
int yTextPosition;
int leading=0;

void setup() {
  size(800, 800);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
  data=loadStrings("data.txt");

  colorMode(HSB, letterOrder.length());
  for (int i=0; i<letterOrder.length(); i++) {
    colors[i]=color(i, 255, 255);
  }
  colorMode(RGB,255);
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
  color myColor=color(255);
  for (int i=0; i<data.length; i++) { // Alle Zeilen durchgehen
    for (int k=0; k<data[i].length(); k++) { // Alle Buchstaben der Zeile durchgehen
      char c = data[i].charAt(k);  

      if (c=='a'||c=='e'|| c=='i'||c=='o'||c=='u') {
        myColor=color(255, 0, 0);
      } else {
        myColor=color(255);
      }

      myColor=getColor(c);

      pushMatrix();
      translate(xTextPosition, yTextPosition);
      fill(myColor);      
      noStroke();      
      rect(0, -textAscent()-textDescent(), textWidth(c), textAscent()+textDescent());
      xTextPosition+=textWidth(c);
      if (xTextPosition>=(width-textWidth(c))) {
        xTextPosition=0;
        yTextPosition+= textAscent()+textDescent()+leading;
      }
      popMatrix();
    } 
    //Enter
    xTextPosition=0;
    yTextPosition+= textAscent()+textDescent()+leading;
  }
  popMatrix();
}




color getColor(char c) {
  color myColor=color(255);
  for (int i=0; i<letterOrder.length(); i++) {
    if (Character.toLowerCase(c)==letterOrder.charAt(i)) {
      myColor=colors[i];
      return color(myColor);
    }
  }
  return color(255, 0, 0);
}
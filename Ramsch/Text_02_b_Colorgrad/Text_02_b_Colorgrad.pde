/* 
 *  Text 02
 *  Text einlesen
 
 *  HKB 16 Parametric Design, MR
 */
String[] lines;
int index = 0;

float posx=0;
float posy=0;
float rectsize=30;
float lineheight=40;

//Sortierter String, gegen den abgeglichen werden kann 
String letterOrder ="abcdefghijklmnopqrstuvwxyz ,.;:\"«»";
// Array für den Farbverlauf
color []colors=new color[letterOrder.length()];



void setup() {
  size(800, 800);
  lines = loadStrings("text.txt");

  background(0);

  // Array mit Farben im Verlauf füllen
  colorMode(HSB, letterOrder.length());
  for (int i=0; i<letterOrder.length(); i++) {
    colors[i]=color(i, 255, 255);
  }
  colorMode(RGB, 255);


  for (int i = 0; i < lines.length; i++) {
    println(lines[i]);
    String line=lines[i];
    for (int h=0; h<line.length(); h++) {
      println(line.charAt(h));
      println((int)line.charAt(h));
    }
  }
}

void draw() {
  posx=0;
  posy=0;

  color myColor=color(255);
  for (int i=0; i<lines.length; i++) {
    String line=lines[i];
    posx=0;

    for (int h=0; h<line.length(); h++) {
   
      myColor=getColor(c);
      fill((int)line.charAt(h));
      rect(posx, posy, rectsize, rectsize); 
      posx+=rectsize;


      if (posx>width) {
        posx=0;
        posy+=lineheight;
      }
    }

    posy+=lineheight;
  }
}


// Farbe des Buchstabens finden
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
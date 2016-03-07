/* 
 WS Parametric Design 2016
 Typografie
 
 
 //--------------------------------------------------
 */

PFont font;  // PFont Variable definieren
String letterOrder ="abcdefghijklmnopqrstuvwxyz ,.;:\"«»";
color []colors;
String data[]; 
String joinedText;
String[] words; 

//Schirtt 2, kein schnelles ruckeln mehr...
PVector [] positions;



void setup() {
  size(800, 800);
  // Laden der Schrift  
  font = loadFont ("HelveticaNeue-48.vlw");
  data=loadStrings("data.txt");

  joinedText = join(data, " "); 
  words=joinedText.split(" ");
  positions=new PVector[words.length];
  colors=new color[words.length];

  println(words);

  colorMode(HSB, words.length);
  for (int i=0; i<words.length; i++) {
    positions[i]=new PVector(random(width-100), random(height-100));
    colors[i]=color(i, 255, 255);
  }
  colorMode(RGB, 255);
  //println(data);
}

void draw() {
  background(255);
  textFont(font, 30);  

  pushMatrix();
  translate(0, 100);

  color myColor=color(255);

  //joinedText=joinedText.replace(words[int(random(words.length))],"fuck");

  for (int i=0; i<words.length; i++) { // Alle Zeilen durchgehen
    //char c = joinedText.charAt(i);  

    pushMatrix();
    translate(positions[i].x, positions[i].y);
    fill(colors[i]);
    stroke(colors[i]);
    text(words[i], 0, 0);
    popMatrix();
    if (i<positions.length-1) {
      line(positions[i].x, positions[i].y, positions[i+1].x, positions[i+1].y);
    }
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
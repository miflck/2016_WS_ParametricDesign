/* 
 WS Parametric Design 2016
 Variabeln
 Mausinteraktion als erste Variabeln
 
 //--------------------------------------------------
 */

/*
Bis jetzt hatten unsere Programme bloss einen Durchgang. 
 Wir konnten zur Laufzeit nichts beeinflussen. 
 Wenn wir unserem Programm eine Dynamik geben wollen, müssen dafür 
 spezielle Bereiche -Programmblöcke- angelegt werden:
 
 setup() wird gleich nach dem Programmstart aufgerufen und nur einmal ausgeführt. 
 draw() wird gleich nach dem setup-Durchgang aufgerufen und als endlose Schleife 
 so lange wiederholt, bis das Programm abgebrochen wird. 
 */

void setup() {
  size(400, 400);
  background(255);
  noStroke();
}

void draw() {
  fill(255, 100, 100, 10);
  /* jedes Mal, wenn das Programm wieder neu in den Draw-loop eintritt, 
   wird die Position des Kreises neu auf die Stelle der Maus gesetzt:
   */
  ellipse(mouseX, mouseY, 30, 30);
}


/*
Maustaste
 
 void draw() {
 if (mousePressed) {
 // zeichne eine Ellipse an der Mausposition
 
 ellipse (mouseX, mouseY, 10, 10);
 }else{
 // zeichne ein Rechteck an der Mausposition
 rectMode (CENTER);
 rect (mouseX, mouseY, 30, 30);
 }
 }
 */
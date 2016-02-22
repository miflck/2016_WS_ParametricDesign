/* 
 WS Parametric Design 2016
 Simple Colors
 --------------------------------------------------
 */

size(400, 400); // Die Grösse der Canvas 
background (255);  // Hintergrund der Canvas
noStroke ();      // zeichne keine Outline

/* Transparenz
 Als vierter Wert kann die Transparenz angegeben werden. 
 Auch hier ist der Wertebereich zwischen 0 und 255
 */

fill (255, 0, 0,100); 
rect (100, 100, 100, 100); 

fill (255, 0, 0, 100); 
rect (150, 150, 100, 100); 

fill (0, 255, 0,100); 
ellipse(200, 150, 100, 100); 
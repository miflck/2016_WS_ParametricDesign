/* 
 WS Parametric Design 2016
 Strings
 
 
 //--------------------------------------------------
 */
 
println("Hello World!");  // Schreibt in die Konsole

char[] sometextAsChar = {'H', 'e', 'l', 'l', 'o', ' ', 'W', 'o','r','l','d'};
//Array aus einzelnen Zeichen

String sometextAsString = "Hello World!";
// Ein String ist ein Array oder eine Liste von einzelnen Zeichen

// Wie bei jedem Array kann der Wert an einer ganz bestimmten Stelle ausgelesen werden.
// Achtung, auch hier beginnt die Zählung bei 0
String message = "Hello World!";
char c = message.charAt(3);
println(c);       

// Länge eines Strings herausfinden:
println(message.length());

// Verändern von Strings
//Achtung: Strings sind spezielle Objekttypen, die nicht verändert werden können. (immutable)
// Einmal instanziert, bleiben sie für immer gleich. 
//Um Strings zu verändern, müssen neue Strings gemacht, respektive kopiert werden:
String uppercase = message.toUpperCase(); 
println(uppercase); 

//Vergleichen:
//Achtung: weil Strings eigene Objekte sind, kann nicht einfach mit "==" verglichen werden. 
//Das würde nur die Speicheradresse vergleichen und je nach dem "false" ausgeben
String one = "hello";
String two = "hello";
println(one.equals(two));

//Hinzufügen von Zeichen
String helloworld = "Hello" + "World";
println(helloworld);


// Variabeln
int x = 10;
String messageWithVariable = "The value of x is: " + x;
println(messageWithVariable);
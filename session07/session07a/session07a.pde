// Author: Enric Guaus
// Date: 15/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Reading a .txt file and print its content into the console.

String fileName="OT_Winners.txt"; // Defining the file to be opened as a String
                                  // By default, this file should be in the "data" folder

void setup() {
  String[] lines = loadStrings(fileName);       // Loading the filename into an array of strings (one string for each line)
  println("List of the " + lines.length + " winners for the OT editions."); //Using the ".length" method of an array to know its length
  for (int i=0; i<lines.length; i++) {
    println(lines[i]);                          // Printing all the lines in a loop
  }
}

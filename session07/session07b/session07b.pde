// Author: Enric Guaus
// Date: 15/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Reading a .txt file and print its content into a new file
//              inverting the order of the elements.

String[] linesIn  = loadStrings("data/listIn.txt"); // Reading input file to a String[]
String[] linesOut = new String[linesIn.length];     // Defining and memory allocation for a
                                                    // String[] to be saved into the output file
                                                    
for (int i = 0 ; i < linesIn.length; i++){  
  linesOut[i]=linesIn[linesIn.length-1-i];          // Reading original lines and saving to de destination
                                                    // String[] in a reverse order
}

saveStrings("data/listOut.txt", linesOut);          // Saving output file

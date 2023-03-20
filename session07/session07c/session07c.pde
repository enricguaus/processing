// Author: Enric Guaus
// Date: 15/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Reading a .txt file with numbers (need conversion from String to Int)
//              with information related to:
//              - Sample rate in Hz (i.e. 44100Hz)
//              - Length in seconds (i.e. 5s)
//              - N of Channels (i.e. 2 for Stereo)
//              and compute the number of samples a .wav file may have.

String[] data = loadStrings("data/config.txt"); // Declare, initialize and read the file to an array of Strings.

int[] numbers = new int[data.length];      // Declare and initialize the integer array "numbers" to store read data.
int nSamples  = 0;                         // Declare and initialize "nSamples".

for (int i=0; i<data.length; i++) {
  numbers[i]=int(data[i]);  // Copy the original String[] data into the 
}                           // new int[] array.

nSamples = numbers[0]*numbers[1]*numbers[2]; // Compute the number of samples
println("Number of samples= " + nSamples);   // Print to commandline

// Author: Enric Guaus
// Date: 04/03/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Reading a .txt file with numbers (need conversion from String to Int)
// Concepts: Reading a .txt file with information of:
//           - Sample rate in Hz (i.e. 44100)
//           - Length in seconds (i.e. 5)
//           - N of Channels (i.e. 2 for Stereo)
//           and compute the number of samples a .wav file may have.

String[] data = loadStrings("header.txt");
int[] numbers = new int[data.length];
int nSamples  = 0;

for (int i=0; i<data.length; i++) {
  numbers[i]=int(data[i]);  // Copy the original String[] data into the 
}                           // new int[] array.

nSamples = numbers[0]*numbers[1]*numbers[2]; // Compute the number of samples
println("Number of samples= " + nSamples);

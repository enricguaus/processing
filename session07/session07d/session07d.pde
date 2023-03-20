// Author: Enric Guaus
// Date: 15/03/2023
// Course: Tècniques de programació informàtica I
//         Escola Superior de Música de Catalunya
// Description: Reading a .txt file with text and numbers (need conversion from String to Int)
//              with information related to:
//              - Sample rate in Hz (i.e. 44100Hz)
//              - Length in seconds (i.e. 5s)
//              - Frequency of the signal (i.e. 440Hz)
//              - Output filename (i.e. signal.txt)
//              Synthesize a MONO sinusoidal signal
//              Save the result in a 

String[] lines = loadStrings("data/config.txt"); // Declare, initialize and read the file to an array of Strings.

int sr=0;            // Declare and initialize global variables.
int dur=0;
int freq=0;
int nSamples=0;
String outFileName;

float[] signal;      // Declare "signal", the float array where the signal will be stored.


sr          = int(lines[0]);     // As we know exactly the format of the header file,
dur         = int(lines[1]);     // we can read the lines one by one and assign to the
freq        = int(lines[2]);     // corresponding variables.
outFileName = lines[3];          // This is text, so, no conversion to int() is required.

nSamples = sr*dur;               // Compute the number of samples for "signal"
signal = new float[nSamples];    // Memory allocation for "signal"

for(int i=0;i<nSamples;i++){
  signal[i]=sin(2*PI*freq*i/sr); // Compute the signal and store to "signal"
}

saveStrings(outFileName, str(signal)); // Save signal to output file

// Author: Enric Guaus
// Date: 01/04/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Noise generation
// Concepts: - Creating the noise
//           - Types of noise
//           - patch and unpatch

// This example is inspired by the Minim official documentation:
// http://code.compartmental.net/minim/noise_class_noise.html

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
Noise       signal;  // This is the object that will generate the sound
AudioOutput out;     // This object is the output (NEW! no required with the audioPlayer!)

void setup(){
  size(512, 200);
  minim = new Minim(this);
  out = minim.getLineOut();                        // Init out
  signal = new Noise( 0.5f, Noise.Tint.WHITE );    // Init audio signal
  signal.patch(out);                             // Patching process
}

void draw(){
  background(0);
  stroke(255);
  strokeWeight(1);
  // draw the waveform of the output
  for(int i = 0; i < out.bufferSize() - 1; i++){
    line( i, 50  - out.left.get(i)*50,  i+1, 50  - out.left.get(i+1)*50 );
    line( i, 150 - out.right.get(i)*50, i+1, 150 - out.right.get(i+1)*50 );
  }
}
// More code below (+20 lines)...



















//void mouseMoved(){ // Control freq and amplitude through the mouse:
//  float amp = map( mouseY, 0, height, 1, 0 );
//  signal.setAmplitude( amp ); 
//}

// CAN'T DO IT!!!! WTF!!! Noise has no setAmplitude() method!

// More code below (+20 lines)...



















void keyPressed(){ 
  // Changing the waveform:
  switch( key ){
    case '1': 
      signal.setTint( Noise.Tint.WHITE );
      break;
    case '2':
      signal.setTint( Noise.Tint.PINK );
      break;
    case '3':
      signal.setTint( Noise.Tint.RED );
      break;
    default: break; 
  }
}

// Author: Enric Guaus
// Date: 01/04/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Waveform synthesis
// Concepts: - The concept: how to build it
//           - Waveform (from Mouse)
//           - Attributes (amplitude, frequency...)
//           - Basic virtual keyword

// This example is inspired by the Minim official documentation:
// http://code.compartmental.net/minim/oscil_class_oscil.html

import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
Oscil       wave;   // This is the object that will generate the sound
AudioOutput out;    // This object is the output (NEW! no required with the audioPlayer!)

void setup(){
  size(512, 200);
  minim = new Minim(this);
  out = minim.getLineOut();                     // Init out
  wave = new Oscil( 440, 0.5f, Waves.SINE );    // Init audio signal
  wave.patch( out );                            // Patching process
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
  // draw the waveform we are using in the oscillator
  stroke( 128, 0, 0 );
  strokeWeight(4);
  for( int i = 0; i < width-1; ++i ){
    point( i, height/2 - (height*0.49) * wave.getWaveform().value( (float)i / width ) );
  }
}
// More code below (+20 lines)...



















void mouseMoved(){ // Control freq and amplitude through the mouse:
  float amp = map( mouseY, 0, height, 1, 0 );
  wave.setAmplitude( amp );
  
  float freq = map( mouseX, 0, width, 110, 880 );
  wave.setFrequency( freq );
}
// More code below (+20 lines)...



















void keyPressed(){ 
  // Changing the waveform:
  switch( key ){
    case '1': 
      wave.setWaveform( Waves.SINE );
      break;
    case '2':
      wave.setWaveform( Waves.TRIANGLE );
      break;
    case '3':
      wave.setWaveform( Waves.SAW );
      break;
    case '4':
      wave.setWaveform( Waves.SQUARE );
      break;
    case '5':
      wave.setWaveform( Waves.QUARTERPULSE );
      break;
    default: break; 
  }
// More code below (+20 lines)...
  
  
  
  
  
  
  
  
  
  
  
  

  
  
  
  
  
  
  switch( key ){
    case 'a': 
      wave.setFrequency(Frequency.ofPitch("A4"));
      break;
    case 's':
      wave.setFrequency(Frequency.ofPitch("B4"));
      break;
    case 'd':
      wave.setFrequency(Frequency.ofPitch("C5"));
      break;
    case 'f':
      wave.setFrequency(Frequency.ofPitch("D5"));
      break;
    case 'g':
      wave.setFrequency(Frequency.ofPitch("E5"));
      break;
    case 'h':
      wave.setFrequency(Frequency.ofPitch("F5"));
      break;
    case 'j':
      wave.setFrequency(Frequency.ofPitch("G5"));
      break;
    default: break; 
  }
}

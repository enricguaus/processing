// Author: Enric Guaus
// Date: 01/04/2020
// Course: Tècniques de programació informàtica I (ESMUC)
// Description: Moog filter
// Concepts: - Creating the noise
//           - Creating the filter
//           - Filter parameters
//           - patch and unpatch

// This example is inspired by the Minim official documentation:
// http://code.compartmental.net/minim/moogfilter_class_moogfilter.html


   
import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
Noise       signal;  // This is the object that will generate the sound
MoogFilter  moog;    // This is the filter
AudioOutput out;     // This object is the output (NEW! no required with the audioPlayer!)

boolean filtActive=true; 

void setup(){
  size(512, 200);
  minim = new Minim(this);
  out = minim.getLineOut();                        // Init out
  signal = new Noise( 0.5f, Noise.Tint.WHITE );    // Init audio signal
  moog   = new MoogFilter( 1200, 0.5 );            // Init filter
  signal.patch(moog).patch(out);                   // Patching process
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



















void mouseMoved(){
  float freq = constrain( map( mouseX, 0, width, 200, 12000 ), 200, 12000 );
  moog.frequency.setLastValue( freq );

  float rez  = constrain( map( mouseY, height, 0, 0, 1 ), 0, 1 );
  moog.resonance.setLastValue( rez  );
}
// More code below (+20 lines)...



















void keyPressed(){
  if ( key == '1' ) moog.type = MoogFilter.Type.LP;
  if ( key == '2' ) moog.type = MoogFilter.Type.HP;
  if ( key == '3' ) moog.type = MoogFilter.Type.BP;
  // More code below (+20 lines)...



















  if ( key == ' ' ){
    if(filtActive){
      moog.unpatch(out);
      signal.unpatch(moog);
      signal.patch(out);
      filtActive=false;
    }else{
      signal.unpatch(out);
      signal.patch(moog).patch(out);
      filtActive=true;
    }
  }

}

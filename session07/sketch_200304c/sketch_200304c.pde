// Always mono
String[] lines = loadStrings("list.txt");
float[] signal;

int sr=0;
int dur=0;
int freq=0;
int nSamples=0;

sr   =int(lines[0]);
dur  =int(lines[1]);
freq =int(lines[2]);

nSamples = sr*dur;
signal = new float[nSamples];

for(int i=0;i<nSamples;i++){
  signal[i]=sin(2*PI*freq*i/sr);
}

saveStrings("data/signal.txt", str(signal));
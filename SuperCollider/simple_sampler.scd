/*
* Ejemplo simple de sampler


*/

s.boot; //Server
a = Buffer.read(s, "/Users/hordia/git/apicultor/data/1194.wav");
a.play;

//En windows usar \\ por cada \ del path
//a.free;

//////////////////////////////////////////////////////////
// Play sample
//////////////////////////////////////////////////////////
//play synth (trigger)
SynthDef(\playBufMono, {| out = 0, bufnum = 0, vol=1, rate = 1 |  var scaledRate, player;
scaledRate = rate * BufRateScale.kr(bufnum);  player = PlayBuf.ar(1, bufnum,scaledRate, doneAction:2);  Out.ar(out, vol * player).dup }).add;

x = Synth(\playBufMono, [\bufnum, a]);
x.set(\vol, 0);
x.set(\vol, 0.5);
x.set(\vol, 1);


x = Synth(\playBufMono, [\bufnum, a, \rate, 0.5]);
//x.set(\rate, 0.5);

//////////////////////////////////////////////////////////
// Loop sample
//////////////////////////////////////////////////////////
//play synth (loop)
SynthDef(\playBufMonoLoop, {| out = 0, bufnum = 0, vol=1, rate = 1 |  var scaledRate, player;
scaledRate = rate * BufRateScale.kr(bufnum);  player = PlayBuf.ar(1, bufnum,scaledRate, loop:1, doneAction:2);  Out.ar(out, vol * player).dup }).add;

y = Synth(\playBufMonoLoop, [\bufnum, a]);

y.set(\vol, 0); //modifica el volumen rango 0..1
y.set(\vol, 1);
y.set(\vol, 4);

y.free;

s.quit;
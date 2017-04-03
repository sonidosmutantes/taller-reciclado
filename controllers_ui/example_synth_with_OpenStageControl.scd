// osc tone ssynth ADSR, gate, detune

s.boot; //start the server
//s.quit; // quit the server
NetAddr.langPort; //OSC
NetAddr.localAddr; //localhost


OSCFunc.trace //ver todos los mensajes
OSCFunc.trace(false); // Turn posting off

/*
So I'm gonna quickly contstruct a SynthDef. An adsr envelope will control the amplitude of the sound, and the gate will be closed by default. The source of the sound will come from Blip.ar, which generates harmonic partials. I'll set a fundamental frequency, and to create a detuning feature, I'll multiply the frequency by a slow moving LFNoise1, ranging between negative and positive detune values. I'm envisioning detune as a number of semitones, so I'll use midiratio to make the output values suitable for frequency scaling. I also want to add a second argument to Blip for the number of harmonic partials to generate. I'm going to multichannel expand the noise generator, which means the enclosing Blip UGen is expanded to an array of 16 Blip generators each with a uniquely meandering frequency.

URL original (configurado para TouchOSC, app paga): "https://github.com/zeffii/Supercollider3_tutorials_code/blob/master/full video scripts/11_script.scd"
*/
SynthDef.new(\tone, {
	arg freq=40, nharm=12, detune=0.2, gate=0, pan=0, amp=1, out=0;
	var sig, env;
	env = EnvGen.kr(Env.adsr(0.05,0.1,0.5,3), gate);
	sig = Blip.ar(
		freq * LFNoise1.kr(0.2!16).bipolar(detune).midiratio,
		nharm
	);
    sig = sig * LFNoise1.kr(0.5!16).exprange(0.1,1);
	sig = Splay.ar(sig);
	sig = Balance2.ar(sig[0], sig[1], pan);
	sig = sig * env * amp;
	Out.ar(out, sig);
}).add;

//Let's test it to make sure everything's working
t = Synth.new(\tone, [\gate, 1])
//t.free;

//default values
t.set(\freq, 500)
t.set(\pan, 0.0)
t.set(\nharm, 90)
t.set(\detune, 0.34)
t.set(\amp, 1)
t.set(\gate, 0) //off
t.set(\gate, 1) //on

~maxvolume = 3;

// Configurado para synth.js de Open Stage Control
(

OSCdef.new(
	\toggle1,
	{
		arg msg;
		t.set(\gate, msg[1]);
	},
	'/gate',
);

OSCdef.new(
	\freq1,
	{
		arg msg;
		t.set(\freq, msg[1].linexp(0,1,20,400));
	},
	'/freq',
);

OSCdef.new(
	\num_harmonics,
	{
		arg msg;
		t.set(\nharm, msg[1]);
		//t.set(\nharm, msg[1].linlin(0,1,1,50));
	},
	'/nharm',
);

OSCdef.new(
	\volume,
	{
		arg msg;
		//t.set(\amp, msg[1].linexp(0,1,0.005,~maxvolume));
		t.set(\amp, msg[1]);
	},
	'/volume',
);
OSCdef.new(
	\pan,
	{
		arg msg;
		t.set(\pan, msg[1]);
		//t.set(\pan, msg[1].linlin(0,1,-1,1)); //osc 0..1
		//t.set(\pan, msg[1].linlin(0,127,-1,1)); //midi
		//msg[1].postln;
	},
	'/pan',
);
OSCdef.new(
	\detune,
	{
		arg msg;
		t.set(\detune, msg[1].linexp(0,1,0.01,12));
	},
	'/detune',
);
)

// Fuente: https://github.com/sonidosmutantes/apicultor
// Dependencia: curl

~ip = "127.0.0.1"; // localhost or WebService IP
~tmp_path = "/tmp";
~samples_path = "../apicultor/samples" //set your download path

m = 15; //Length of sound list

//Get a new sample file from APICultor (HFC < 1 )
format("curl http://%:5000/search/mir/samples/HFC/lessthan/1000/% -o %/desc.tmp", ~ip,m,~tmp_path).unixCmd;

f = FileReader.read(~tmp_path++"/desc.tmp".standardizePath); //array
v = f.at(m.rand)[0]; //select a random value from array (0..10 range)
v.postln(); //selected file


//TODO: download file through API
v = (~samples_path++v.replace("./samples/","/")).replace(" ",""); //trim spaces and ./samples
~buf = Buffer.read(s, v ); // new buffer A

~buf.play

////////////////////////////
// Other calls
////////////////////////////

//Search MIR desc greater than (SAMPLES) HFC>40 / 5 valores
format("curl http://%:5000/search/mir/samples/HFC/greaterthan/40000/% -o %/desc.tmp", ~ip,m,~tmp_path).unixCmd;

//duration <1
format("curl http://%:5000/search/mir/samples/duration/lessthan/1000/% -o %/desc.tmp", ~ip,m,~tmp_path).unixCmd;

//duration >2s
format("curl http://%:5000/search/mir/samples/duration/greaterthan/2000/% -o %/desc.tmp", ~ip,m,~tmp_path).unixCmd;


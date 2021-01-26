var audioContext   = null;
var freqList       = null;
var oscList        = null;
var masterGainNode = null;
var sine           = null;
var cosine         = null;
var waveform       = null;

function initializeWebAudioAPI() {
	audioContext   = new (window.AudioContext || window.webkitAudioContext);
	freqList       = getFrequencyList();
	oscList        = [];
	
	masterGainNode = audioContext.createGain();
	masterGainNode.connect(audioContext.destination);
	masterGainNode.gain.value = 0.8;

	sine     = new Float32Array([0, 0, 1, 0, 1]);
	cosine   = new Float32Array(sine.length);
	waveform = audioContext.createPeriodicWave(cosine, sine);

	createHighResTimer();
}

function playTone(frequency) {
  var osc = audioContext.createOscillator();
  
  osc.connect(masterGainNode);
  osc.type = "sawtooth";
  osc.frequency.value = frequency;
  osc.start();
 
  return osc;
}

function stopAllTones() {
	console.log("stop all");
	for(var key=0; key<36; key++) {
		if(keysList[key]) {
			keysList[key] = false;
			noteReleased(key);
			paint(key, document.getElementById(key.toString()).getAttribute('class'));
		}
	}
}

function notePressed(noteId) {
	oscList[noteId] = playTone(freqList[noteId]);
}

function noteReleased(noteId) {
	oscList[noteId].stop();
	oscList[noteId] = null;
}

function getFrequencyList() {
	var freq = [];
	freq.push(32.703195662574829);			// C
	freq.push(34.647828872109012);			// C#
	freq.push(36.708095989675945);			// D
	freq.push(38.890872965260113);			// D#
	freq.push(41.203444614108741);			// E
	freq.push(43.653528929125485);			// F
	freq.push(46.249302838954299);			// F#
	freq.push(48.999429497718661);			// G
	freq.push(51.913087197493142);			// G#
	freq.push(55.000000000000000);			// A
	freq.push(58.270470189761239);			// A#
	freq.push(61.735412657015513);			// B
	freq.push(65.406391325149658);			// C
	freq.push(69.295657744218024);			// C#
	freq.push(73.416191979351890);			// D
	freq.push(77.781745930520227);			// D#
	freq.push(82.406889228217482);			// E
	freq.push(87.307057858250971);			// F
	freq.push(92.498605677908599);			// F#
	freq.push(97.998858995437323);			// G
	freq.push(103.826174394986284);			// G#
	freq.push(110.000000000000000);			// A
	freq.push(116.540940379522479);			// A#
	freq.push(123.470825314031027);			// B
	freq.push(130.812782650299317);			// C
	freq.push(138.591315488436048);			// C#
	freq.push(146.832383958703780);			// D
	freq.push(155.563491861040455);			// D#
	freq.push(164.813778456434964);			// E
	freq.push(174.614115716501942);			// F
	freq.push(184.997211355817199);			// F#
	freq.push(195.997717990874647);			// G
	freq.push(207.652348789972569);			// G#
	freq.push(220.000000000000000);			// A
	freq.push(233.081880759044958);			// A#
	freq.push(246.941650628062055);			// B
	freq.push(261.625565300598634);			// C
	freq.push(277.182630976872096);			// C#
	freq.push(293.664767917407560);			// D
	freq.push(311.126983722080910);			// D#
	freq.push(329.627556912869929);			// E
	freq.push(349.228231433003884);			// F
	freq.push(369.994422711634398);			// F#
	freq.push(391.995435981749294);			// G
	freq.push(415.304697579945138);			// G#
	freq.push(440.000000000000000);			// A
	freq.push(466.163761518089916);			// A#
	freq.push(493.883301256124111);			// B
	freq.push(523.251130601197269);			// C
	freq.push(554.365261953744192);			// C#
	freq.push(587.329535834815120);			// D
	freq.push(622.253967444161821);			// D#
	freq.push(659.255113825739859);			// E
	freq.push(698.456462866007768);			// F
	freq.push(739.988845423268797);			// F#
	freq.push(783.990871963498588);			// G
	freq.push(830.609395159890277);			// G#
	freq.push(880.000000000000000);			// A
	freq.push(932.327523036179832);			// A#
	freq.push(987.766602512248223);			// B
	return freq;
}

function changeVolume(event) {
	masterGainNode.gain.value = volumeControl.value;
}
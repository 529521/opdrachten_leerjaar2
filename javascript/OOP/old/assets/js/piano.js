var keysList      = null;
var keysValid     = null;
var currentOctave = null;


function initializePiano() {
	keysList = [];
	keysValid = [65,87,83,69,68,70,84,71,89,72,85,74,75];

	var piano  = document.getElementsByTagName('ul')[0];
	piano.addEventListener('mousedown', onMouseDown, false);
	piano.addEventListener('mouseup',   onMouseUp,   false);
	piano.addEventListener('mouseover', onMouseOver, false);
	piano.addEventListener('mouseout',  onMouseOut,  false);

	piano.addEventListener('dragstart', onDragStart, false);

	document.addEventListener('keydown', onKeyDown, false);
	document.addEventListener('keyup',   onKeyUp,   false);
}

function paint(key, color) {
	var pos = 1+(key*2);
	var el  = document.getElementsByTagName('ul')[0].childNodes[pos];
	el.style.backgroundColor = color;
}

function onDragStart(event) {
	event.preventDefault();
    event.stopPropagation();
    console.log('dragstart');
}

function onKeyDown(event) {
	console.log('keydown');
	var key = event.keyCode;
	if(isValidKey(key)) {
		key = keysValid.indexOf(key);
		if(!keysList[key]) {
			keysList[key] = true;
			notePressed(key);
			paint(key, "red");
		}
	}
}

function onKeyUp(event) {
	console.log('keyup');
	var key = event.keyCode;
	if(isValidKey(key)) {
		key = keysValid.indexOf(key);
		if(keysList[key]) {
			keysList[key] = false;
			noteReleased(key);
			paint(key, document.getElementById(key.toString()).getAttribute('class'));
		}
	}
}

function isValidKey(key) {
	return (keysValid.indexOf(key)===-1) ? false : true; 
}

function onMouseDown(event) {
	//console.log('mousedown');
	var key = parseInt( event.target.getAttribute('id') );
	if(!keysList[key]) {
		keysList[key] = true;
		notePressed(key);
		paint(key, "red");
	}
	currentMouseDown = true;
}

function onMouseUp(event) {
	//console.log('mouseup');
	var key = parseInt( event.target.getAttribute('id') );
	if(keysList[key]) {
		keysList[key] = false;
		noteReleased(key); 
		paint(key, document.getElementById(key.toString()).getAttribute('class'));
	}
	currentMouseDown = false;
}

function onMouseOver() {
	//console.log('mouseover');
	if(currentMouseDown) {
		var prev = parseInt( event.relatedTarget.getAttribute('id') );
		if(keysList[prev]) {
			keysList[prev] = false;
			noteReleased(prev);
			paint(prev, document.getElementById(prev.toString()).getAttribute('class'));
		}
		var next = parseInt( event.target.getAttribute('id') );
		if(!keysList[next]) {
			keysList[next] = true;
			notePressed(next);
			paint(next, "red");
		}
	}
}

function onMouseOut(event) {
	//console.log('mouseout');
	var key = event.relatedTarget.getAttribute('id');
	if(key === 'container') {
		stopAllTones();
		currentMouseDown = false;
		console.log('SILENCE ALL!');
	}
}
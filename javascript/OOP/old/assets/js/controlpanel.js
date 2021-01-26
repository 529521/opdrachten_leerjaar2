
function initializeControlPanel() {
	
	initTranspose();
	initPitchbender();
}

function initTranspose() {
	//console.log( document.forms[0].octave.value );
}

function initPitchbender() {
	var pb = document.getElementById('pb');

	pb.addEventListener('input',     onPitchbenderInput,     false);
	pb.addEventListener('dragstart', onPitchbenderDragstart, false);
	pb.addEventListener('dragend',   onPitchbenderDragend,   false);
}

function onPitchbenderInput(event) {
	console.log(event.value);
}

function onPitchbenderDragstart(event) {
	console.log('dragstart');
}

function onPitchbenderDragend(event) {
	console.log('dragend');
}

var currentMouseDown = null;

function initialize() {
	initializeWebAudioAPI();
	initializeControlPanel();
	initializePiano();
}

function createHighResTimer() {
	if (window.performance.now) {
	    console.log("Using high performance timer");
	    getTimestamp = function() { return window.performance.now(); };
	} else {
	    if (window.performance.webkitNow) {
	        console.log("Using webkit high performance timer");
	        getTimestamp = function() { return window.performance.webkitNow(); };
	    } else {
	        console.log("Using low performance timer");
	        getTimestamp = function() { return new Date().getTime(); };
	    }
	}
}





function createLoop() {
	var start = getTimestamp();

}



function tick() {

}

initialize();
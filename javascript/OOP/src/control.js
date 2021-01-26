export class Controlpanel {
    constructor() {
        console.log("contructor.controlpanel");
        this.initializeControlPanel(); // = Main.initializeControlPanel();


    }
    initializeControlPanel() {

        this.initTranspose();
        this.initPitchbender();
    }
    initTranspose() {
        console.log('inittranpose log');
    }
    initPitchbender() {
        var pb = document.getElementById('pb');

        pb.addEventListener('input', this.onPitchbenderInput, false);
        pb.addEventListener('dragstart', this.onPitchbenderDragstart, false);
        pb.addEventListener('dragend', this.onPitchbenderDragend, false);
    }
    onPitchbenderInput(event) {
        console.log(event.value);
    }
    onPitchbenderDragstart(event) {
        console.log('dragstart');
    }
    onPitchbenderDragend(event) {
        console.log('dragend');
    }
};
// MAIN //
export class Main {


    constructor() {
        var currentMouseDown = null;
        this.initialize();
    }

    initialize() {
        // MOET NOG VAN CONTROLPANEL EXPORTEN IDK HOE
        //this.initializeControlPanel();
        // CONTROLPANEL

        //  this.initializeWebAudioAPI();
        //    this.initializePiano();
    }
    createHighResTimer() {
        if (window.performance.now) {
            console.log("Using high performance timer");
            getTimestamp = function () {
                return window.performance.now();
            };
        } else {
            if (window.performance.webkitNow) {
                console.log("Using webkit high performance timer");
                getTimestamp = function () {
                    return window.performance.webkitNow();
                };
            } else {
                console.log("Using low performance timer");
                getTimestamp = function () {
                    return new Date().getTime();
                };
            }
        }
    }


}
//MAIN ///
export class Piano {
    constructor() {
        var keysList = null;
        var keysValid = null;
        var currentOctave = null;
        this.initializePiano();
    }
    initializePiano() {
        this.keysList = [];
        this.keysValid = [65, 87, 83, 69, 68, 70, 84, 71, 89, 72, 85, 74, 75];

        var piano = document.getElementsByTagName('ul')[0];
        piano.addEventListener('mousedown', this.onMouseDown, false);
        piano.addEventListener('mouseup', this.onMouseUp, false);
        piano.addEventListener('mouseover', this.onMouseOver, false);
        piano.addEventListener('mouseout', this.onMouseOut, false);

        piano.addEventListener('dragstart', this.onDragStart, false);

        document.addEventListener('keydown', this.onKeyDown, false);
        document.addEventListener('keyup', this.onKeyUp, false);
    }
    paint(key, color) {
        var pos = 1 + (key * 2);
        var el = document.getElementsByTagName('ul')[0].childNodes[pos];
        el.style.backgroundColor = color;
    }
    onDragStart(event) {
        event.preventDefault();
        event.stopPropagation();
        console.log('dragstart');
    }
    onKeyDown(event) {
        console.log('keydown');
        var key = event.keyCode;
        if (isValidKey(key)) {
            key = keysValid.indexOf(key);
            if (!keysList[key]) {
                keysList[key] = true;
                notePressed(key);
                paint(key, "red");
            }
        }else{
            console.log("werkt niet");
        }
    }
    onKeyUp(event) {
        console.log('keyup');
        var key = event.keyCode;
        if (Piano.isValidKey(key)) {
            key = keysValid.indexOf(key);
            if (keysList[key]) {
                keysList[key] = false;
                noteReleased(key);
                paint(key, document.getElementById(key.toString()).getAttribute('class'));
            }
        }
    }
   isValidKey(key) {
        return (keysValid.indexOf(key) === -1) ? false : true;
    };

}
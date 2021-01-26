function Taak1() {
    document.getElementById("taak1").style.display = "block";
    document.getElementById("taak2").style.display = "none";
    document.getElementById("taak3").style.display = "none";
    document.getElementById("uitleg").style.display = "none";
    document.getElementById("klaar").style.display = "none";


}

function Taak2() {
    document.getElementById("taak1").style.display = "none";
    document.getElementById("taak2").style.display = "block";
    document.getElementById("taak3").style.display = "none";
    document.getElementById("uitleg").style.display = "none";
    document.getElementById("klaar").style.display = "none";


}

function Taak3() {
    document.getElementById("taak1").style.display = "none";
    document.getElementById("taak2").style.display = "none";
    document.getElementById("taak3").style.display = "block";
    document.getElementById("uitleg").style.display = "none";
    document.getElementById("klaar").style.display = "none";


}

function Uitleg() {
    document.getElementById("taak1").style.display = "none";
    document.getElementById("taak2").style.display = "none";
    document.getElementById("taak3").style.display = "none";
    document.getElementById("uitleg").style.display = "block";
    document.getElementById("klaar").style.display = "none";


}
function Klaar() {
    document.getElementById("taak1").style.display = "none";
    document.getElementById("taak2").style.display = "none";
    document.getElementById("taak3").style.display = "none";
    document.getElementById("uitleg").style.display = "none";
    document.getElementById("klaar").style.display = "block";


}


function Start() {
    document.getElementById("taak1").style.display = "none";
    document.getElementById("taak2").style.display = "none";
    document.getElementById("taak3").style.display = "none";
    document.getElementById("uitleg").style.display = "block";
    document.getElementById("klaar").style.display = "none";


}
// SideNav Button Initialization
$(".button-collapse").sideNav({
    breakpoint: 1200
  });
  // SideNav Scrollbar Initialization
  var sideNavScrollbar = document.querySelector('.custom-scrollbar');
  var ps = new PerfectScrollbar(sideNavScrollbar);
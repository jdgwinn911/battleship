
var btn = document.getElementById("bBtn");
var span = document.getElementsByClassName("closeIt")[0];

 function showModal(){
    var modal = document.getElementById("bModal");
    modal.style.display = "block";
}

 function onModal(){
    var modal = document.getElementById("bModal");
    var span = document.getElementsByClassName("closeIt")[0];
    modal.style.display = "none";
}

 function winMod(event){
    var modal = document.getElementById("bModal");
    if (event.target == modal){
      modal.style.display = "none";
    }
}

function removeElement() {
    var num = document.getElementById("ship_num");
    if (num.value >= 4){
        var elemen = document.getElementById("err");
        var elementt = document.getElementById("HV");
        elemen.parentNode.removeChild(elemen);
        elementt.parentNode.removeChild(elementt);
        var element = document.getElementById("pos");
        element.parentNode.removeChild(element);
    }
}



function stopWatch() {
  
    var seconds = 00; 
    var tens = 00; 
    var appendTens = document.getElementById("tens")
    var appendSeconds = document.getElementById("seconds")
    var buttonStart = document.getElementById('start');
    var buttonStop = document.getElementById('stop');
    var buttonReset = document.getElementById('reset');
    var Interval ;
  
    buttonStart.onclick = function() {
      
       clearInterval(Interval);
       Interval = setInterval(startTimer, 10);
    }
    
      buttonStop.onclick = function() {
         clearInterval(Interval);
    }
    
  
    buttonReset.onclick = function() {
       clearInterval(Interval);
      tens = "00";
        seconds = "00";
      appendTens.innerHTML = tens;
        appendSeconds.innerHTML = seconds;
    }
    
     
    
    function startTimer () {
      tens++; 
      
      if(tens < 9){
        appendTens.innerHTML = "0" + tens;
      }
      
      if (tens > 9){
        appendTens.innerHTML = tens;
        
      } 
      
      if (tens > 99) {
        console.log("seconds");
        seconds++;
        appendSeconds.innerHTML = "0" + seconds;
        tens = 0;
        appendTens.innerHTML = "0" + 0;
      }
      
      if (seconds > 9){
        appendSeconds.innerHTML = seconds;
      }
    
    }
    
  
  }

// function clockTikTok(seconds, minutes, hours){
//     seconds++;
//     if (seconds >= 60) {
//         seconds = 0;
//         minutes++;
//         if (minutes >= 60) {
//             minutes = 0;
//             hours++;
//         }
//     }
// }

// function setTimer(){
//     var screen = document.getElementById("stopwatchTime"),
// }



// var h1 = document.getElementsByTagName('h1')[0],
// start = document.getElementById('start'),
// stop = document.getElementById('stop'),
// clear = document.getElementById('clear'),
// seconds = 0, minutes = 0, hours = 0,
// t;


// h1.textContent = (hours ? (hours > 9 ? hours : "0" + hours) : "00") + ":" + (minutes ? (minutes > 9 ? minutes : "0" + minutes) : "00") + ":" + (seconds > 9 ? seconds : "0" + seconds);

// timer();
// }
// function timer() {
// t = setTimeout(add, 1000);
// }
// timer();

// start.setAttribute('onlick', 'timer()');
// /* Start button */
// start.click(timer());

// /* Stop button */
// stop.onclick = function() {
// clearTimeout(t);
// }

// /* Clear button */
// clear.onclick = function() {
// h1.textContent = "00:00:00";
// seconds = 0; minutes = 0; hours = 0;
// }

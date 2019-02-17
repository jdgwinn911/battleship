
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

  var btn2 = document.getElementById("bBtn2");
  var span2 = document.getElementsByClassName("closeIt2")[0];

 function showModall(){
    var modal = document.getElementById("bModal2");
    modal.style.display = "block";
}

 function onModall(){
    var modal = document.getElementById("bModal2");
    var span2 = document.getElementsByClassName("closeIt2")[0];
    modal.style.display = "none";
}

 function winModd(event){
    var modal = document.getElementById("bModal2");
    if (event.target == modal){
      modal.style.display = "none";
    }
}

function changeText(){
  var numb = document.getElementById("ship_num");
  var text = document.getElementById("texty");
  if(numb.value == 5){
      text.textContent = 'Fire when ready!';
  }

}

// function endGame(){
//   var table = document.getElementById("mytable");
//   var hitter = document.getElementById("hitter");
//   if(hitter == "You Lose"){
//     table.parentNode.removeChild(table);

//   }
// }



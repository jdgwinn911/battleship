
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


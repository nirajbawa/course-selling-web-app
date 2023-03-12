//menu open function



var wit = 0;

function menuopen(){
    document.getElementById("mobilemenu").style.display = "block"
    document.getElementById("log").style.display = "none"
    
var clar = setInterval(men,90)




function men(){
    wit+=30
    document.getElementById("mobilemenu").style.width = wit +"px"


    if (wit==240) {
        clearInterval(clar)
        document.getElementById("hedim").style.display="block"
        document.getElementById("headimg").style.display="block"
        document.getElementById("ma").style.display="block"
        document.getElementById("clo").style.display="block"
    }
  }
}



//menu clouse animation

function clouse(){

    wit = 0;

    var clar = setInterval(meno,90)

var vin=240


function meno(){
    vin-=30
    document.getElementById("mobilemenu").style.width = vin +"px"


    if (vin==0) {
        clearInterval(clar)
        document.getElementById("mobilemenu").style.display = "none"
        document.getElementById("log").style.display = "block"
    }

    
    else if(vin==180){
    document.getElementById("hedim").style.display="none"
    document.getElementById("headimg").style.display="none"
    document.getElementById("ma").style.display="none"
    document.getElementById("clo").style.display="none"
  }
  
  }
}

// contact form submit massage



function alertmsg(){
    alert("your massage is submited.....")
}
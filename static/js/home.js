
    // h1 text animation


   var list = ["S","Su","Sup","Supe","Super","Super ","Super w","Super we","Super web"]

  var a =  setInterval(fun, 700)

   var i = -1

    function fun(){
        i= i+1
     
        document.getElementById("h1").innerText = list[i] 

        if (i==8) {
   
            i=0
            clearInterval(a)
        }    
        
}

fun();


// p animation

// best web solution in <br>cheap price

var tem = ["b","bes","best","best","best c","best co","best cou","best cour","best cours","best course","best course i","best course in","best course in c","best course in ch","best course che","best course in chea","best course in cheap","best course cheap p","best course in cheap pr","best course in cheap pri","best course in pric","best course in cheap price"]

var b =  setInterval(fuc, 200)
console.log(tem)


var t = -1

function fuc(){
t= t+1
   
    document.getElementById("p1").innerHTML= tem[t]

    if (t==21) {
        t=0
        clearInterval(b)
    }    
    
}

fuc();




// skill animations




function skiani(){
document.getElementById("dm").style.animation= "niraj5 1s ease-in 1 forwards"
document.getElementById("wd").style.animation= "niraj6 1s ease-in 1 forwards"
document.getElementById("bg").style.animation= "niraj7 1s ease-in 1 forwards"
document.getElementById("ve").style.animation= "niraj8 1s ease-in 1 forwards"
document.getElementById("gd").style.animation= "niraj9 1s ease-in 1 forwards"
document.getElementById("cw").style.animation= "niraj10 1s ease-in 1 forwards"
document.getElementById("of").style.animation= "niraj11 1s ease-in 1 forwards"
}



function re(){
    var inwidth = window.innerWidth

if(inwidth>=500){
    document.getElementById("dm").style.animation= "niraj5 1s ease-in 1 forwards"
    document.getElementById("wd").style.animation= "niraj6 1s ease-in 1 forwards"
    document.getElementById("bg").style.animation= "niraj7 1s ease-in 1 forwards"
    document.getElementById("ve").style.animation= "niraj8 1s ease-in 1 forwards"
    document.getElementById("gd").style.animation= "niraj9 1s ease-in 1 forwards"
    document.getElementById("cw").style.animation= "niraj10 1s ease-in 1 forwards"
    document.getElementById("of").style.animation= "niraj11 1s ease-in 1 forwards"
}

}



 // h1 text animation


 var list = ["c","co","cou","cour","cours","course"]

 var a =  setInterval(fun, 700)

   var i = -1

   function fun(){
       i= i+1
    
       document.getElementById("h21").innerText = list[i] 

       if (i==5) {
  
           i=0
           clearInterval(a)
       }    
       
}

fun();


// p animation

// all course made by ravindra gurao

var tem = ["a","al","all","all c","all co","all cou","all cour","all cours","all course","all course m","all course ma","all course mad","all course made","all course made b","all course made by","all course made by<br> r","all course made by<br> ra","all course made by<br> rav","all course made by<br> ravi","all course made by<br> ravin","all course made by<br> ravin","all course made by<br> ravind","all course made by<br> ravindr", "all course made by<br> ravindra", "all course made by<br> ravindra g", "all course made by<br> ravindra gu","all course made by<br> ravindra gur","all course made by<br> ravindra gura","all course made by<br> ravindra gurao"]

var b =  setInterval(fuc, 200)

console.log(tem)

var t = -1

function fuc(){
   t = t+1
  
   document.getElementById("p12").innerHTML= tem[t]

   if (t==28) {
       t=0
       clearInterval(b)
   }    
   
}

fuc();




    
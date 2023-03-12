//     // h1 text animation


    var lists = ["c","co","con","cont","conta","contac","contact"]

    var g =  setInterval(funn, 700)
  
     var o = -1
  
      function funn(){
          o= o+1
       
          document.getElementById("h1").innerText = lists[o] 
  
          if (o==6) {
     
              o=0
              clearInterval(g)
          }    
          
  }
  
  funn();
  
  
  // p animation
  
  // best web solution in <br>cheap price
  
  var tems = ["c","co","con","cont","conta","contac","contact","contact s","contact se","contact sec","contact sect","contact secti","contact sectio","contact section"]
  
  var s =  setInterval(fucs, 200)
  
  
  
  var f = -1
  
  function fucs(){
  f= f+1
     
      document.getElementById("p3").innerHTML= tems[f]
  
      if (f==13) {
          f=0
          clearInterval(s)
      }    
      
  }
  
  fucs();
  
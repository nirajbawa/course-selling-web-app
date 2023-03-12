
    // h1 text animation


    var list = ["p","pu","pub","publ","publi","public","public l","public l","public le","public lec","public lect","public lectu","public lectur","public lecture","public lectures"]

    var a =  setInterval(fun, 700)
  
     var i = -1
  
      function fun(){
          i= i+1
       
          document.getElementById("h1").innerText = list[i] 
  
          if (i==14) {
     
              i=0
              clearInterval(a)
          }    
          
  }
  
  fun();
  
  
  // p animation
  
  // best web solution in <br>cheap price
  
  var tem = ["f","fr","fre","free","free f","free fo","free for","free for a","free for all"]
  var b =  setInterval(fuc, 200)

  
  
  var t = -1
  
  function fuc(){
  t= t+1
     
      document.getElementById("p1").innerHTML= tem[t]
  
      if (t==8) {
          t=0
          clearInterval(b)
      }    
      
  }
  
  fuc();
  
  
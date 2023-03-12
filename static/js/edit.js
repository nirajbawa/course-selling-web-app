
function submsalert(){
    alert("your post is submit")
}


function editfuc(){
    document.getElementById("etoolbar").style.display="block"
    document.getElementById("resclose").style.display="block"
}

function editclose(){
    document.getElementById("etoolbar").style.display="none"
    document.getElementById("resclose").style.display="none"
}

function eupper(){
    document.getElementById("eatext").style.textTransform="uppercase"
}

function elower(){
    document.getElementById("eatext").style.textTransform="lowercase"
}

function capi(){
    document.getElementById("eatext").style.textTransform="capitalize"
}

function getfont(){
  var a =  document.getElementById("fontsize").value
  console.log(a)
  document.getElementById("eatext").style.fontSize= a + "px"
}

function efoni(){
    document.getElementById("eatext").style.fontStyle="italic"
}

function efobo(){
    document.getElementById("eatext").style.fontWeight="bold"
}

function efono(){
    document.getElementById("eatext").style.fontWeight="0%"
    document.getElementById("eatext").style.fontStyle="normal"
}

function ecen(){
    document.getElementById("eatext").style.textAlign="center"
}


function elef(){
    document.getElementById("eatext").style.textAlign="left"
}


function erig(){
    document.getElementById("eatext").style.textAlign="right"
}


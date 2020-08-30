var name = prompt("Enter your name to continue: ");
var hello="Hello, ";
document.getElementById("name").innerHTML = hello.fontcolor("red")+name.fontcolor("white");
function validateForm() {
    var x = document.forms["myForm"]["name"].value;
    var y = document.forms["myForm"]["email"].value;
    var z = document.forms["myForm"]["text"].value;
    if (x == "" || y=="" ||z=="" ) {
      alert("Check all fields are filled in form");
      return false;
    }
    else{
      alert("Hi "+x+"! Your Contact request has been sent successfully!!!Your message is "+z);
      return false;
    }

   
  }

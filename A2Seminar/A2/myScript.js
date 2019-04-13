function myFunc(){
  var fname = document.getElementById("fname").value
  var lname = document.getElementById("lname").value
  var email = document.getElementById("email").value

  if(fname.length < 2 || lname.length < 2 || (!email.includes("@")) || (!email.includes(".com"))){
    window.alert("Invalid credentials");
  }
  else{
    document.write("<h1>You are through</h1>");
  }
}

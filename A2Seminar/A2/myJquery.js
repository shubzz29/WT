$(document).ready(function(){
  $("#submit").click(function(){
    var fname = $("#fname").val();
    var lname = $("#lname").val();
    var email = $("#email").val();
    if(fname.length < 2){
      window.alert("First name is invalid");
    }
    else if(lname.length < 2){
      window.alert("Last name is invalid");
    }
    else if((!email.includes("@")) || (!email.includes(".com"))){
      window.alert("Email invalid");
    }
    else{
      document.write("<h1>Welcome " + fname + " " + lname + "</h1>");
    }
  })
})

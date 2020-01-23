function myFunction()
{
    var txt;
    if (confirm("Press a ok to Sign Up!")) 
    {
      txt = "Confirm!";
    } 
    else 
    {
      txt = "Cancel!";
    }
    document.getElementById("demo").innerHTML = txt;
}
function myFunction1() 
{
    alert("Are you sure you want to cancel!");
  }
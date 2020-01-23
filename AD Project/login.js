function myFunction()
{
    var txt;
    if (confirm("Press a ok to confirm!")) 
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
    var txt;
    if (confirm("Are you sure You want to Cancel!")) 
    {
      txt = "Yes!";
    } 
    else 
    {
      txt = "No!";
    }
    document.getElementById("demo").innerHTML = txt;
  }
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="AD_Project.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<script>
    function Myfunction() {
        var uname = document.getElementById('name');
        var Password = document.getElementById('password');
        if (uname.value == "" || Password.value == "") {
            alert("Email or password should not be blank");
        }
        else {
            prompt("You have successfully Login");
        }
    }
</script>
<style>
body 
{
	font-family: Arial, Helvetica, sans-serif;
	background-color:rgb(255, 206, 101);
}
*
{
	box-sizing: border-box;
}

input[type=text], input[type=password] 
{
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus 
{
  background-color: #ddd;
  outline: none;
}

hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

button 
{
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.cancelbtn 
{
  padding: 14px 20px;
  background-color:rgb(202, 131, 38);
}
.cancelbtn:hover
{
  background-color:#a54006; 
}
.signupbtn 
{
  background-color:#4CAF59;
}
.signupbtn:hover
{
  background-color:#008f07;
}
.cancelbtn
{
  width: 15%;
}
.clearfix::after 
{
  content: "";
  clear: both;
  display: table;
}


    @media screen and (max-width: 300px) {
        .cancelbtn, .signupbtn {
            width: 100%;
        }
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="container">
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
    <span id="message" runat="server"></span>
    <label for="email"><b>Full Name</b></label>
    <asp:TextBox ID="name" runat="server" placeholder="Enter Full Name"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your Name" ControlToValidate="name"></asp:RequiredFieldValidator><br />

    <label for="email"><b>Email</b></label>
    <asp:TextBox ID="email" runat="server" placeholder="Enter Email" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your Email" ControlToValidate="email"></asp:RequiredFieldValidator><br />

    <label for="psw"><b>Password</b></label>
    <asp:TextBox ID="password" TextMode="Password" runat="server" placeholder="Enter Password" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please fill your password" ControlToValidate="password"></asp:RequiredFieldValidator><br />    

    <label for="psw-repeat"><b>Confirm Password</b></label>
    <asp:TextBox ID="password1" TextMode="Password" runat="server" placeholder="Confirm your Password" ></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your Password Does not Match" ControlToCompare="password" ControlToValidate="password1"></asp:CompareValidator><br />
    
    <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"/> Remember me
    </label>
    
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

    <div class="clearfix">
        <asp:Button ID="submit" runat="server" Text="Submit" CssClass="signupbtn" Height="51px" Width="178px" OnClick="submit_Click" OnClientClick="return Myfunction();"/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [login]"></asp:SqlDataSource>
        <asp:Button ID="cancel" runat="server" Text="Clear" CssClass="cancelbtn"/>
    </div>
  </div>
        </div>
    </form>
</body>
</html>

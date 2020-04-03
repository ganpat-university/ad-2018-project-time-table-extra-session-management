<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="email.aspx.cs" Inherits="AD_Project.email" %>

<!DOCTYPE html>
<html>
<head>
<title></title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
/* Full-width input fields */
.textbox {
  margin-left:120px;
  width: 80%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
.button {
  background-color:rgb(255, 206, 101);
  color: black;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.8;
}

.button:hover {
  opacity: 1;
}

    /* Extra styles for the cancel button */
    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    /* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
body {
  background-color:rgb(255, 206, 101);
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

    .wrapper {
        display: flex;
        align-items: center;
        flex-direction: column;
        justify-content: center;
        width: 100%;
        min-height: 100%;
        padding: 20px;
    }

    #formContent {
        -webkit-border-radius: 10px 10px 10px 10px;
        border-radius: 10px 10px 10px 10px;
        background-color: rgb(163, 38, 33);
        padding: 30px;
        color: aliceblue;
        width: 90%;
        max-width: 100%;
        position: relative;
        padding: 0px;
        -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        text-align: center;
    }
    .back {
        background-color: rgb(163, 38, 33);
        border:none;
        font-size:25px;
        padding-left:0%;
        color:silver;
    }
</style>
</head>
<body>

<center><h1>E-mail Verification Page</h1></center>

  <form class="modal-content animate" id="form1" runat="server">
    <div class="wrapper">
    <div id="formContent">
    
    <div class="container">
      <asp:TextBox ID="text" runat="server" Visible="false" CssClass="back"></asp:TextBox><br />
      <b>E-mail Address</b>
      <asp:TextBox ID="emailid" TextMode="Email" runat="server" CssClass="textbox" placeholder="Enter Your E-mail ID"></asp:TextBox>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Silver" ErrorMessage="Username is required" ControlToValidate="emailid"></asp:RequiredFieldValidator><br />
      
      <asp:Button ID="Button" runat="server" Text="Send E-mail" CssClass="button" Font-Bold="true" OnClick="Button_Click"/>
        
    </div>
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
    </div>
  </form>

</body>
</html>

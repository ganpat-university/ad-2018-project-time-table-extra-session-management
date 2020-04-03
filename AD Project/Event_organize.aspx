<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Event_organize.aspx.cs" Inherits="AD_Project.Event_organize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<script>
    function myFunction() {
        document.getElementById("myEmail").multiple = true;
        document.getElementById("demo").innerHTML = "The email field now accept multiple values.";
    }
</script>
<head>
<style>
.left
{
    
    height:68%;
    width:50%;
    float: left;
}
.right
{
    height:68%;
    width:50%;
    float:right;
}

.time
{
    margin-left:67px;
}
body 
{
	font-family: Arial, Helvetica, sans-serif;
	background-color:rgb(255, 206, 101);
}
*
{
	box-sizing: border-box;
}
.fee {
    box-sizing = border-box;
    width: 70%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

.multiple {
    box-sizing = border-box;
    width: 20%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  font-display:block;
  background: wheat;
}
.multiple:hover {
    text-decoration:underline;
    background: #f1f1f1;
}
input[type=text],input[type=email]
{
  width: 70%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

hr
 {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

    select {
        width: 70%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    .submit {
        border-style: none;
        border-color: inherit;
        border-width: medium;
        background-color: #4CAF50;
        color: white;
        padding: 14px 20px;
        cursor: pointer;
        opacity: 0.9;
        margin-left: 30%;
        margin-right: 0;
        margin-top: 8px;
        margin-bottom: 8px;
    }
    .submit:hover {
        background-color: #008f07;
    }

    .bottom::after {
        content: "";
        clear: both;
        display: table;
    }

    @media screen and (max-width: 300px) {
        .cancelbtn, .submit {
            width: 100%;
        }
    }

</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h1>Event Organisation</h1>
                    <p>Please fill in this form to Organize An Event.</p>
                    <hr>
                <div class="left">
                    <label ><b>Event Name </b></label><br>
                    <asp:TextBox ID="eventname" runat="server" placeholder="Enter Event Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This field is required" ControlToValidate="eventname" ForeColor="red"></asp:RequiredFieldValidator><br>

                    <label ><b>Mail To</b></label><br>
                    <asp:TextBox ID="mailto" runat="server" placeholder="Enter Your E-Mail" TextMode="Email"></asp:TextBox><br />
                    <asp:TextBox ID="another" runat="server" placeholder="Enter Another E-Mail ID" TextMode="Email" Visible="false"></asp:TextBox>
                    <asp:Button ID="multiple_email" runat="server" Text="Allow multiple email" CssClass="multiple" OnClientClick="return myFunction();" OnClick="multiple_email_Click"/><br>

                    <label ><b>Event Description(*50 word)</b></label><br>
                    <asp:TextBox ID="description" runat="server" placeholder="Write Description..."></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This field is required" ControlToValidate="description" ForeColor="red"></asp:RequiredFieldValidator><br>
                
                    <label ><b>Event Host</b></label><br>
                    <asp:TextBox ID="hostname" runat="server" placeholder="Enter Host name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This field is required" ControlToValidate="hostname" ForeColor="red"></asp:RequiredFieldValidator><br>
                </div>
                <div class="right">
                    <label ><b>Fee For Event</b></label><br>
                    <asp:TextBox ID="fee" runat="server" TextMode="Number" placeholder="Rs. " TabIndex="3" Text="Rs. "  CssClass="fee"></asp:TextBox><br>

                    <label ><b>Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Time</b></label><br>
                    <asp:TextBox ID="date" runat="server" placeholder="Enter Event Date" TextMode="Date" Height="43px" Width="200px" BackColor="#f1f1f1"></asp:TextBox>
                    <asp:TextBox ID="time" runat="server" placeholder="Enter Event Time" TextMode="Time" Height="43px" Width="200px" BackColor="#f1f1f1" CssClass="time"></asp:TextBox><br /><br />

               <br>
                    <label ><b>Venue</b></label><br>
                    <asp:TextBox ID="venue" runat="server" placeholder="Enter Venue"></asp:TextBox>
<br>
                    <label ><b>Target Audience</b></label><br>
                    <select>
                        <option value="b.tech">B.Tech</option>
                        <option value="m.tech">M.Tech</option>
                        <option value="bsc">B.Sc</option>
                        <option value="msc">M.Sc</option>
                    </select>
                    </div>
                      <div class="bottom">
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Event]"></asp:SqlDataSource>
                          <asp:Button ID="submit" runat="server" Text="Submit" CssClass="submit" OnClick="submit_Click" Width="373px"/>
                     </div>
        </div>
    </form>
</body>
</html>
